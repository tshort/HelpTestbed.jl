==========================================
Modelica.Electrical.Spice3.Internal.Mosfet
==========================================

`Modelica.Electrical.Spice3.Internal <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal>`_.Mosfet
----------------------------------------------------------------------------------------------------------------------------

**Functions and records for Mosfets**

Information
~~~~~~~~~~~

::

The package Mosfet contains all functions and records that are used for
all types of Mosfet transistors in SPICE3.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| Name                                                                                                                                                                                                                                  | Description                               |
+=======================================================================================================================================================================================================================================+===========================================+
| |image7| `Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet>`_                                                                                                                | Record for Mosfet parameters              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image8| `MosfetModelLineParams <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLineParams>`_                                                                                  | Record for Mosfet model line parameters   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image9| `MosfetModelLine <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLine>`_                                                                                              | Type of the transistor                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image10| `MosfetCalc <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.MosfetCalc>`_                                                                                                       | Mosfet Variables                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image11| `mosfetInitEquations <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquations>`_                                                                                     | MOSFET initial precalculations            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image12| `mosfetModelLineInitEquations <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.mosfetModelLineInitEquations>`_                                                                   | Type transscription                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image13| `getNumberOfElectricalPins <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.getNumberOfElectricalPins>`_                                                                         | Number of Pins                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.Mosfet
-------------------------------------------------------------------------------------------------------------------------------------------------

**Record for Mosfet parameters**

Information
~~~~~~~~~~~

::

This record Mosfet contains parameters that are used for all types of
Mosfet transistors in SPICE3.

::

Extends from
`Model.Model <Modelica_Electrical_Spice3_Internal_Model.html#Modelica.Electrical.Spice3.Internal.Model.Model>`_
(Device Temperature).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Mosfet "Record for Mosfet parameters"
      extends Model.Model;

      Modelica.SIunits.Length m_len(             start = 1e-4) 
        "L, length of channel region";
      Modelica.SIunits.Length m_width(           start = 1e-4) 
        "W, width of channel region";
      Modelica.SIunits.Area m_drainArea(       start = SpiceConstants.CKTdefaultMosAD) 
        "AD, area of drain diffusion";
      Modelica.SIunits.Area m_sourceArea(      start = SpiceConstants.CKTdefaultMosAS) 
        "AS, area of source diffusion";
      Real m_drainSquares(    start = 1.0) "NRD, length of drain in squares";
      Real m_sourceSquares(   start = 1.0) "NRS, length of source in squares";
      Modelica.SIunits.Length m_drainPerimiter(  start = 0.0) "PD, Drain perimeter";
      Modelica.SIunits.Length m_sourcePerimiter( start = 0.0) 
        "PS, Source perimeter";
      Modelica.SIunits.Voltage m_dICVDS(          start = 0.0) 
        "IC_VDS, Initial D-S voltage";
      Real m_dICVDSIsGiven "IC_VDS, IsGivenValue";
      Modelica.SIunits.Voltage m_dICVGS(          start = 0.0) 
        "IC_VGS, Initial G-S voltage";
      Real m_dICVGSIsGiven "IC_VGS, IsGivenValue";
      Modelica.SIunits.Voltage m_dICVBS(          start = 0.0) 
        "IC_VBS, Initial B-S voltage";
      Real m_dICVBSIsGiven "IC_VBS, IsGivenValue";
      Integer m_off(          start = 0) 
        "Device initially off, non-zero to indicate device is off for dc analysis";
      Integer m_bPMOS(        start = 0) "P type MOSfet model";
      Integer m_nLevel(       start = 1) "MOS model level";

    end Mosfet;

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.MosfetModelLineParams
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Record for Mosfet model line parameters**

Information
~~~~~~~~~~~

::

This record MosfetModelLineParams contains the model line parameters
that are used for all kinds of mosfet transistors in SPICE3.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record MosfetModelLineParams 
      "Record for Mosfet model line parameters"

       Real m_jctSatCurDensity(           start = 0.0) 
        "JS, Bulk jct. sat. current density, input - use tSatCurDens";
       Modelica.SIunits.Resistance m_sheetResistance(            start = 0.0) 
        "RSH, Sheet resistance";
       Real m_bulkJctPotential(           start = 0.8) 
        "PB, Bulk junction potential, input - use tBulkPot";
       Real m_bulkJctBotGradingCoeff(     start = 0.5) 
        "MJ, Bottom grading coefficient";
       Real m_bulkJctSideGradingCoeff(    start = 0.5) 
        "MJSW, Side grading coefficient";
       Real m_oxideThickness(             start = 1.0e-7) 
        "TOX, Oxide thickness unit: micron";
       Real m_oxideThicknessIsGiven "TOX, IsGiven value";
       Real m_gateSourceOverlapCapFactor( start= 0.0) 
        "CGS0, Gate-source overlap cap";
       Real m_gateDrainOverlapCapFactor( start= 0.0) 
        " CGD0, Gate-drain overlap cap";
       Real m_gateBulkOverlapCapFactor( start= 0.0) "CGB0, Gate-bulk overlap cap";
       Real m_fNcoef(                     start = 0.0) 
        "KF, Flicker noise coefficient";
       Real m_fNexp(                      start = 1.0) "AF, Flicker noise exponent";

    end MosfetModelLineParams;

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.MosfetModelLine
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Type of the transistor**

Information
~~~~~~~~~~~

::

This record contains only one variable and it provides the information
on the transistor type (pmos or nmos).

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record MosfetModelLine "Type of the transistor"

      Integer m_type(   start = 1) "device type : 1 = n,  -1 = p";

    end MosfetModelLine;

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.MosfetCalc
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Mosfet Variables**

Information
~~~~~~~~~~~

::

This record MosfetCalc contains variables that are neede for calculation
within modeling the semiconductor models.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record MosfetCalc "Mosfet Variables"

      Modelica.SIunits.Voltage m_vds "Vds,  Drain-Source voltage";
      Modelica.SIunits.Voltage m_vgs "Vgs, Gate-Source voltage";
      Modelica.SIunits.Voltage m_vbs "Vbs, Bulk-Source voltage";
      Modelica.SIunits.Current m_cbs "Ibs, B-S junction current";
      Modelica.SIunits.Conductance m_gbs "Gbs, Bulk-Source conductance";
      Modelica.SIunits.Current m_cbd "Ibd, B-D junction current";
      Modelica.SIunits.Conductance m_gbd "Gbd, Bulk-Drain conductance";
      Modelica.SIunits.Current m_cdrain "Ids";
      Modelica.SIunits.Conductance m_gds "Gds, Drain-Source conductance";
      Modelica.SIunits.Transconductance m_gm "Gm, Transconductance";
      Modelica.SIunits.Transconductance m_gmbs "Gmbs, Bulk-Source transconductance";
      Modelica.SIunits.Capacitance m_capbsb "Cbsb";
      Modelica.SIunits.Charge m_chargebsb "Qbsb";
      Modelica.SIunits.Capacitance m_capbss "Cbss";
      Modelica.SIunits.Charge m_chargebss "Qbss";
      Modelica.SIunits.Capacitance m_capbdb "Cbdb";
      Modelica.SIunits.Charge m_chargebdb "Qbdb";
      Modelica.SIunits.Capacitance m_capbds "Cbds";
      Modelica.SIunits.Charge m_chargebds "Qbds";
      Modelica.SIunits.Resistance m_sourceResistance "Rs";
      Modelica.SIunits.Resistance m_drainResistance "Rd";
      Real m_Beta "Beta";
      Modelica.SIunits.Capacitance m_capGSovl "Cgso, Gate-source overlap cap.";
      Modelica.SIunits.Capacitance m_capGDovl "Cgdo, Gate-drain overlap cap.";
      Modelica.SIunits.Capacitance m_capGBovl "Cgbo, Gate-bulk overlap cap.";
      Modelica.SIunits.Capacitance m_capOx "Cox";
      Modelica.SIunits.Voltage m_von "Von, Turn-on voltage";
      Modelica.SIunits.Voltage m_vdsat "Vdsat";
      Integer m_mode(start = 1) "Mode";

      Real m_lEff;

    end MosfetCalc;

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.mosfetInitEquations
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**MOSFET initial precalculations**

Information
~~~~~~~~~~~

::

This function initially precalculats some values for transistor area
which can be used for all transistor models.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+
| Type                                                                                                            | Name    | Default   | Description           |
+=================================================================================================================+=========+===========+=======================+
| `Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet>`_   | in\_m   |           | Input parameter set   |
+-----------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+----------+-------------------------+
| Type                                                                                                            | Name     | Description             |
+=================================================================================================================+==========+=========================+
| `Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet>`_   | out\_m   | Changed parameter set   |
+-----------------------------------------------------------------------------------------------------------------+----------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function mosfetInitEquations "MOSFET initial precalculations"

      input Mosfet in_m "Input parameter set";

      output Mosfet out_m "Changed parameter set";

    algorithm 
      out_m := in_m;

      if (out_m.m_drainSquares == 0) then
        out_m.m_drainSquares  := 1.;
      end if;
      if (out_m.m_sourceSquares == 0) then
        out_m.m_sourceSquares := 1.;
      end if;

    end mosfetInitEquations;

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.mosfetModelLineInitEquations
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Type transscription**

Information
~~~~~~~~~~~

::

In this function during the initialization phase the transistor type is
transscibed to another parameter for further usage.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+
| Type                                                                                                            | Name    | Default   | Description           |
+=================================================================================================================+=========+===========+=======================+
| `Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet>`_   | in\_m   |           | Input parameter set   |
+-----------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------+
| Type                                                                                                                              | Name      | Description             |
+===================================================================================================================================+===========+=========================+
| `MosfetModelLine <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLine>`_   | out\_ml   | Changed parameter set   |
+-----------------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function mosfetModelLineInitEquations "Type transscription"

      input Mosfet in_m "Input parameter set";

      output MosfetModelLine out_ml "Changed parameter set";

    algorithm 
      out_ml.m_type := if (in_m.m_bPMOS > 0.5) then -1 else 1;
      // -1: PMOS ; 1: NMOS

    end mosfetModelLineInitEquations;

--------------

`Modelica.Electrical.Spice3.Internal.Mosfet <Modelica_Electrical_Spice3_Internal_Mosfet.html#Modelica.Electrical.Spice3.Internal.Mosfet>`_.getNumberOfElectricalPins
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Number of Pins**

Information
~~~~~~~~~~~

::

This function getNumberOfElectricalPins identifies the number of
elecrtical pins. At the current library version it is fixed to 4.

::

Outputs
~~~~~~~

+-----------+--------+------------------+
| Type      | Name   | Description      |
+===========+========+==================+
| Integer   | ret    | Number of pins   |
+-----------+--------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function getNumberOfElectricalPins "Number of Pins"

      output Integer ret "Number of pins";

    algorithm 
      ret := 4;
    end getNumberOfElectricalPins;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:47
2010.

.. |Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLineParams| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLine| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |Modelica.Electrical.Spice3.Internal.Mosfet.MosfetCalc| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquations| image:: Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquationsS.png
.. |Modelica.Electrical.Spice3.Internal.Mosfet.mosfetModelLineInitEquations| image:: Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquationsS.png
.. |Modelica.Electrical.Spice3.Internal.Mosfet.getNumberOfElectricalPins| image:: Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquationsS.png
.. |image7| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |image8| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |image9| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |image10| image:: Modelica.Electrical.Spice3.Internal.Model.ModelS.png
.. |image11| image:: Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquationsS.png
.. |image12| image:: Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquationsS.png
.. |image13| image:: Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquationsS.png
