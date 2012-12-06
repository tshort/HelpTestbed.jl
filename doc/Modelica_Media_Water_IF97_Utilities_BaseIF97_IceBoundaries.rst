===========================================================
Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries
===========================================================

`Modelica.Media.Water.IF97\_Utilities.BaseIF97 <Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97>`_.IceBoundaries
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**the melting line and sublimation line curves from IAPWS**

Information
~~~~~~~~~~~

::

The International Association for the Properties of Water and Steam
 Milan, Italy
 September 1993
 Release on the Pressure along the Melting and the Sublimation Curves of
Ordinary Water Substance

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                | Description                                                                 |
+=====================================================================================================================================================================================================================================================================+=============================================================================+
| |image4| `pmIceI\_T <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceI_T>`_                                                                                                         | Melting pressure of ice I (temperature range from 273.16 to 251.165 K)      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image5| `pmIceIII\_T <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceIII_T>`_                                                                                                     | Melting pressure of ice III (temperature range from 251.165 to 256.164 K)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image6| `pmIceV\_T <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceV_T>`_                                                                                                         | Melting pressure of ice V (temperature range from 256.164 to 273.31 K)      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image7| `sublimationPressure\_T <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.sublimationPressure_T>`_                                                                               | Sublimation pressure, valid from 190 to 273.16 K                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+

--------------

|image8| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries>`_.pmIceI\_T
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Melting pressure of ice I (temperature range from 273.16 to 251.165
K)**

Information
~~~~~~~~~~~

::

Equation 1 from:
 The International Association for the Properties of Water and Steam
 Milan, Italy
 September 1993
 Release on the Pressure along the Melting and the Sublimation Curves of
Ordinary Water Substance

::

      

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                         | Name   | Default   | Description       |
+==============================================================+========+===========+===================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | T      |           | Temperature [K]   |
+--------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+-----------------------------------------------------------------+
| Type                                                            | Name   | Description                                                     |
+=================================================================+========+=================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | pm     | Melting pressure of iceI(for T from 273.16 to 251.165 K) [Pa]   |
+-----------------------------------------------------------------+--------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function pmIceI_T 
      "Melting pressure of ice I (temperature range from 273.16 to 251.165 K)"
      extends Modelica.Icons.Function;
      input SI.Temp_K T "Temperature";
      output SI.Pressure pm 
        "Melting pressure of iceI(for T from 273.16 to 251.165 K)";
    protected 
      constant SI.Temp_K Tn = 273.16 "normalization temperature";
      constant SI.Pressure pn = 611.657 "normalization pressure";
      Real sigma = T/Tn "normalized temperature";
    algorithm 
      pm := (1-0.626000e6*(1-sigma^(-3)) + 0.197135e6*(1-sigma^(21.2)))*pn;
    end pmIceI_T;

--------------

|image9| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries>`_.pmIceIII\_T
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Melting pressure of ice III (temperature range from 251.165 to 256.164
K)**

Information
~~~~~~~~~~~

::

Equation 2 from:
 The International Association for the Properties of Water and Steam
 Milan, Italy
 September 1993
 Release on the Pressure along the Melting and the Sublimation Curves of
Ordinary Water Substance

::

      

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                         | Name   | Default   | Description       |
+==============================================================+========+===========+===================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | T      |           | Temperature [K]   |
+--------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------------------------------------------+
| Type                                                            | Name   | Description                                                        |
+=================================================================+========+====================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | pm     | Melting pressure of iceIII(for T from 251.165 to 256.164 K) [Pa]   |
+-----------------------------------------------------------------+--------+--------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function pmIceIII_T 
      "Melting pressure of ice III (temperature range from 251.165 to 256.164 K)"
      extends Modelica.Icons.Function;
      input SI.Temp_K T "Temperature";
      output SI.Pressure pm 
        "Melting pressure of iceIII(for T from 251.165 to 256.164 K)";
    protected 
      constant SI.Temp_K Tn = 251.165 "normalization temperature";
      constant SI.Pressure pn = 209.9e6 "normalization pressure";
      Real sigma = T/Tn "normalized temperature";
    algorithm 
      pm := (1-0.295252*(1-sigma^60))*pn;
    end pmIceIII_T;

--------------

|image10| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries>`_.pmIceV\_T
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Melting pressure of ice V (temperature range from 256.164 to 273.31
K)**

Information
~~~~~~~~~~~

::

Equation 3 from:
 The International Association for the Properties of Water and Steam
 Milan, Italy
 September 1993
 Release on the Pressure along the Melting and the Sublimation Curves of
Ordinary Water Substance

::

      

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                         | Name   | Default   | Description       |
+==============================================================+========+===========+===================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | T      |           | Temperature [K]   |
+--------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+-----------------------------------------------------------------+
| Type                                                            | Name   | Description                                                     |
+=================================================================+========+=================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | pm     | Melting pressure of iceV(for T from 256.164 to 273.31 K) [Pa]   |
+-----------------------------------------------------------------+--------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function pmIceV_T 
      "Melting pressure of ice V (temperature range from 256.164 to 273.31 K)"
      extends Modelica.Icons.Function;
      input SI.Temp_K T "Temperature";
      output SI.Pressure pm 
        "Melting pressure of iceV(for T from 256.164 to 273.31 K)";
    protected 
      constant SI.Temp_K Tn = 256.164 "normalization temperature";
      constant SI.Pressure pn = 350.1e6 "normalization pressure";
      Real sigma = T/Tn "normalized temperature";

    algorithm 
      pm := (1-1.18721*(1-sigma^8))*pn;
    end pmIceV_T;

--------------

|image11| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries <Modelica_Media_Water_IF97_Utilities_BaseIF97_IceBoundaries.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries>`_.sublimationPressure\_T
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sublimation pressure, valid from 190 to 273.16 K**

Information
~~~~~~~~~~~

::

Equation 6 from:
 The International Association for the Properties of Water and Steam
 Milan, Italy
 September 1993
 Release on the Pressure along the Melting and the Sublimation Curves of
Ordinary Water Substance

::

      

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                         | Name   | Default   | Description       |
+==============================================================+========+===========+===================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | T      |           | Temperature [K]   |
+--------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+---------+--------------------------------------------------------+
| Type                                                            | Name    | Description                                            |
+=================================================================+=========+========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | psubl   | sublimation pressure (for T from 190 to 273.16) [Pa]   |
+-----------------------------------------------------------------+---------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function sublimationPressure_T 
      "Sublimation pressure, valid from 190 to 273.16 K"
      extends Modelica.Icons.Function;
      input SI.Temp_K T "Temperature";
      output SI.Pressure psubl "sublimation pressure (for T from 190 to 273.16)";
    protected 
      constant SI.Temp_K Tn = 273.16 "normalization temperature";
      constant SI.Pressure pn = 611.657 "normalization pressure";
      constant Real[2] a = {-13.9281690,34.7078238} "constant values";
      Real sigma = T/Tn "normalized temperature";
    algorithm 
      psubl := Modelica.Math.exp(a[1]*(1-sigma^(-1.5)) + a[2]*(1-sigma^(-1.25)))*pn;
    end sublimationPressure_T;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:39
2010.

.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries.pmIceI\_T| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries.pmIceIII\_T| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries.pmIceV\_T| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.IceBoundaries.sublimationPressure\_T| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image4| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image5| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image6| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image7| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image8| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceI_TI.png
.. |image9| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceI_TI.png
.. |image10| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceI_TI.png
.. |image11| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.IceBoundaries.pmIceI_TI.png
