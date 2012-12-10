% Modelica.Electrical.Spice3.Internal.Diode
% 
% 

[Modelica.Electrical.Spice3.Internal](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal).Diode
=========================================================================================================================

**Records and functions for diode model**

Information
-----------

::

This package Diode contains functions and record with data of the
semiconductor diode model.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image14](Modelica.Electrical.Spice3.Internal.Diode.Diode Record for
  ModelLineParamsS.png)                                      Diode model
  [DiodeModelLineParams](Modelica_Electrical_Spice3_Internal line
  _Diode.html#Modelica.Electrical.Spice3.Internal.Diode.Diod parameters
  eModelLineParams)                                          

  ![image15](Modelica.Electrical.Spice3.Internal.Diode.Diode Record for
  ModelLineParamsS.png)                                      Diode model
  [DiodeModelLineVariables](Modelica_Electrical_Spice3_Inter line
  nal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode.D variables
  iodeModelLineVariables)                                    

  ![image16](Modelica.Electrical.Spice3.Internal.Diode.Diode Record for
  ModelLineParamsS.png)                                      Diode device
  [DiodeParams](Modelica_Electrical_Spice3_Internal_Diode.ht parameters
  ml#Modelica.Electrical.Spice3.Internal.Diode.DiodeParams)  

  ![image17](Modelica.Electrical.Spice3.Internal.Diode.Diode Variables for
  ModelLineParamsS.png)                                      the diode
  [DiodeVariables](Modelica_Electrical_Spice3_Internal_Diode model
  .html#Modelica.Electrical.Spice3.Internal.Diode.DiodeVaria 
  bles)                                                      

  ![image18](Modelica.Electrical.Spice3.Internal.Diode.Diode Diode
  ModelLineParamsS.png)                                      variables
  [DiodeCalc](Modelica_Electrical_Spice3_Internal_Diode.html 
  #Modelica.Electrical.Spice3.Internal.Diode.DiodeCalc)      

  ![image19](Modelica.Electrical.Spice3.Internal.Diode.Diode Diode
  ModelLineParamsS.png)                                      variables
  [CurrentsCapacitances](Modelica_Electrical_Spice3_Internal 
  _Diode.html#Modelica.Electrical.Spice3.Internal.Diode.Curr 
  entsCapacitances)                                          

  ![image20](Modelica.Electrical.Spice3.Internal.Diode.diode Initial
  ModelLineInitEquationsS.png)                               precalculatio
  [diodeModelLineInitEquations](Modelica_Electrical_Spice3_I n
  nternal_Diode.html#Modelica.Electrical.Spice3.Internal.Dio of model line
  de.diodeModelLineInitEquations)                            parameters

  ![image21](Modelica.Electrical.Spice3.Internal.Diode.diode Initial
  ModelLineInitEquationsS.png)                               calculation
  [diodeInitEquations](Modelica_Electrical_Spice3_Internal_D 
  iode.html#Modelica.Electrical.Spice3.Internal.Diode.diodeI 
  nitEquations)                                              

  ![image22](Modelica.Electrical.Spice3.Internal.Diode.diode Temperature
  ModelLineInitEquationsS.png)                               dependency
  [diodeCalcTempDependencies](Modelica_Electrical_Spice3_Int calculation
  ernal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode 
  .diodeCalcTempDependencies)                                

  ![image23](Modelica.Electrical.Spice3.Internal.Diode.diode Calculation
  ModelLineInitEquationsS.png)                               of currents
  [diodeNoBypassCode](Modelica_Electrical_Spice3_Internal_Di 
  ode.html#Modelica.Electrical.Spice3.Internal.Diode.diodeNo 
  BypassCode)                                                

  ![image24](Modelica.Electrical.Spice3.Internal.Diode.diode Calculation
  ModelLineInitEquationsS.png)                               of additional
  [diodeCalcAdditionalValues](Modelica_Electrical_Spice3_Int values
  ernal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode 
  .diodeCalcAdditionalValues)                                

  ![image25](Modelica.Electrical.Spice3.Internal.Diode.diode Technology
  ModelLineInitEquationsS.png)                               parameter
  [diodeRenameParameters](Modelica_Electrical_Spice3_Interna renaming
  l_Diode.html#Modelica.Electrical.Spice3.Internal.Diode.dio 
  deRenameParameters)                                        

  ![image26](Modelica.Electrical.Spice3.Internal.Diode.diode Temperature
  ModelLineInitEquationsS.png)                               calculation
  [diodeRenameParametersDev](Modelica_Electrical_Spice3_Inte 
  rnal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode. 
  diodeRenameParametersDev)                                  

  ![image27](Modelica.Electrical.Spice3.Internal.Diode.diode Temperature
  ModelLineInitEquationsS.png)                               calculation
  [diodeRenameParametersDevTemp](Modelica_Electrical_Spice3_ 
  Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Di 
  ode.diodeRenameParametersDevTemp)                          
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).DiodeModelLineParams
==========================================================================================================================================================

**Record for Diode model line parameters**

Information
-----------

::

This record contains the model line (also called model card) parameters
that are used for the diode model in SPICE3.

::

Modelica definition
-------------------

    record DiodeModelLineParams "Record for Diode model line parameters"

      Modelica.SIunits.Current m_satCur( start = 1.0e-14) "IS, Saturation current";
      Modelica.SIunits.Resistance m_resist( start = 0.0) "RS, Ohmic resistance";
      Real m_emissionCoeff( start = 1.0) "N, Emission Coefficient";
      Modelica.SIunits.Time m_transitTime( start = 0.0) "TT, Transit Time";
      Modelica.SIunits.Capacitance m_junctionCap( start = 0.0) 
        "CJO, Junction capacitance";
      Modelica.SIunits.Voltage m_junctionPot( start = 1.0) "VJ, Junction potential";
      Real m_gradingCoeff( start = 0.5) "M, Grading coefficient";
      Modelica.SIunits.ActivationEnergy m_activationEnergy( start = 1.11) 
        "EG, Activation energy";
      Real m_saturationCurrentExp( start = 3.0) 
        "XTI, Saturation current temperature exp.";
      Real m_depletionCapCoeff( start = 0.5) 
        "FC, Forward bias junction fit parameter";
      Modelica.SIunits.Voltage m_breakdownVoltage "BV, Reverse breakdown voltage";
      Real m_pBvIsGiven "BV is given value";
      Modelica.SIunits.Current m_breakdownCurrent( start = 1.0e-3) 
        "IBV, Current at reverse breakdown voltage";
      Modelica.SIunits.Temp_C m_nomTemp( start=SpiceConstants.CKTnomTemp) 
        "TNOM, Parameter measurement temperature";
      Real m_fNcoef( start = 0.0) "KF, flicker noise coefficient";
      Real m_fNexp( start = 1.0) "AF, flicker noise exponent";
      Modelica.SIunits.Conductance m_conductance "G, Ohmic conductance";

    end DiodeModelLineParams;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).DiodeModelLineVariables
=============================================================================================================================================================

**Record for Diode model line variables**

Information
-----------

::

This record contains the model line (also called model card) variables
that are used for the diode model in SPICE3.

::

Modelica definition
-------------------

    record DiodeModelLineVariables 
      "Record for Diode model line variables"

      Real m_gradingCoeff;
      Real m_activationEnergy;
      Real m_depletionCapCoeff;
      Modelica.SIunits.Conductance m_conductance;

    end DiodeModelLineVariables;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).DiodeParams
=================================================================================================================================================

**Record for Diode device parameters**

Information
-----------

::

This record contains the device parameters that are used for the diode
model in SPICE3.

::

Modelica definition
-------------------

    record DiodeParams "Record for Diode device parameters"

      Real m_area(start = 1.0) "AREA, Area factor";
      Boolean m_bOff(start = false) "OFF, Initially off";
      Modelica.SIunits.Voltage m_dIC(start = 0.0) "IC, Initial device voltage";
      Real m_pIcIsGiven "IC is giben value";
      Boolean m_bSensArea(start = false) 
        "SENS_AREA, flag to request sensitivity WRT area";

    end DiodeParams;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).DiodeVariables
====================================================================================================================================================

**Variables for the diode model**

Information
-----------

::

This record contains the model variables that are used for the diode
model in SPICE3.

::

Modelica definition
-------------------

    record DiodeVariables "Variables for the diode model"

      Real m_pBvIsGiven "Additional BV is given variable";

    end DiodeVariables;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).DiodeCalc
===============================================================================================================================================

**Diode variables**

Information
-----------

::

This record contains the model variables that are used for the diode
model in SPICE3.

::

Modelica definition
-------------------

    record DiodeCalc "Diode variables"

      Modelica.SIunits.Voltage m_tJctPot;
      Modelica.SIunits.Capacitance m_tJctCap;
      Real m_tF1;
      Real m_f2;
      Real m_f3;
      Modelica.SIunits.Current m_tSatCur;
      Modelica.SIunits.Voltage m_tVcrit;
      Real m_dVte;
      Modelica.SIunits.Voltage m_tBrkdwnV;

    end DiodeCalc;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).CurrentsCapacitances
==========================================================================================================================================================

**Diode variables**

Information
-----------

::

This record contains the model variables that are used for the diode
model in SPICE3.

::

Modelica definition
-------------------

    record CurrentsCapacitances "Diode variables"

      Modelica.SIunits.Current m_dCurrent;

    end CurrentsCapacitances;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeModelLineInitEquations
=================================================================================================================================================================

**Initial precalculation of model line parameters**

Information
-----------

::

Within this function some parameters are initially precalculated from
model line parameters.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Nam Defa Description
                                                  e   ult  
  ----------------------------------------------- --- ---- ----------------
  [DiodeModelLineParams](Modelica_Electrical_Spic in\      Input record
  e3_Internal_Diode.html#Modelica.Electrical.Spic _p       with diode model
  e3.Internal.Diode.DiodeModelLineParams)                  line parameters
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  [DiodeModelLineVariables](Modelica_Electrical_Spic out Output record
  e3_Internal_Diode.html#Modelica.Electrical.Spice3. \_v with diode model
  Internal.Diode.DiodeModelLineVariables)                line variables
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeModelLineInitEquations 
      "Initial precalculation of model line parameters"

      input DiodeModelLineParams in_p 
        "Input record with diode model line parameters";

      output DiodeModelLineVariables out_v 
        "Output record with diode model line variables";

    algorithm 
      // limit grading coeff to max of 0.9
      if (in_p.m_gradingCoeff > 0.9) then
        out_v.m_gradingCoeff := 0.9;
      end if;
      // limit activation energy to min of 0.1
      if (in_p.m_activationEnergy < 0.1) then
        out_v.m_activationEnergy := 0.1;
      end if;
      // limit depletion cap coeff to max of 0.95
      if (in_p.m_depletionCapCoeff > 0.95) then
        out_v.m_depletionCapCoeff := 0.95;
      end if;

      out_v.m_conductance := if (in_p.m_resist == 0.0) then 0.0 else 1.0 / in_p.m_resist;

    end diodeModelLineInitEquations;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeInitEquations
========================================================================================================================================================

**Initial calculation**

Information
-----------

::

In this function some initial calculations for the diode model are done,
especially concerning the handling of the breakthrough voltage.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Nam Defa Description
                                                  e   ult  
  ----------------------------------------------- --- ---- ----------------
  [DiodeModelLineParams](Modelica_Electrical_Spic in\      Input record
  e3_Internal_Diode.html#Modelica.Electrical.Spic _p       with diode model
  e3.Internal.Diode.DiodeModelLineParams)                  line parameters
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  [DiodeVariables](Modelica_Electrical_Spice3_Interna out\ Output record
  l_Diode.html#Modelica.Electrical.Spice3.Internal.Di _v   with diode
  ode.DiodeVariables)                                      variables
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeInitEquations "Initial calculation"

      input DiodeModelLineParams in_p 
        "Input record with diode model line parameters";

      output DiodeVariables out_v "Output record with diode variables";

    algorithm 
     out_v.m_pBvIsGiven := in_p.m_pBvIsGiven;
      if (out_v.m_pBvIsGiven > 0.5) then
        if (in_p.m_breakdownVoltage > 1.0e+100) then
          out_v.m_pBvIsGiven := 1.0e-41; // set to false
        end if;
      end if;

    end diodeInitEquations;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeCalcTempDependencies
===============================================================================================================================================================

**Temperature dependency calculation**

Information
-----------

::

In this function for the diode model temperature dependencies are
calculated using temperature treating functions from the equation
package.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- ---------------
  [DiodeModelLineParams](Modelica_Electrical_Spice in\      Input record
  3_Internal_Diode.html#Modelica.Electrical.Spice3 _p       diode model
  .Internal.Diode.DiodeModelLineParams)                     line parameters

  [DiodeParams](Modelica_Electrical_Spice3_Interna in\      Input record
  l_Diode.html#Modelica.Electrical.Spice3.Internal _dp      diode paramters
  .Diode.DiodeParams)                                       

  [Model](Modelica_Electrical_Spice3_Internal_Mode in\      Input record
  l.html#Modelica.Electrical.Spice3.Internal.Model _m       Model
  .Model)                                                   

  [DiodeVariables](Modelica_Electrical_Spice3_Inte in\      Input record
  rnal_Diode.html#Modelica.Electrical.Spice3.Inter _v       diode variables
  nal.Diode.DiodeVariables)                                 
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- -----------------
  [DiodeCalc](Modelica_Electrical_Spice3_Internal_D out\ Output record
  iode.html#Modelica.Electrical.Spice3.Internal.Dio _c   with calculated
  de.DiodeCalc)                                          values
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeCalcTempDependencies 
      "Temperature dependency calculation"

      input DiodeModelLineParams in_p "Input record diode model line parameters";
      input DiodeParams in_dp "Input record diode paramters";
      input Model.Model in_m "Input record Model";
      input DiodeVariables in_v "Input record diode variables";

      output DiodeCalc out_c "Output record with calculated values";

    algorithm 
      (out_c.m_tJctPot,out_c.m_tJctCap) :=
        Modelica.Electrical.Spice3.Internal.Functions.junctionParamDepTempSPICE3(
              in_p.m_junctionPot,
              in_p.m_junctionCap,
              in_p.m_gradingCoeff,
              in_m.m_dTemp,
              in_p.m_nomTemp);
      out_c.m_tJctCap := in_dp.m_area * out_c.m_tJctCap;
      (out_c.m_tF1,out_c.m_f2,out_c.m_f3) :=
        Modelica.Electrical.Spice3.Internal.Functions.junctionCapCoeffs(
              in_p.m_gradingCoeff,
              in_p.m_depletionCapCoeff,
              out_c.m_tJctPot);

      out_c.m_tSatCur :=
        Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3(
              in_p.m_satCur,
              in_m.m_dTemp,
              in_p.m_nomTemp,
              in_p.m_emissionCoeff,
              in_p.m_activationEnergy,
              in_p.m_saturationCurrentExp);
      out_c.m_tVcrit :=
        Modelica.Electrical.Spice3.Internal.Functions.junctionVCrit(
              in_m.m_dTemp,
              in_p.m_emissionCoeff,
              out_c.m_tSatCur);
      out_c.m_dVte := in_m.m_dTemp*SpiceConstants.CONSTKoverQ*in_p.m_emissionCoeff;
      if (in_v.m_pBvIsGiven > 0.5) then
        out_c.m_tBrkdwnV :=
          Modelica.Electrical.Spice3.Internal.Functions.junctionVoltage23SPICE3(
                in_p.m_breakdownVoltage,
                in_p.m_breakdownCurrent,
                out_c.m_tSatCur,
                in_m.m_dTemp,
                in_p.m_emissionCoeff);
      end if;
      out_c.m_tSatCur := in_dp.m_area * out_c.m_tSatCur;

    end diodeCalcTempDependencies;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeNoBypassCode
=======================================================================================================================================================

**Calculation of currents**

Information
-----------

::

This function NoBypassCode calculates the currents (and the
capacitances) that are necessary for the currents to be used in the
toplevel model.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name      Def Description
                                                        aul 
                                                        t   
  ------------------------------------------- --------- --- ---------------
  [DiodeModelLineParams](Modelica_Electrical_ in\_p         Input record
  Spice3_Internal_Diode.html#Modelica.Electri               model line
  cal.Spice3.Internal.Diode.DiodeModelLinePar               parameters for
  ams)                                                      diode

  [DiodeParams](Modelica_Electrical_Spice3_In in\_dp        Input record
  ternal_Diode.html#Modelica.Electrical.Spice               with parameters
  3.Internal.Diode.DiodeParams)                             for diode

  [DiodeCalc](Modelica_Electrical_Spice3_Inte in\_c         Input record
  rnal_Diode.html#Modelica.Electrical.Spice3.               DiodeCalc
  Internal.Diode.DiodeCalc)                                 

  [Model](Modelica_Electrical_Spice3_Internal in\_m         Input record
  _Model.html#Modelica.Electrical.Spice3.Inte               model
  rnal.Model.Model)                                         

  Boolean                                     in\_m\_mb     
                                              Init          

  [Voltage](Modelica_SIunits.html#Modelica.SI in\_m\_pV     [V]
  units.Voltage)                              oltageVal     
                                              ues[2]        
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [CurrentsCapacitances](Modelica_Electrical_Spic out\ Output record with
  e3_Internal_Diode.html#Modelica.Electrical.Spic _cc  calculated currents
  e3.Internal.Diode.CurrentsCapacitances)              and capacitances

  [Capacitance](Modelica_SIunits.html#Modelica.SI m\_d Output capacitance
  units.Capacitance)                              Cap  [F]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeNoBypassCode "Calculation of currents"

      input DiodeModelLineParams in_p 
        "Input record model line parameters for diode";
      input DiodeParams in_dp "Input record with parameters for diode";
      input DiodeCalc in_c "Input record DiodeCalc";
      input Model.Model in_m "Input record model";
      input Boolean in_m_mbInit;
      input Modelica.SIunits.Voltage[2] in_m_pVoltageValues; /* DPP, DN */

      output CurrentsCapacitances out_cc 
        "Output record with calculated currents and capacitances";

      output Modelica.SIunits.Capacitance m_dCap "Output capacitance";

    protected 
      Modelica.SIunits.Voltage m_dPNVoltage "Voltage";
      Modelica.SIunits.Current m_dCurrent "Current";
      Modelica.SIunits.Conductance m_dCond "Conductance";
      Modelica.SIunits.Charge m_dCharge "Charge";
      Modelica.SIunits.Current m_dCapCurrent "Current";

    algorithm 
      m_dPNVoltage := in_m_pVoltageValues[1] - in_m_pVoltageValues[2];

      if (SpiceRoot.useInitialConditions() and in_dp.m_pIcIsGiven > 0.5) then
        m_dPNVoltage := in_dp.m_dIC;
      elseif (SpiceRoot.initJunctionVoltages()) then
        if (in_dp.m_bOff) then
          m_dPNVoltage := 0.0;
        else
          m_dPNVoltage := in_c.m_tVcrit;
        end if;
      end if;

      if (in_p.m_pBvIsGiven > 0.5) then
        (out_cc.m_dCurrent,m_dCond) :=
          Modelica.Electrical.Spice3.Internal.Functions.junction3(
                m_dPNVoltage,
                in_m.m_dTemp,
                in_p.m_emissionCoeff,
                in_c.m_tSatCur,
                in_c.m_tBrkdwnV);
      else
        (out_cc.m_dCurrent,m_dCond) :=
          Modelica.Electrical.Spice3.Internal.Functions.junction2(
                m_dPNVoltage,
                in_m.m_dTemp,
                in_p.m_emissionCoeff,
                in_c.m_tSatCur);
      end if;

      (m_dCap,m_dCharge) :=
        Modelica.Electrical.Spice3.Internal.Functions.junctionCapTransTime(
              in_c.m_tJctCap,
              m_dPNVoltage,
              in_c.m_tJctPot*in_p.m_depletionCapCoeff,
              in_p.m_gradingCoeff,
              in_p.m_junctionPot,
              in_c.m_tF1,
              in_c.m_f2,
              in_c.m_f3,
              in_p.m_transitTime,
              m_dCond,
              m_dCurrent);

    end diodeNoBypassCode;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeCalcAdditionalValues
===============================================================================================================================================================

**Calculation of additional values**

Information
-----------

::

This function is prepared for additional calculations but it is plain
(inputs are written to the outputs) in the actual version of this
library.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name      Def Description
                                                        aul 
                                                        t   
  ------------------------------------------- --------- --- ---------------
  [DiodeVariables](Modelica_Electrical_Spice3 in\_v         Input record
  _Internal_Diode.html#Modelica.Electrical.Sp               with diode
  ice3.Internal.Diode.DiodeVariables)                       variables

  [DiodeModelLineParams](Modelica_Electrical_ in\_p         Input record
  Spice3_Internal_Diode.html#Modelica.Electri               with diode
  cal.Spice3.Internal.Diode.DiodeModelLinePar               model line
  ams)                                                      parameters

  [DiodeParams](Modelica_Electrical_Spice3_In in\_dp        Input record
  ternal_Diode.html#Modelica.Electrical.Spice               with diode
  3.Internal.Diode.DiodeParams)                             parameters

  [Voltage](Modelica_SIunits.html#Modelica.SI in\_m\_pV     [V]
  units.Voltage)                              oltageVal     
                                              ues[2]        
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  [DiodeVariables](Modelica_Electrical_Spice3_Interna out\ Output record
  l_Diode.html#Modelica.Electrical.Spice3.Internal.Di _v   with diode
  ode.DiodeVariables)                                      variables
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeCalcAdditionalValues "Calculation of additional values"

      input DiodeVariables in_v "Input record with diode variables";
      input DiodeModelLineParams in_p 
        "Input record with diode model line parameters";
      input DiodeParams in_dp "Input record with diode parameters";
      input Modelica.SIunits.Voltage[2] in_m_pVoltageValues; /* DP, DPP */

      output DiodeVariables out_v "Output record with diode variables";

    algorithm 
      out_v := in_v;

    end diodeCalcAdditionalValues;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeRenameParameters
===========================================================================================================================================================

**Technology parameter renaming**

Information
-----------

::

This function assigns the external (given by the user, e.g., IS)
technology parameters to the internal parameters (e.g., m\_satCur). It
also does the analysis of the IsGiven values.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                           Nam Defa Description
                                                 e   ult  
  ---------------------------------------------- --- ---- ----------------
  [ModelcardDIODE](Modelica_Electrical_Spice3_In ex       Modelcard with
  ternal.html#Modelica.Electrical.Spice3.Interna          technologie
  l.ModelcardDIODE)                                       parameters

  [SpiceConstants](Modelica_Electrical_Spice3_In con      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna          
  l.SpiceConstants)                                       
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  [DiodeModelLineParams](Modelica_Electrical_Spice3_I inte Output record
  nternal_Diode.html#Modelica.Electrical.Spice3.Inter rn   diode model line
  nal.Diode.DiodeModelLineParams)                          parameters
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeRenameParameters "Technology parameter renaming"

      input ModelcardDIODE ex "Modelcard with technologie parameters";
      input SpiceConstants con "Spice constants";

      output DiodeModelLineParams intern 
        "Output record diode model line parameters";

    algorithm 
       intern.m_satCur := ex.IS;
       intern.m_resist:=ex.RS;
       intern.m_emissionCoeff := ex.N;
       intern.m_transitTime := ex.TT;
       intern.m_junctionCap := ex.CJO;
       intern.m_junctionPot := ex.VJ;

       intern.m_gradingCoeff := if (ex.M > 0.9) then 0.9 else ex.M;
       intern.m_activationEnergy := if (ex.EG < 0.1) then 0.1 else ex.EG;
       intern.m_saturationCurrentExp := ex.XTI;
       intern.m_depletionCapCoeff := if (ex.FC > 0.95) then 0.95 else ex.FC;

       intern.m_pBvIsGiven := if (ex.BV > -1e40) then 1 else 0;
       intern.m_breakdownVoltage := if (ex.BV > -1e40) then ex.BV else 0;

       intern.m_breakdownCurrent := ex.IBV;
      intern.m_nomTemp := ex.TNOM + SpiceConstants.CONSTCtoK;
       intern.m_fNcoef := ex.KF;
       intern.m_fNexp := ex.AF;

       intern.m_conductance := if (ex.RS == 0) then  0 else 1/ex.RS;

    end diodeRenameParameters;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeRenameParametersDev
==============================================================================================================================================================

**Temperature calculation**

Information
-----------

::

This function assigns the external (given by the user, e.g., AREA)
device parameters to the internal parameters (e.g., m\_area). It also
does the analysis of the IsGiven values.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                      Name   Defa Description
                                   ult  
  ------------------------- ------ ---- -----------------------------------
  [Temp\_K](Modelica_SIunit TEMP        Temperature [K]
  s.html#Modelica.SIunits.T             
  emp_K)                                

  Real                      AREA        Area factor

  Real                      IC          Initial condition value (VD, not
                                        implemented yet

  Boolean                   OFF         Optional initial condition: false -
                                        IC not used, true - IC used, not
                                        implemented yet

  Boolean                   SENS\_      Flag to request sensitivity WRT
                            AREA        area, not implemented yet
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Nam Description
                                                   e   
  ------------------------------------------------ --- --------------------
  [DiodeParams](Modelica_Electrical_Spice3_Interna dev Output record with
  l_Diode.html#Modelica.Electrical.Spice3.Internal     calculated diode
  .Diode.DiodeParams)                                  parameters
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeRenameParametersDev "Temperature calculation"
      input Modelica.SIunits.Temp_K TEMP "Temperature";
      input Real AREA "Area factor";
      input Real IC "Initial condition value (VD, not implemented yet";
      input Boolean OFF 
        "Optional initial condition: false - IC not used, true - IC used, not implemented yet";
      input Boolean SENS_AREA 
        "Flag to request sensitivity WRT area, not implemented yet";

      output DiodeParams dev "Output record with calculated diode parameters";

    algorithm 
    /*device parameters*/
      dev.m_area := AREA;

      dev.m_pIcIsGiven := if (IC > -1e40) then 1 else 0;
      dev.m_dIC := if 
                     (IC > -1e40) then IC else 0;
      dev.m_bOff := OFF;
      dev.m_bSensArea := SENS_AREA;

    end diodeRenameParametersDev;

* * * * *

[Modelica.Electrical.Spice3.Internal.Diode](Modelica_Electrical_Spice3_Internal_Diode.html#Modelica.Electrical.Spice3.Internal.Diode).diodeRenameParametersDevTemp
==================================================================================================================================================================

**Temperature calculation**

Information
-----------

::

This function calculates device parameters wehich are temperature
dependent.

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                       Name   Default  Description
  ------------------------------------------ ------ -------- ---------------
  [Temp\_C](Modelica_SIunits.html#Modelica.S TEMP            Temperature
  Iunits.Temp_C)                                             [degC]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ -----------
  [Model](Modelica_Electrical_Spice3_Internal_Model.htm dev\_t Input
  l#Modelica.Electrical.Spice3.Internal.Model.Model)    emp    record
                                                               Model
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function diodeRenameParametersDevTemp "Temperature calculation"

      input Modelica.SIunits.Temp_C TEMP "Temperature";
      output Model.Model dev_temp "Input record Model";

    algorithm 
      dev_temp.m_dTemp := TEMP + SpiceConstants.CONSTCtoK;

    end diodeRenameParametersDevTemp;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:47 2010.
