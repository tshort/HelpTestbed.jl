% Modelica.Electrical.Spice3.Internal.Rsemiconductor
% 
% 

[Modelica.Electrical.Spice3.Internal](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal).Rsemiconductor
==================================================================================================================================

**Records and functions for semiconductor resistor model**

Information
-----------

::

This package Rsemiconductor contains functions and records with data of
the semiconductor resistor model.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                          Descriptio
                                                                n
  ------------------------------------------------------------- ----------
  ![image6](Modelica.Electrical.Spice3.Internal.Rsemiconductor. Resistor
  ResistorParamsS.png)                                          device
  [ResistorParams](Modelica_Electrical_Spice3_Internal_Rsemicon parameters
  ductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconducto 
  r.ResistorParams)                                             

  ![image7](Modelica.Electrical.Spice3.Internal.Rsemiconductor. Record for
  ResistorParamsS.png)                                          Diode
  [ResistorModelLineParams](Modelica_Electrical_Spice3_Internal model line
  _Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsem parameters
  iconductor.ResistorModelLineParams)                           

  ![image8](Modelica.Electrical.Spice3.Internal.Rsemiconductor. Variables
  ResistorParamsS.png)                                          for the
  [ResistorVariables](Modelica_Electrical_Spice3_Internal_Rsemi diode
  conductor.html#Modelica.Electrical.Spice3.Internal.Rsemicondu model
  ctor.ResistorVariables)                                       

  ![image9](Modelica.Electrical.Spice3.Internal.Rsemiconductor. Technology
  resistorRenameParametersS.png)                                parameter
  [resistorRenameParameters](Modelica_Electrical_Spice3_Interna renaming
  l_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rse 
  miconductor.resistorRenameParameters)                         

  ![image10](Modelica.Electrical.Spice3.Internal.Rsemiconductor Device
  .resistorRenameParametersS.png)                               parameter
  [resistorRenameParametersDev](Modelica_Electrical_Spice3_Inte renaming
  rnal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal. 
  Rsemiconductor.resistorRenameParametersDev)                   

  ![image11](Modelica.Electrical.Spice3.Internal.Rsemiconductor Initial
  .resistorRenameParametersS.png)                               calculatio
  [resistorInitEquations](Modelica_Electrical_Spice3_Internal_R n
  semiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemic 
  onductor.resistorInitEquations)                               
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.Spice3.Internal.Rsemiconductor](Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor).ResistorParams
===============================================================================================================================================================================

**Resistor device parameters**

Information
-----------

::

This record contains the device parameters that are used for the
resistor model in SPICE3.

::

Modelica definition
-------------------

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

* * * * *

[Modelica.Electrical.Spice3.Internal.Rsemiconductor](Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor).ResistorModelLineParams
========================================================================================================================================================================================

**Record for Diode model line parameters**

Information
-----------

::

This record contains the model line (also called model card) parameters
that are used for the resistor model in SPICE3.

::

Modelica definition
-------------------

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

* * * * *

[Modelica.Electrical.Spice3.Internal.Rsemiconductor](Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor).ResistorVariables
==================================================================================================================================================================================

**Variables for the diode model**

Information
-----------

::

This record contains the model variables that are used for the resistor
model in SPICE3.

::

Modelica definition
-------------------

    record ResistorVariables "Variables for the diode model"
     Modelica.SIunits.Length m_dWidth;
     Modelica.SIunits.Length m_dLength;
     Modelica.SIunits.Resistance m_dResist;
     Modelica.SIunits.Conductance m_dConduct;
     Modelica.SIunits.Temp_C m_dCond_dTemp;
    end ResistorVariables;

* * * * *

[Modelica.Electrical.Spice3.Internal.Rsemiconductor](Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor).resistorRenameParameters
=========================================================================================================================================================================================

**Technology parameter renaming**

Information
-----------

::

This function assigns the external (given by the user, e.g., N)
technology parameters to the internal parameters (e.g.,
m\_emissionCoeff). It also does the analysis of the IsGiven values.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                           Nam Defa Description
                                                 e   ult  
  ---------------------------------------------- --- ---- ----------------
  [ModelcardR](Modelica_Electrical_Spice3_Intern ex       Modelcard with
  al.html#Modelica.Electrical.Spice3.Internal.Mo          technologie
  delcardR)                                               parameters

  [SpiceConstants](Modelica_Electrical_Spice3_In con      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna          
  l.SpiceConstants)                                       
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- ----------------
  [ResistorModelLineParams](Modelica_Electrical_Spice int Output record
  3_Internal_Rsemiconductor.html#Modelica.Electrical. ern with resistor
  Spice3.Internal.Rsemiconductor.ResistorModelLinePar     model line
  ams)                                                    parameters
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Electrical.Spice3.Internal.Rsemiconductor](Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor).resistorRenameParametersDev
============================================================================================================================================================================================

**Device parameter renaming**

Information
-----------

::

This function assigns the external (given by the user, e.g., AREA)
device parameters to the internal parameters (e.g., m\_area). It also
does the analysis of the IsGiven values.

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                      Name  Defa Description
                                                  ult  
  ----------------------------------------- ----- ---- ---------------------
  [Resistance](Modelica_SIunits.html#Modeli R          Resistance [Ohm]
  ca.SIunits.Resistance)                               

  [Length](Modelica_SIunits.html#Modelica.S W          Width [m]
  Iunits.Length)                                       

  [Length](Modelica_SIunits.html#Modelica.S L          Length [m]
  Iunits.Length)                                       

  [Temp\_C](Modelica_SIunits.html#Modelica. TEMP       Temperature [degC]
  SIunits.Temp_C)                                      

  Boolean                                   SENS\      Parameter for
                                            _AREA      sensitivity analyses,
                                                       not implemented yet

  [SpiceConstants](Modelica_Electrical_Spic con        Spice constants
  e3_Internal.html#Modelica.Electrical.Spic            
  e3.Internal.SpiceConstants)                          
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ---------------
  [ResistorParams](Modelica_Electrical_Spice3_Internal int Output record
  _Rsemiconductor.html#Modelica.Electrical.Spice3.Inte ern with resistor
  rnal.Rsemiconductor.ResistorParams)                      parameters
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Electrical.Spice3.Internal.Rsemiconductor](Modelica_Electrical_Spice3_Internal_Rsemiconductor.html#Modelica.Electrical.Spice3.Internal.Rsemiconductor).resistorInitEquations
======================================================================================================================================================================================

**Initial calculation**

Information
-----------

::

In this function some initial calculations for the resistor model are
done, especially concerning the handling of the breakthrough voltage.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- ---------------
  [ResistorParams](Modelica_Electrical_Spice3_Inter in\     Input record
  nal_Rsemiconductor.html#Modelica.Electrical.Spice _p      with resistor
  3.Internal.Rsemiconductor.ResistorParams)                 parameters

  [ResistorModelLineParams](Modelica_Electrical_Spi in\     Input record
  ce3_Internal_Rsemiconductor.html#Modelica.Electri _p2     with resistor
  cal.Spice3.Internal.Rsemiconductor.ResistorModelL         model line
  ineParams)                                                parameters
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [ResistorVariables](Modelica_Electrical_Spice3_Intern out Output record
  al_Rsemiconductor.html#Modelica.Electrical.Spice3.Int     with resistor
  ernal.Rsemiconductor.ResistorVariables)                   variables
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:47 2010.
