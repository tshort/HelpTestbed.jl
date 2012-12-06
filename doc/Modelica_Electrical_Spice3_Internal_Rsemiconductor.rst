==================================================
Modelica.Electrical.Spice3.Internal.Rsemiconductor
==================================================

`Modelica.Electrical.Spice3.Internal <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal>`_.Rsemiconductor
------------------------------------------------------------------------------------------------------------------------------------

**Records and functions for semiconductor resistor model**

Information
~~~~~~~~~~~

::

This package Rsemiconductor contains functions and records with data of
the semiconductor resistor model.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| Name                                                                                                                                                                                                                                                       | Description                              |
+============================================================================================================================================================================================================================================================+==========================================+
| |image6| `ResistorParams <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParams>`_                                                                                                     | Resistor device parameters               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image7| `ResistorModelLineParams <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorModelLineParams>`_                                                                                   | Record for Diode model line parameters   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image8| `ResistorVariables <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorVariables>`_                                                                                               | Variables for the diode model            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image9| `resistorRenameParameters <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParameters>`_                                                                                 | Technology parameter renaming            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image10| `resistorRenameParametersDev <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersDev>`_                                                                          | Device parameter renaming                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image11| `resistorInitEquations <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorInitEquations>`_                                                                                      | Initial calculation                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+

--------------

`Modelica.Electrical.Spice3.Internal.Rsemiconductor <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor>`_.ResistorParams
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Resistor device parameters**

Information
~~~~~~~~~~~

::

This record contains the device parameters that are used for the
resistor model in SPICE3.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ResistorParams "Resistor device parameters"

        Modelica.SIunits.Resistance m_dResist( start=1000) 
        "Device is a resistor model";
        Real m_dResIsGiven "Resistance is given value";
        Modelica.SIunits.Length m_dWidth( start=0) "Width";
        Real m_dWidthIsGiven "Width is given value";
        Modelica.SIunits.Length m_dLength "Length";
        Real m_dLengthIsGiven "Length is given value";
        Boolean m_bSensResist( start = false) 
        "flag to request sensitivity WRT resistance";
        Modelica.SIunits.Temp_C m_dTemp(start = 27) "Resistor device temperature";

    end ResistorParams;

--------------

`Modelica.Electrical.Spice3.Internal.Rsemiconductor <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor>`_.ResistorModelLineParams
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Record for Diode model line parameters**

Information
~~~~~~~~~~~

::

This record contains the model line (also called model card) parameters
that are used for the resistor model in SPICE3.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ResistorModelLineParams 
      "Record for Diode model line parameters"

        Modelica.SIunits.Conversions.NonSIunits.FirstOrderTemperaturCoefficient
        m_dTC1 "First order temp, coefficient";
        Modelica.SIunits.Conversions.NonSIunits.SecondOrderTemperaturCoefficient
        m_dTC2 "Second order temp, coefficient";
        Modelica.SIunits.Resistance m_dRsh "Sheet resistance";
        Real m_dRshIsGiven;
        Modelica.SIunits.Length m_dDefW "Default device width";
        Modelica.SIunits.Length m_dNarrow "Narrowing of resistor";
        Modelica.SIunits.Temp_C m_dTnom "Parameter measurement temperature";

    end ResistorModelLineParams;

--------------

`Modelica.Electrical.Spice3.Internal.Rsemiconductor <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor>`_.ResistorVariables
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Variables for the diode model**

Information
~~~~~~~~~~~

::

This record contains the model variables that are used for the resistor
model in SPICE3.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ResistorVariables "Variables for the diode model"
     Modelica.SIunits.Length m_dWidth;
     Modelica.SIunits.Length m_dLength;
     Modelica.SIunits.Resistance m_dResist;
     Modelica.SIunits.Conductance m_dConduct;
     Modelica.SIunits.Temp_C m_dCond_dTemp;
    end ResistorVariables;

--------------

`Modelica.Electrical.Spice3.Internal.Rsemiconductor <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor>`_.resistorRenameParameters
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Technology parameter renaming**

Information
~~~~~~~~~~~

::

This function assigns the external (given by the user, e.g., N)
technology parameters to the internal parameters (e.g.,
m\_emissionCoeff). It also does the analysis of the IsGiven values.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+
| Type                                                                                                              | Name   | Default   | Description                             |
+===================================================================================================================+========+===========+=========================================+
| `ModelcardR <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardR>`_           | ex     |           | Modelcard with technologie parameters   |
+-------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+
| `SpiceConstants <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.SpiceConstants>`_   | con    |           | Spice constants                         |
+-------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------+
| Type                                                                                                                                                              | Name     | Description                                         |
+===================================================================================================================================================================+==========+=====================================================+
| `ResistorModelLineParams <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorModelLineParams>`_   | intern   | Output record with resistor model line parameters   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resistorRenameParameters "Technology parameter renaming"

    input ModelcardR ex "Modelcard with technologie parameters";
    input SpiceConstants con "Spice constants";

    output ResistorModelLineParams intern 
        "Output record with resistor model line parameters";

    algorithm 
      intern.m_dTC1 := ex.TC1;
      intern.m_dTC2 := ex.TC2;

      intern.m_dRshIsGiven := if (ex.RSH > -1e40) then 1 else 0;
      intern.m_dRsh := if (ex.RSH > -1e40) then ex.RSH else 0;

      intern.m_dDefW := ex.DEFW;
      intern.m_dNarrow := ex.NARROW;
      intern.m_dTnom := if (ex.TNOM > -1e40) then ex.TNOM + SpiceConstants.CONSTCtoK else 
              300.15;

    end resistorRenameParameters;

--------------

`Modelica.Electrical.Spice3.Internal.Rsemiconductor <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor>`_.resistorRenameParametersDev
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Device parameter renaming**

Information
~~~~~~~~~~~

::

This function assigns the external (given by the user, e.g., AREA)
device parameters to the internal parameters (e.g., m\_area). It also
does the analysis of the IsGiven values.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+
| Type                                                                                                              | Name         | Default   | Description                                               |
+===================================================================================================================+==============+===========+===========================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                 | R            |           | Resistance [Ohm]                                          |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                         | W            |           | Width [m]                                                 |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                         | L            |           | Length [m]                                                |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                        | TEMP         |           | Temperature [degC]                                        |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+
| Boolean                                                                                                           | SENS\_AREA   |           | Parameter for sensitivity analyses, not implemented yet   |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+
| `SpiceConstants <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.SpiceConstants>`_   | con          |           | Spice constants                                           |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------+
| Type                                                                                                                                            | Name     | Description                              |
+=================================================================================================================================================+==========+==========================================+
| `ResistorParams <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParams>`_   | intern   | Output record with resistor parameters   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resistorRenameParametersDev "Device parameter renaming"

      input Modelica.SIunits.Resistance R "Resistance";
      input Modelica.SIunits.Length W "Width";
      input Modelica.SIunits.Length L "Length";
      input Modelica.SIunits.Temp_C TEMP "Temperature";
      input Boolean SENS_AREA 
        "Parameter for sensitivity analyses, not implemented yet";

     input SpiceConstants con "Spice constants";

     output ResistorParams intern "Output record with resistor parameters";

    algorithm 
       intern.m_dResIsGiven := if 
                                 (R > -1e40) then 1 else 0;
       intern.m_dResist := if 
                             (R > -1e40) then R else 0;

       intern.m_dWidthIsGiven := if 
                                   (W >-1e40) then 1 else 0;
       intern.m_dWidth := if 
                            (W > -1e40) then W else 0;

       intern.m_dLengthIsGiven := if 
                                   (L >-1e40) then 1 else 0;
       intern.m_dLength := if 
                            (L > -1e40) then L else 0;
       intern.m_bSensResist := SENS_AREA;
      intern.m_dTemp := if (TEMP > -1e40) then TEMP + SpiceConstants.CONSTCtoK else 
              300.15;

    end resistorRenameParametersDev;

--------------

`Modelica.Electrical.Spice3.Internal.Rsemiconductor <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor>`_.resistorInitEquations
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Initial calculation**

Information
~~~~~~~~~~~

::

In this function some initial calculations for the resistor model are
done, especially concerning the handling of the breakthrough voltage.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------+
| Type                                                                                                                                                              | Name     | Default   | Description                                        |
+===================================================================================================================================================================+==========+===========+====================================================+
| `ResistorParams <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParams>`_                     | in\_p    |           | Input record with resistor parameters              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------+
| `ResistorModelLineParams <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorModelLineParams>`_   | in\_p2   |           | Input record with resistor model line parameters   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| Type                                                                                                                                                  | Name   | Description                             |
+=======================================================================================================================================================+========+=========================================+
| `ResistorVariables <Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorVariables>`_   | out    | Output record with resistor variables   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resistorInitEquations "Initial calculation"
     input ResistorParams in_p "Input record with resistor parameters";
     input ResistorModelLineParams in_p2 
        "Input record with resistor model line parameters";
     output ResistorVariables out "Output record with resistor variables";

    algorithm 
    out.m_dWidth := in_p.m_dWidth;
      if ( in_p.m_dResIsGiven < 0.5) then
          if (abs(in_p.m_dLength)>1e-8) and (abs(in_p2.m_dRsh)>1e-25) then
              if (not (in_p.m_dWidthIsGiven > 0.5)) then
                  out.m_dWidth :=in_p2.m_dDefW;
              end if;

          (out.m_dResist) :=
            Modelica.Electrical.Spice3.Internal.Functions.resDepGeom(
                  in_p2.m_dRsh,
                  out.m_dWidth,
                  in_p.m_dLength,
                  in_p2.m_dNarrow);
           else
                out.m_dResist :=1000;
           end if;
      end if;
      if 
        (in_p.m_dResist < 1e-12) and (in_p.m_dResIsGiven > 0.5) then
          out.m_dResist :=1e-12;
      end if;
     if (in_p.m_dResist > 1e-12) and (in_p.m_dResIsGiven > 0.5) then
        out.m_dResist := in_p.m_dResist;
     end if;

    end resistorInitEquations;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:47
2010.

.. |Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParams| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParamsS.png
.. |Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorModelLineParams| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParamsS.png
.. |Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorVariables| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParamsS.png
.. |Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParameters| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersS.png
.. |Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersDev| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersS.png
.. |Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorInitEquations| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersS.png
.. |image6| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParamsS.png
.. |image7| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParamsS.png
.. |image8| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParamsS.png
.. |image9| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersS.png
.. |image10| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersS.png
.. |image11| image:: Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersS.png
