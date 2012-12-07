% Modelica.Electrical.Spice3.Internal.Mos2
% 
% 

[Modelica.Electrical.Spice3.Internal](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal).Mos2
========================================================================================================================

**Records and functions for Mosfets level 2**

Information
-----------

::

This package Mos2 contains functions and records with data of the mosfet
model level 2.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image7](Modelica.Electrical.Spice3.Internal.Mos2.Mos2Mo Record for
  delLineParamsS.png)                                       Mosfet model
  [Mos2ModelLineParams](Modelica_Electrical_Spice3_Internal line
  _Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2.Mos2M parameters
  odelLineParams)                                           (for level 2)

  ![image8](Modelica.Electrical.Spice3.Internal.Mos2.Mos2Mo Record for
  delLineParamsS.png)                                       Mosfet model
  [Mos2ModelLineVariables](Modelica_Electrical_Spice3_Inter line variables
  nal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2.Mo (for level 2)
  s2ModelLineVariables)                                     

  ![image9](Modelica.Electrical.Spice3.Internal.Mos2.Mos2Mo Further mosfet
  delLineParamsS.png)                                       variables (for
  [Mos2Calc](Modelica_Electrical_Spice3_Internal_Mos2.html# level 2)
  Modelica.Electrical.Spice3.Internal.Mos2.Mos2Calc)        

  ![image10](Modelica.Electrical.Spice3.Internal.Mos2.mos2M Initial
  odelLineParamsInitEquationsS.png)                         precalculation
  [mos2ModelLineParamsInitEquations](Modelica_Electrical_Sp 
  ice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Intern 
  al.Mos2.mos2ModelLineParamsInitEquations)                 

  ![image11](Modelica.Electrical.Spice3.Internal.Mos2.mos2M Drain current
  odelLineParamsInitEquationsS.png)                         calculation
  [drainCur](Modelica_Electrical_Spice3_Internal_Mos2.html# 
  Modelica.Electrical.Spice3.Internal.Mos2.drainCur)        

  ![image12](Modelica.Electrical.Spice3.Internal.Mos2.mos2M Parameter
  odelLineParamsInitEquationsS.png)                         renaming to
  [mos2RenameParameters](Modelica_Electrical_Spice3_Interna internal names
  l_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2.mos2 
  RenameParameters)                                         

  ![image13](Modelica.Electrical.Spice3.Internal.Mos2.mos2M Device
  odelLineParamsInitEquationsS.png)                         parameter
  [mos2RenameParametersDev](Modelica_Electrical_Spice3_Inte renaming to
  rnal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2.m internal names
  os2RenameParametersDev)                                   
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).Mos2ModelLineParams
======================================================================================================================================================

**Record for Mosfet model line parameters (for level 2)**

Information
-----------

::

This record Mos1ModelLineParams contains the model line parameters that
are used for the mosfet transistors level 2 in SPICE3.

::

Extends from
[Mos.MosModelLineParams](Modelica_Electrical_Spice3_Internal_Mos.html#Modelica.Electrical.Spice3.Internal.Mos.MosModelLineParams)
(Record for Mosfet model line parameters (for level 1, 2, 3 and 6)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name        Def Description
                                                      aul 
                                                      t   
  --------------------------------------- ----------- --- -----------------
  Initialization                                          

  Real                                    m\_jctSatCu 0.0 JS, Bulk jct.
                                          rDensity.st     sat. current
                                          art             density, input -
                                                          use tSatCurDens

  [Resistance](Modelica_SIunits.html#Mode m\_sheetRes 0.0 RSH, Sheet
  lica.SIunits.Resistance)                istance.sta     resistance [Ohm]
                                          rt              

  Real                                    m\_bulkJctP 0.8 PB, Bulk junction
                                          otential.st     potential, input
                                          art             - use tBulkPot

  Real                                    m\_bulkJctB 0.5 MJ, Bottom
                                          otGradingCo     grading
                                          eff.start       coefficient

  Real                                    m\_bulkJctS 0.3 MJSW, Side
                                          ideGradingC 3   grading
                                          oeff.start      coefficient

  Real                                    m\_oxideThi 1.0 TOX, Oxide
                                          ckness.star e-7 thickness unit:
                                          t               micron

  Real                                    m\_gateSour 0.0 CGS0, Gate-source
                                          ceOverlapCa     overlap cap
                                          pFactor.sta     
                                          rt              

  Real                                    m\_gateDrai 0.0 CGD0, Gate-drain
                                          nOverlapCap     overlap cap
                                          Factor.star     
                                          t               

  Real                                    m\_gateBulk 0.0 CGB0, Gate-bulk
                                          OverlapCapF     overlap cap
                                          actor.start     

  Real                                    m\_fNcoef.s 0.0 KF, Flicker noise
                                          tart            coefficient

  Real                                    m\_fNexp.st 1.0 AF, Flicker noise
                                          art             exponent

  Real                                    m\_oxideCap 0.0 
                                          Factor.star     
                                          t               

  [Voltage](Modelica_SIunits.html#Modelic m\_vt0.star 0.0 VTO, Threshold
  a.SIunits.Voltage)                      t               voltage [V]

  [Capacitance](Modelica_SIunits.html#Mod m\_capBD.st 0.0 CBD, B-D junction
  elica.SIunits.Capacitance)              art             capacitance [F]

  [Capacitance](Modelica_SIunits.html#Mod m\_capBS.st 0.0 CBS, B-S junction
  elica.SIunits.Capacitance)              art             capacitance [F]

  [CapacitancePerArea](Modelica_SIunits.h m\_bulkCapF 0.0 CJ, Bottom
  tml#Modelica.SIunits.CapacitancePerArea actor.start     junction cap per
  )                                                       area [F/m2]

  [Permittivity](Modelica_SIunits.html#Mo m\_sideWall 0.0 CJSW, Side
  delica.SIunits.Permittivity)            CapFactor.s     grading
                                          tart            coefficient [F/m]

  Real                                    m\_fwdCapDe 0.5 FC, Forward bias
                                          pCoeff.star     jct. fit parm.
                                          t               

  [Voltage](Modelica_SIunits.html#Modelic m\_phi.star 0.6 PHI, Surface
  a.SIunits.Voltage)                      t               potential [V]

  [Voltage](Modelica_SIunits.html#Modelic m\_gamma.st 0.0 GAMMA, Bulk
  a.SIunits.Voltage)                      art             threshold
                                                          parameter [V]

  [InversePotential](Modelica_SIunits.htm m\_lambda.s 0.0 Channel-length
  l#Modelica.SIunits.InversePotential)    tart            modulation [1/V]

  Real                                    m\_substrat 0.0 NSUB, Substrate
                                          eDoping.sta     doping
                                          rt              

  Real                                    m\_gateType 1.0 TPG, Gate type
                                          .start          

  [PerArea\_cm](Modelica_SIunits_Conversi m\_surfaceS 0.0 NSS, Gate type
  ons_NonSIunits.html#Modelica.SIunits.Co tateDensity     [1/cm2]
  nversions.NonSIunits.PerArea_cm)        .start          

  [Area\_cmPerVoltageSecond](Modelica_SIu m\_surfaceM 600 UO, Surface
  nits_Conversions_NonSIunits.html#Modeli obility.sta .0  mobility
  ca.SIunits.Conversions.NonSIunits.Area_ rt              [cm2/(V.s)]
  cmPerVoltageSecond)                                     

  [Length](Modelica_SIunits.html#Modelica m\_latDiff. 0.0 LD, Lateral
  .SIunits.Length)                        start           diffusion [m]

  [Current](Modelica_SIunits.html#Modelic m\_jctSatCu 1.0 IS, Bulk junction
  a.SIunits.Current)                      r.start     e-1 sat. current [A]
                                                      4   

  [Resistance](Modelica_SIunits.html#Mode m\_drainRes 0   RD, Drain ohmic
  lica.SIunits.Resistance)                istance.sta     resistance [Ohm]
                                          rt              

  [Resistance](Modelica_SIunits.html#Mode m\_sourceRe 0   RS, Source ohmic
  lica.SIunits.Resistance)                sistance.st     resistance [Ohm]
                                          art             

  [Transconductance](Modelica_SIunits.htm m\_transcon 2.0 input - use
  l#Modelica.SIunits.Transconductance)    ductance.st e-5 tTransconductance
                                          art             [A/V2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Mos2ModelLineParams 
      "Record for Mosfet model line parameters (for level 2)"
      extends Mos.MosModelLineParams(
        m_lambda(start=0.0),
        m_transconductance(start=2.0e-5),
        m_bulkJctSideGradingCoeff(start=0.33),
        m_oxideThickness(start=1.0e-7));

      Real m_narrowFactor( start = 0.0) "DELTA, Width effect on threshold";
      Real m_critFieldExp( start = 0.0) "UEXP, Crit. field exp for mob. deg";
      Real m_critField( start = 1.0e4) "UCRIT, Crit. field for mob. degradation";
      Real m_maxDriftVel( start = 0.0) "VMAX, Maximum carrier drift velocity";
      Real m_junctionDepth( start = 0.0) "XJ, Junction depth";
      Modelica.SIunits.Charge m_channelCharge( start = 1.0) 
        "NEFF, Total channel charge coeff";
      Real m_fastSurfaceStateDensity( start = 0.0) 
        "NFS, Fast surface state density";

    end Mos2ModelLineParams;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).Mos2ModelLineVariables
=========================================================================================================================================================

**Record for Mosfet model line variables (for level 2)**

Information
-----------

::

This record MosModelLineVariables contains the model line variables that
are used for the mosfet transistors level 2 SPICE3.

::

Extends from
[Mos.MosModelLineVariables](Modelica_Electrical_Spice3_Internal_Mos.html#Modelica.Electrical.Spice3.Internal.Mos.MosModelLineVariables)
(Record for Mosfet model line variables (for level 1)).

Modelica definition
-------------------

    record Mos2ModelLineVariables 
      "Record for Mosfet model line variables (for level 2)"
      extends Mos.MosModelLineVariables;

      Real m_bulkCapFactor;
      Real m_substrateDoping;
      Real m_xd;

    end Mos2ModelLineVariables;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).Mos2Calc
===========================================================================================================================================

**Further mosfet variables (for level 2)**

Information
-----------

::

This record Mos1Calc contains further mosfet variables (for level 2)
that are needed for the calculations.

::

Extends from
[Mos.MosCalc](Modelica_Electrical_Spice3_Internal_Mos.html#Modelica.Electrical.Spice3.Internal.Mos.MosCalc)
(Further mosfet variables (for level 1, 2, 3 and 6)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name            Defaul Descript
                                                            t      ion
  ----------------------------------------- --------------- ------ --------
  Initialization                                                   

  Integer                                   m\_mode.start   1      Mode

  [Transconductance](Modelica_SIunits.html# m\_tTransconduc 0.     [A/V2]
  Modelica.SIunits.Transconductance)        tance.start            

  Real                                      m\_tSurfMob.sta 0.     
                                            rt                     

  [Voltage](Modelica_SIunits.html#Modelica. m\_tPhi.start   0.7    [V]
  SIunits.Voltage)                                                 

  [Voltage](Modelica_SIunits.html#Modelica. m\_tVto.start   1.     [V]
  SIunits.Voltage)                                                 

  Real                                      m\_tSatCurDens. 0.     
                                            start                  

  [Current](Modelica_SIunits.html#Modelica. m\_tDrainSatCur 0.     [A]
  SIunits.Current)                          .start                 

  [Current](Modelica_SIunits.html#Modelica. m\_tSourceSatCu 0.     [A]
  SIunits.Current)                          r.start                

  [Capacitance](Modelica_SIunits.html#Model m\_tCBDb.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  [Capacitance](Modelica_SIunits.html#Model m\_tCBDs.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  [Capacitance](Modelica_SIunits.html#Model m\_tCBSb.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  [Capacitance](Modelica_SIunits.html#Model m\_tCBSs.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  Real                                      m\_tCj.start    0.     

  Real                                      m\_tCjsw.start  0.     

  [Voltage](Modelica_SIunits.html#Modelica. m\_tBulkPot.sta 0.7    [V]
  SIunits.Voltage)                          rt                     

  Real                                      m\_tDepCap.star 0.35   
                                            t                      

  [Voltage](Modelica_SIunits.html#Modelica. m\_tVbi.start   1.     [V]
  SIunits.Voltage)                                                 

  [Voltage](Modelica_SIunits.html#Modelica. m\_VBScrit.star 0.7    [V]
  SIunits.Voltage)                          t                      

  [Voltage](Modelica_SIunits.html#Modelica. m\_VBDcrit.star 0.7    [V]
  SIunits.Voltage)                          t                      

  Real                                      m\_f1b.start    0.     

  Real                                      m\_f2b.start    0.     

  Real                                      m\_f3b.start    0.     

  Real                                      m\_f1s.start    0.     

  Real                                      m\_f2s.start    0.     

  Real                                      m\_f3s.start    0.     

  Real                                      m\_dVt.start    0.     

  [Capacitance](Modelica_SIunits.html#Model m\_capgd.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  [Capacitance](Modelica_SIunits.html#Model m\_capgs.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  [Capacitance](Modelica_SIunits.html#Model m\_capgb.start  0.     [F]
  ica.SIunits.Capacitance)                                         

  [Charge](Modelica_SIunits.html#Modelica.S m\_qgs.start    0.     [C]
  Iunits.Charge)                                                   

  [Charge](Modelica_SIunits.html#Modelica.S m\_qgd.start    0.     [C]
  Iunits.Charge)                                                   

  [Charge](Modelica_SIunits.html#Modelica.S m\_qgb.start    0.     [C]
  Iunits.Charge)                                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Mos2Calc "Further mosfet variables (for level 2)"
      extends Mos.MosCalc;

    end Mos2Calc;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).mos2ModelLineParamsInitEquations
===================================================================================================================================================================

**Initial precalculation**

Information
-----------

::

This function mos1ModelLineParamsInitEquation does the initial
precalculation of the mosfet model line parameters for level 2.

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                           Name  Defa Description
                                                       ult  
  ---------------------------------------------- ----- ---- ----------------
  [Mos2ModelLineParams](Modelica_Electrical_Spic in\_p      Input record
  e3_Internal_Mos2.html#Modelica.Electrical.Spic            model line
  e3.Internal.Mos2.Mos2ModelLineParams)                     parameters for
                                                            MOS2

  [SpiceConstants](Modelica_Electrical_Spice3_In in\_C      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna            
  l.SpiceConstants)                                         

  Integer                                        in\_m      Type of MOS
                                                 \_typ      transistor
                                                 e          
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  [Mos2ModelLineVariables](Modelica_Electrical_Spice3 out\ Output record
  _Internal_Mos2.html#Modelica.Electrical.Spice3.Inte _v   with model line
  rnal.Mos2.Mos2ModelLineVariables)                        variables
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function mos2ModelLineParamsInitEquations "Initial precalculation"

      input Mos2ModelLineParams in_p "Input record model line parameters for MOS2";
      input SpiceConstants in_C "Spice constants";
      input Integer in_m_type "Type of MOS transistor";

      output Mos2ModelLineVariables out_v "Output record with model line variables";

    protected 
      Modelica.SIunits.Voltage vtnom;
      Modelica.SIunits.Voltage fermis;
      Real fermig;
      Real wkfng;
      Real wkfngs;
      Real egfet1;
      Real vfb;

    algorithm 
      out_v.m_oxideCapFactor   := in_p.m_oxideCapFactor;
      out_v.m_transconductance := in_p.m_transconductance;
      out_v.m_phi              := in_p.m_phi;
      out_v.m_gamma            := in_p.m_gamma;
      out_v.m_vt0              := in_p.m_vt0;
      out_v.m_substrateDoping  := in_p.m_substrateDoping;
      out_v.m_bulkCapFactor    := in_p.m_bulkCapFactor;

      vtnom                  := in_p.m_tnom * in_C.CONSTKoverQ;
      egfet1                 := 1.16 - (7.02e-4 * in_p.m_tnom * in_p.m_tnom) / (in_p.m_tnom + 1108);
      out_v.m_oxideCapFactor := 3.9 * 8.854214871e-12 / in_p.m_oxideThickness;

      if ( not (in_p.m_transconductanceIsGiven > 0.5)) then
        out_v.m_transconductance := in_p.m_surfaceMobility * 1.0e-4 * out_v.m_oxideCapFactor;
      end if;

      if  (in_p.m_substrateDopingIsGiven > 0.5) then
        if ( out_v.m_substrateDoping * 1.0e6 > 1.45e16) then
          if ( not (in_p.m_phiIsGiven > 0.5)) then
            out_v.m_phi := 2 * vtnom * Modelica.Math.log( out_v.m_substrateDoping * 1.0e6 / 1.45e16);
            out_v.m_phi := max( 0.1, out_v.m_phi);
          end if;
          fermis := in_m_type * 0.5 * out_v.m_phi;
          wkfng  := 3.2;
          if ( in_p.m_gateType <> 0) then
            fermig := in_m_type * in_p.m_gateType * 0.5 * egfet1;
            wkfng  := 3.25 + 0.5 * egfet1 - fermig;
          end if;
          wkfngs := wkfng - (3.25 + 0.5 * egfet1 + fermis);
          if ( not (in_p.m_gammaIsGiven > 0.5)) then
            out_v.m_gamma := sqrt(2.0 * 11.70 * 8.854214871e-12 * in_C.CHARGE * out_v.m_substrateDoping
                               * 1.0e6) / out_v.m_oxideCapFactor;
          end if;
          if ( not (in_p.m_vtOIsGiven > 0.5)) then
            vfb         := wkfngs - in_p.m_surfaceStateDensity * 1.0e4 * in_C.CHARGE / out_v.m_oxideCapFactor;
            out_v.m_vt0 := vfb + in_m_type * (out_v.m_gamma * sqrt(out_v.m_phi)+ out_v.m_phi);
          else
            vfb        := out_v.m_vt0 - in_m_type * (out_v.m_gamma * sqrt(out_v.m_phi) + out_v.m_phi);
          end if;
          out_v.m_xd := sqrt( (in_C.EPSSIL + in_C.EPSSIL) / (in_C.CHARGE * out_v.m_substrateDoping * 1.0e6));
        else
          out_v.m_substrateDoping := 0.0;
        end if;
      end if;

      if ( not (in_p.m_bulkCapFactorIsGiven > 0.5)) then
        out_v.m_bulkCapFactor := sqrt( in_C.EPSSIL * in_C.CHARGE * out_v.m_substrateDoping
                                  * 1e6 /(2 * in_p.m_bulkJctPotential));
      end if;

    end mos2ModelLineParamsInitEquations;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).drainCur
===========================================================================================================================================

**Drain current calculation**

Information
-----------

::

This function drainCur calculates the main currents that flows from
drain node to source node (level 2).

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                           Name  Def Description
                                                       aul 
                                                       t   
  ---------------------------------------------- ----- --- ---------------
  [Voltage](Modelica_SIunits.html#Modelica.SIuni vbs       [V]
  ts.Voltage)                                              

  [Voltage](Modelica_SIunits.html#Modelica.SIuni vgs       [V]
  ts.Voltage)                                              

  [Voltage](Modelica_SIunits.html#Modelica.SIuni vds       [V]
  ts.Voltage)                                              

  [Mosfet](Modelica_Electrical_Spice3_Internal_M in\_m     Record mosfet
  osfet.html#Modelica.Electrical.Spice3.Internal           
  .Mosfet.Mosfet)                                          

  [Mos2Calc](Modelica_Electrical_Spice3_Internal in\_c     Input record
  _Mos2.html#Modelica.Electrical.Spice3.Internal           Mos2Calc
  .Mos2.Mos2Calc)                                          

  [Mos2ModelLineParams](Modelica_Electrical_Spic in\_p     Input record
  e3_Internal_Mos2.html#Modelica.Electrical.Spic           model line
  e3.Internal.Mos2.Mos2ModelLineParams)                    parameters for
                                                           MOS2

  [SpiceConstants](Modelica_Electrical_Spice3_In in\_C     Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna           
  l.SpiceConstants)                                        

  [Mos2ModelLineVariables](Modelica_Electrical_S in\_v     Input record
  pice3_Internal_Mos2.html#Modelica.Electrical.S p         model line
  pice3.Internal.Mos2.Mos2ModelLineVariables)              variables

  Integer                                        in\_m     Type of MOS
                                                 \_typ     transistor
                                                 e         
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [Mos2Calc](Modelica_Electrical_Spice3_Internal_Mos2.ht out\_ Output
  ml#Modelica.Electrical.Spice3.Internal.Mos2.Mos2Calc)  c     record
                                                               Mos2Calc
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function drainCur "Drain current calculation"

       input Modelica.SIunits.Voltage vbs;
       input Modelica.SIunits.Voltage vgs;
       input Modelica.SIunits.Voltage vds;

       input Mosfet.Mosfet in_m "Record mosfet";
       input Mos2Calc in_c "Input record Mos2Calc";
       input Mos2ModelLineParams in_p "Input record model line parameters for MOS2";
       input SpiceConstants in_C "Spice constants";
       input Mos2ModelLineVariables in_vp "Input record model line variables";
       input Integer in_m_type "Type of MOS transistor";

       output Mos2Calc out_c "Output record Mos2Calc";

    protected 
      Real vt;      // K * T / Q
      Real beta1;
      Real dsrgdb;
      Real d2sdb2;
      Real sphi = 0.0;
      Real sphi3 = 1.0;    // square root of phi
      Real barg;
      Real sarg;
      Real bsarg = 0.0;
      Real sarg3;
      Real d2bdb2;
      Real factor;
      Real dbrgdb;
      Real eta;
      Real vbin;
      Real vth;
      Real dgddb2;
      Real dgddvb;
      Real dgdvds;
      Real gamasd;
      Real gammad;
      Real xn =   1.0;
      Real argg = 0.0;
      Real vgst;
      Real vgsx;
      Real dgdvbs;
      Real body;
      Real bodys = 0.0;
      Real gdbdv;
      Real dodvbs;
      Real dodvds = 0.0;
      Real dxndvd = 0.0;
      Real dxndvb = 0.0;
      Real dudvgs;
      Real dudvds;
      Real dudvbs;
      Real ufact;
      Real ueff;
      Real dsdvgs;
      Real dsdvbs;
      Real dbsrdb;
      Real gdbdvs = 0.0;
      Real dldvgs;
      Real dldvds;
      Real dldvbs;
      Real clfact;
      Real xleff;
      Real deltal;
      Real xwb;
      Real xld;
      Real xlamda = in_p.m_lambda;
      Real phiMinVbs;
      Real tmp;

      Real argss;
      Real argsd;
      Real args = 0.0;
      Real argd = 0.0;
      Real argxs = 0.0;
      Real argxd = 0.0;
      Real dbargs;
      Real dbargd;
      Real dbxws;
      Real dbxwd;
      Real xwd;
      Real xws;
      Real daddb2;
      Real dasdb2;
      Real ddxwd;
      Real cfs;
      Real cdonco;
      Real argv;
      Real gammd2;
      Real arg;
      Real y3;
      Real xvalid = 0.0;
      Real[4] sig1;
      Real[4] sig2;
      Real[4] a4;
      Real[4] b4;
      Real[8] x4;
      Real[8] poly4;
      Real delta4;
      Integer j;
      Integer iknt = 0;
      Integer i;
      Integer jknt = 0;
      Real v1;
      Real v2;
      Real xv;
      Real a1;
      Real b1;
      Real c1;
      Real d1;
      Real b2;
      Real r1;
      Real s1;
      Real s2;
      Real p1;
      Real p0;
      Real p2;
      Real a3;
      Real b3;
      Real sargv;
      Real dldsat;
      Real xlfact;
      Real xdv;
      Real xlv;
      Real vqchan;
      Real dqdsat;
      Real vl;
      Real dfunds;
      Real dfundg;
      Real dfundb;
      Real xls;
      Real dfact;
      Real vdson;
      Real cdson;
      Real gdson;
      Real didvds;
      Real gmw;
      Real gbson;
      Real expg;

    algorithm 
       out_c := in_c;

      vt := in_C.CONSTKoverQ * in_C.REFTEMP;

      phiMinVbs := out_c.m_tPhi - vbs;
      if ( vbs <= 0.0) then
        sarg   := sqrt( phiMinVbs);
        dsrgdb := -0.5 / sarg;
        d2sdb2 := 0.5 * dsrgdb / phiMinVbs;
      else
        sphi   :=sqrt(out_c.m_tPhi);
        sphi3  :=out_c.m_tPhi*sphi;
        sarg   :=sphi/(1.0 + 0.5*vbs/out_c.m_tPhi);
        tmp    :=sarg/sphi3;
        dsrgdb :=-0.5*sarg*tmp;
        d2sdb2 :=-dsrgdb*tmp;
      end if;

      if ( (vds-vbs) >= 0) then
        barg   := sqrt( phiMinVbs + vds);
        dbrgdb := -0.5 / barg;
        d2bdb2 := 0.5 * dbrgdb / (phiMinVbs + vds);
      else
        barg   := sphi / (1.0 + 0.5 * (vbs - vds) / out_c.m_tPhi);
        tmp    := barg / sphi3;
        dbrgdb := -0.5 * barg * tmp;
        d2bdb2 := -dbrgdb * tmp;
      end if;

      factor := 0.125 * in_p.m_narrowFactor * 2.0 * Modelica.Constants.pi*in_C.EPSSIL / out_c.m_capOx * out_c.m_lEff;

      eta    := 1.0 + factor;
      vbin   := out_c.m_tVbi * in_m_type + factor * phiMinVbs;
      if ( (in_vp.m_gamma > 0.0) or (in_vp.m_substrateDoping > 0.0)) then
        xwd := in_vp.m_xd * barg;
        xws := in_vp.m_xd * sarg;

        argss  := 0.0;
        argsd  := 0.0;
        dbargs := 0.0;
        dbargd := 0.0;
        dgdvds := 0.0;
        dgddb2 := 0.0;
        if ( in_p.m_junctionDepth > 0) then
          tmp   := 2.0 / in_p.m_junctionDepth;
          argxs := 1.0 + xws * tmp;
          argxd := 1.0 + xwd * tmp;
          args  := sqrt( argxs);
          argd  := sqrt( argxd);
          tmp   := 0.5 * in_p.m_junctionDepth / out_c.m_lEff;
          argss := tmp * (args - 1.0);
          argsd := tmp * (argd - 1.0);
        end if;
        gamasd := in_vp.m_gamma * (1.0 - argss - argsd);
        dbxwd  := in_vp.m_xd * dbrgdb;
        dbxws  := in_vp.m_xd * dsrgdb;
        if ( in_p.m_junctionDepth > 0) then
          tmp    := 0.5 / out_c.m_lEff;
          dbargs := tmp * dbxws / args;
          dbargd := tmp * dbxwd / argd;
          dasdb2 := -in_vp.m_xd * (d2sdb2 + dsrgdb * dsrgdb * in_vp.m_xd
                    / (in_p.m_junctionDepth * argxs)) / (out_c.m_lEff * args);
          daddb2 := -in_vp.m_xd * (d2bdb2 + dbrgdb * dbrgdb * in_vp.m_xd
                    / (in_p.m_junctionDepth * argxd))
                    / (out_c.m_lEff * argd);
          dgddb2 := -0.5 * in_vp.m_gamma * (dasdb2 + daddb2);
        end if;
        dgddvb := -in_vp.m_gamma * (dbargs + dbargd);
        if ( in_p.m_junctionDepth > 0) then
          ddxwd  := -dbxwd;
          dgdvds := -in_vp.m_gamma * 0.5 * ddxwd / (out_c.m_lEff * argd);
        end if;
      else
        gamasd := in_vp.m_gamma;
        gammad := in_vp.m_gamma;
        dgddvb := 0.0;
        dgdvds := 0.0;
        dgddb2 := 0.0;
      end if;

      out_c.m_von   := vbin + gamasd * sarg;
      vth           := out_c.m_von;
      out_c.m_vdsat := 0.0;
      if ( in_p.m_fastSurfaceStateDensity <> 0.0 and out_c.m_capOx <> 0.0) then
        cfs          := in_C.CHARGE * in_p.m_fastSurfaceStateDensity * 1.0e4;
        cdonco       := -(gamasd * dsrgdb + dgddvb * sarg) + factor;
        xn           := 1.0 + cfs / out_c.m_capOx * in_m.m_width * out_c.m_lEff + cdonco;
        tmp          := vt * xn;
        out_c.m_von  := out_c.m_von + tmp;
        argg         := 1.0 / tmp;
        vgst         := vgs - out_c.m_von;
      else
        vgst := vgs - out_c.m_von;
        if ( vgs <= out_c.m_von) then
          // cutoff region
          out_c.m_gds    := 0.0;
          out_c.m_cdrain := 0.0;
          out_c.m_gm     := 0.0;
          out_c.m_gmbs   := 0.0;
          return;
        end if;
      end if;

      sarg3  := sarg * sarg * sarg;
      gammad := gamasd;
      dgdvbs := dgddvb;
      body   := barg * barg * barg - sarg3;
      gdbdv  := 2.0 * gammad * (barg * barg * dbrgdb - sarg * sarg * dsrgdb);
      dodvbs := -factor + dgdvbs * sarg + gammad * dsrgdb;

      if ( (in_p.m_fastSurfaceStateDensity <> 0.0) and (out_c.m_capOx <> 0.0)) then
        dxndvb := 2.0 * dgdvbs * dsrgdb + gammad * d2sdb2 + dgddb2 * sarg;
        dodvbs := dodvbs + vt * dxndvb;
        dxndvd := dgdvds * dsrgdb;
        dodvds := dgdvds * sarg + vt * dxndvd;
      end if;

      // evaluate effective mobility and its derivatives
      ufact  := 1.0;
      ueff   := in_p.m_surfaceMobility * 1e-4;
      dudvgs := 0.0;
      dudvds := 0.0;
      dudvbs := 0.0;
      if (out_c.m_capOx > 0.0) then
        tmp := in_p.m_critField * in_C.EPSSIL * 100 / in_vp.m_oxideCapFactor;
        if (vgst > tmp) then
          ufact  := exp( in_p.m_critFieldExp * Modelica.Math.log( tmp / vgst));
          ueff   := in_p.m_surfaceMobility * 1.0e-4 * ufact;
          dudvgs := -ufact * in_p.m_critFieldExp / vgst;
          dudvds := 0.0;
          dudvbs := in_p.m_critFieldExp * ufact * dodvbs / vgst;
        end if;
      end if;

      // evaluate saturation voltage and its derivatives according to
      // grove-frohman equation
      vgsx   := vgs;
      gammad := gamasd / eta;
      dgdvbs := dgddvb;
      if (in_p.m_fastSurfaceStateDensity <> 0 and out_c.m_capOx <> 0) then
        vgsx := max( vgs, out_c.m_von);
      end if;
      if (gammad > 0) then
        gammd2 := gammad * gammad;
        argv   := (vgsx - vbin) / eta + phiMinVbs;
        if (argv <= 0.0) then
          out_c.m_vdsat := 0.0;
          dsdvgs        := 0.0;
          dsdvbs        := 0.0;
        else
          arg           := sqrt( 1.0 + 4.0 * argv / gammd2);
          out_c.m_vdsat := (vgsx - vbin) / eta + gammd2 * (1.0 - arg) / 2.0;
          out_c.m_vdsat := max( out_c.m_vdsat, 0.0);
          dsdvgs        := (1.0 - 1.0 / arg) / eta;
          dsdvbs        := (gammad * (1.0 - arg) + 2.0 * argv / (gammad * arg))
                           / eta * dgdvbs + 1.0 / arg + factor * dsdvgs;
        end if;
      else
        out_c.m_vdsat := (vgsx - vbin) / eta;
        out_c.m_vdsat := max( out_c.m_vdsat, 0.0);
        dsdvgs        := 1.0;
        dsdvbs        := 0.0;
      end if;

      if (in_p.m_maxDriftVel > 0) then
        // evaluate saturation voltage and its derivatives
        // according to baum's theory of scattering velocity saturation
        v1 := (vgsx - vbin) / eta + phiMinVbs;
        v2 := phiMinVbs;
        xv := in_p.m_maxDriftVel * out_c.m_lEff / ueff;
        a1 := gammad / 0.75;
        b1 := -2.0 * (v1 + xv);
        c1 := -2.0 * gammad * xv;
        d1 := 2.0 * v1 * (v2 + xv) - v2 * v2 - 4.0 / 3.0 * gammad * sarg3;
        b2 := a1 * c1 - 4.0 * d1;
        r1 := -b1 * b1 / 3.0 + b2;
        s1 := 2.0 * b1 * b1 * (-b1) / 27.0 + b1 * b2 / 3.0 + (-d1) * (a1 * a1 - 4.0 * b1) - c1 * c1;
        s2 := s1 * s1;
        p1 := s2 / 4.0 + r1 * r1 * r1 / 27.0;
        p0 := abs( p1);
        p2 := sqrt( p0);

        sig1[1] :=  1.0;
        sig1[2] := -1.0;
        sig1[3] :=  1.0;
        sig1[4] := -1.0;
        sig2[1] :=  1.0;
        sig2[2] :=  1.0;
        sig2[3] := -1.0;
        sig2[4] := -1.0;

        if (p1 < 0) then
          y3 := 2.0 * exp( Modelica.Math.log( sqrt( s2 / 4.0 + p0)) / 3.0)
                * cos( Modelica.Math.atan( -2.0 * p2 / s1) / 3.0) + b1 / 3.0;
        else
          y3 := exp( Modelica.Math.log( abs( -s1 / 2.0 + p2)) / 3.0)
                + exp( Modelica.Math.log( abs( -s1 / 2.0 - p2)) / 3.0)
                + b1 / 3.0;
        end if;

        a3 := sqrt( a1 * a1 / 4.0 - b1 + y3);
        b3 := sqrt( y3 * y3 / 4.0 - d1);

        for i in 1:4 loop
          a4[i]  := a1/2.0+sig1[i]*a3;
          b4[i]  := y3/2.0+sig2[i]*b3;
          delta4 := a4[i]*a4[i]/4.0-b4[i];
          if (delta4 >= 0) then
            iknt     := iknt+1;
            tmp      := sqrt(delta4);
            x4[iknt] := -a4[i]/2.0+tmp;
            iknt     := iknt+1;
            x4[iknt] := -a4[i]/2.0-tmp;
          end if;
        end for;
        jknt := 0;
        for j in 1:iknt loop
          if (x4[j] > 0) then
            poly4[j] := x4[j]*x4[j]*x4[j]*x4[j]+a1*x4[j]*x4[j]*x4[j];
            poly4[j] := poly4[j]+b1*x4[j]*x4[j]+c1*x4[j]+d1;
            if (abs(poly4[j]) <= 1.0e-6) then
              jknt := jknt+1;
              if (jknt <= 1) then
                xvalid := x4[j];
              end if;
              if (x4[j] <= xvalid) then
                xvalid := x4[j];
              end if;
            end if;
          end if;
        end for;

        if (jknt > 0) then
          out_c.m_vdsat := xvalid * xvalid - phiMinVbs;
        end if;
      end if;

      // evaluate effective channel length and its derivatives
      dldvgs := 0.0;
      dldvds := 0.0;
      dldvbs := 0.0;
      if (vds <> 0.0) then
        gammad :=gamasd;
        if ((vbs - out_c.m_vdsat) <= 0) then
          bsarg  := sqrt(out_c.m_vdsat + phiMinVbs);
          dbsrdb := -0.5 / bsarg;
        else
          bsarg  :=sphi/(1.0 + 0.5*(vbs - out_c.m_vdsat)/out_c.m_tPhi);
          dbsrdb :=-0.5*bsarg*bsarg/sphi3;
        end if;
        bodys  := bsarg * bsarg * bsarg - sarg3;
        gdbdvs := 2.0 * gammad * (bsarg * bsarg * dbsrdb - sarg * sarg * dsrgdb);
        if (in_p.m_maxDriftVel <= 0) then
          if (in_vp.m_substrateDoping <> 0.0 and (xlamda <= 0.0)) then
            argv   := (vds - out_c.m_vdsat) / 4.0;
            sargv  := sqrt(1.0 + argv * argv);
            arg    := sqrt(argv + sargv);
            xlfact := in_vp.m_xd / (out_c.m_lEff * vds);
            xlamda := xlfact * arg;
            dldsat := vds * xlamda / (8.0 * sargv);

            dldvgs := dldsat * dsdvgs;
            dldvds := -xlamda + dldsat;
            dldvbs := dldsat * dsdvbs;
          end if;
        else
          argv   := (vgsx - vbin) / eta - out_c.m_vdsat;
          xdv    := in_vp.m_xd / sqrt(in_p.m_channelCharge);
          xlv    := in_p.m_maxDriftVel * xdv / (2.0 * ueff);
          vqchan := argv - gammad * bsarg;
          dqdsat := -1.0 + gammad * dbsrdb;
          vl     := in_p.m_maxDriftVel *out_c. m_lEff;
          dfunds := vl * dqdsat - ueff * vqchan;
          dfundg := (vl - ueff * out_c.m_vdsat) / eta;
          dfundb := -vl * (1.0 + dqdsat - factor / eta) + ueff *
             (gdbdvs - dgdvbs * bodys / 1.5) / eta;
          dsdvgs := -dfundg / dfunds;
          dsdvbs := -dfundb / dfunds;
          if ((in_vp.m_substrateDoping <> 0.0) and (xlamda <= 0.0)) then
            argv   := vds - out_c.m_vdsat;
            argv   := max(argv,0.0);
            xls    := sqrt(xlv * xlv + argv);
            dldsat := xdv / (2.0 * xls);
            xlfact := xdv / (out_c.m_lEff * vds);
            xlamda := xlfact * (xls - xlv);
            dldsat := dldsat / out_c.m_lEff;

            dldvgs := dldsat * dsdvgs;
            dldvds := -xlamda + dldsat;
            dldvbs := dldsat * dsdvbs;
          end if;
        end if;
      end if;

      // limit channel shortening at punch-through
      xwb    :=in_vp.m_xd*sqrt(out_c.m_tBulkPot);
      xld    :=out_c.m_lEff - xwb;
      clfact :=1.0 - xlamda*vds;
      dldvds :=-xlamda - dldvds;
      xleff  :=out_c.m_lEff*clfact;
      deltal :=xlamda*vds*out_c.m_lEff;
      if (in_vp.m_substrateDoping == 0.0) then
        xwb := 0.25e-6;
      end if;
      if (xleff < xwb) then
        xleff  := xwb / (1.0 + (deltal - xld) / xwb);
        clfact := xleff / out_c.m_lEff;
        dfact  := xleff * xleff / (xwb * xwb);
        dldvgs := dfact * dldvgs;
        dldvds := dfact * dldvds;
        dldvbs := dfact * dldvbs;
      end if;

      // evaluate effective beta (effective kp)
      beta1 := out_c.m_Beta * ufact / clfact;

      // test for mode of operation and branch appropriately
      gammad := gamasd;
      dgdvbs := dgddvb;
      if (vds <= 1.0e-10) then
        if (vgs <= out_c.m_von) then
          if ((in_p.m_fastSurfaceStateDensity == 0.0) or (out_c.m_capOx == 0.0)) then
            out_c.m_gds := 0.0;
          else
            out_c.m_gds := beta1 * (out_c.m_von - vbin - gammad * sarg) * exp(argg * (vgs - out_c.m_von));
          end if;
        else
          out_c.m_gds :=beta1*(vgs - vbin - gammad*sarg);
        end if;
        out_c.m_cdrain :=0.0;
        out_c.m_gm     :=0.0;
        out_c.m_gmbs   :=0.0;
        return;
      end if;

      if (vgs <= out_c.m_von) then
        // subthreshold region
        if (out_c.m_vdsat <= 0) then
          out_c.m_gds    := 0.0;
          if (vgs > vth) then
            return;
          end if;
          out_c.m_cdrain := 0.0;
          out_c.m_gm     := 0.0;
          out_c.m_gmbs   := 0.0;
          return;
        end if;
        vdson := min(out_c.m_vdsat, vds);
        if (vds > out_c.m_vdsat) then
          barg   := bsarg;
          dbrgdb := dbsrdb;
          body   := bodys;
          gdbdv  := gdbdvs;
        end if;
        cdson  := beta1 * ((out_c.m_von - vbin - eta * vdson * 0.5) * vdson - gammad * body / 1.5);
        didvds := beta1 * (out_c.m_von - vbin - eta * vdson - gammad * barg);
        gdson  := -cdson * dldvds / clfact - beta1 * dgdvds * body / 1.5;
        if (vds < out_c.m_vdsat) then
          gdson := gdson + didvds;
        end if;
        gbson := -cdson * dldvbs / clfact + beta1 *
                 (dodvbs * vdson + factor * vdson - dgdvbs * body / 1.5 - gdbdv);
        if (vds > out_c.m_vdsat) then
          gbson := gbson + didvds * dsdvbs;
        end if;
        expg           := exp(argg * (vgs - out_c.m_von));
        out_c.m_cdrain := cdson * expg;
        gmw            := out_c.m_cdrain * argg;
        out_c.m_gm     := gmw;
        if (vds > out_c.m_vdsat) then
          out_c.m_gm := gmw + didvds * dsdvgs * expg;
        end if;
        tmp          := gmw * (vgs - out_c.m_von) / xn;
        out_c.m_gds  := gdson * expg - out_c.m_gm * dodvds - tmp * dxndvd;
        out_c.m_gmbs := gbson * expg - out_c.m_gm * dodvbs - tmp * dxndvb;
      elseif (vds <= out_c.m_vdsat) then
        // linear region
        out_c.m_cdrain := beta1 * ((vgs - vbin - eta * vds / 2.0) * vds - gammad * body / 1.5);
        arg            := out_c.m_cdrain * (dudvgs / ufact - dldvgs / clfact);
        out_c.m_gm     := arg + beta1 * vds;
        arg            := out_c.m_cdrain * (dudvds / ufact - dldvds / clfact);
        out_c.m_gds    := arg + beta1 * (vgs - vbin - eta *
                          vds - gammad * barg - dgdvds * body / 1.5);
        arg            := out_c.m_cdrain * (dudvbs / ufact - dldvbs / clfact);
        out_c.m_gmbs   := arg - beta1 * (gdbdv + dgdvbs * body / 1.5 - factor * vds);
      else
        // saturation region
        out_c.m_cdrain := beta1 * ((vgs - vbin - eta *
                         out_c.m_vdsat / 2.0) * out_c.m_vdsat - gammad * bodys / 1.5);
        arg            := out_c.m_cdrain * (dudvgs / ufact - dldvgs / clfact);
        out_c.m_gm     := arg + beta1 * out_c.m_vdsat
                         + beta1 * (vgs - vbin - eta * out_c.m_vdsat - gammad * bsarg) * dsdvgs;
        out_c.m_gds    := -out_c.m_cdrain * dldvds / clfact - beta1 * dgdvds * bodys / 1.5;
        arg            := out_c.m_cdrain * (dudvbs / ufact - dldvbs / clfact);
        out_c.m_gmbs   := arg - beta1 * (gdbdvs + dgdvbs * bodys / 1.5 - factor * out_c.m_vdsat)
                         + beta1 *  (vgs - vbin - eta * out_c.m_vdsat - gammad * bsarg) * dsdvbs;
      end if;

    end drainCur;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).mos2RenameParameters
=======================================================================================================================================================

**Parameter renaming to internal names**

Information
-----------

::

This function mos2RenameParameters assigns the external (given by the
user, e.g., RD) technology parameters to the internal parameters (e.g.,
m\_drainResistance). It also does the analysis of the IsGiven values
(level 2).

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                           Nam Defa Description
                                                 e   ult  
  ---------------------------------------------- --- ---- ----------------
  [ModelcardMOS2](Modelica_Electrical_Spice3_Int ex       Modelcard with
  ernal.html#Modelica.Electrical.Spice3.Internal          technologie
  .ModelcardMOS2)                                         parameters

  [SpiceConstants](Modelica_Electrical_Spice3_In con      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna          
  l.SpiceConstants)                                       
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- ---------------
  [Mos2ModelLineParams](Modelica_Electrical_Spice3_Int inte Output record
  ernal_Mos2.html#Modelica.Electrical.Spice3.Internal. rn   model line
  Mos2.Mos2ModelLineParams)                                 parameters
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function mos2RenameParameters "Parameter renaming to internal names"

      input ModelcardMOS2 ex "Modelcard with technologie parameters";
      input SpiceConstants con "Spice constants";

      output Mos2ModelLineParams intern "Output record model line parameters";

    algorithm 
       intern.m_narrowFactor := ex.DELTA;           // DELTA, Width effect on threshold
       intern.m_critFieldExp := ex.UEXP;            // UEXP, Crit. field exp for mob. deg
       intern.m_critField := ex.UCRIT;              // UCRIT, Crit. field for mob. degradation
       intern.m_maxDriftVel := ex.VMAX;             // VMAX, Maximum carrier drift velocity
       intern.m_junctionDepth := ex.XJ;             // XJ, Junction depth
       intern.m_channelCharge := ex.NEFF;           // NEFF, Total channel charge coeff
       intern.m_fastSurfaceStateDensity := ex.NFS;  // NFS, Fast surface state density

       intern.m_oxideCapFactor := 0;

        intern.m_vtOIsGiven := if          (ex.VTO > -1e40) then 1 else 0;
        intern.m_vt0 := if         (ex.VTO > -1e40) then ex.VTO else 0;

        intern.m_capBDIsGiven := if          (ex.CBD > -1e40) then 1 else 0;
        intern.m_capBD := if         (ex.CBD > -1e40) then ex.CBD else 0;

        intern.m_capBSIsGiven := if          (ex.CBS > -1e40) then 1 else 0;
        intern.m_capBS := if         (ex.CBS > -1e40) then ex.CBS else 0;

        intern.m_bulkCapFactor := ex.CJ;           // F/(m*m) zero-bias bulk junction bottom cap. per sq-meter of junction area (default 0)
        intern.m_sideWallCapFactor := ex.CJSW;     // F/m zero-bias junction sidewall cap. per meter of junction perimeter (default 0)
        intern.m_fwdCapDepCoeff := ex.FC;          // coefficient for forward-bias depletion capacitance formula (default 0.5)

        intern.m_phiIsGiven := if          (ex.PHI > -1e40) then 1 else 0;
        intern.m_phi := if         (ex.PHI > -1e40) then ex.PHI else 0.6;

        intern.m_gammaIsGiven := if          (ex.GAMMA > -1e40) then 1 else 0;
        intern.m_gamma := if         (ex.GAMMA > -1e40) then ex.GAMMA else 0;

        intern.m_lambda := ex.LAMBDA;              // 1/V channel-length modulation (default 0)

        intern.m_substrateDopingIsGiven := if          (ex.NSUB > -1e40) then 1 else 0;
        intern.m_substrateDoping := if         (ex.NSUB > -1e40) then ex.NSUB else 0;

        intern.m_gateType := ex.TPG;               // type of gate material: +1 opp. to substrate, -1 same as substrate, 0 Al gate (default 1)
        intern.m_surfaceStateDensity := ex.NSS;    // 1/(cm*cm) surface state density (default 0)
        intern.m_surfaceMobility := ex.UO;         // (cm*cm)/(Vs) surface mobility (default 600)
        intern.m_latDiff := ex.LD;                 // m lateral diffusion (default 0)
        intern.m_jctSatCur := ex.IS;               // A bulk junction saturation current (defaul 1e-14)

        intern.m_drainResistanceIsGiven := if 
                                             (ex.RD > -1e40) then 1 else 0;
        intern.m_drainResistance := if 
                                     (ex.RD > -1e40) then ex.RD else 0;

              intern.m_sourceResistanceIsGiven := if 
                                             (ex.RS > -1e40) then 1 else 0;
        intern.m_sourceResistance := if 
                                     (ex.RS > -1e40) then ex.RS else 0;

        intern.m_transconductanceIsGiven := if          (ex.KP > -1e40) then 1 else 0;
        intern.m_transconductance := if         (ex.KP > -1e40) then ex.KP else 2e-5;

      intern.m_tnom := if (ex.TNOM > -1e40) then ex.TNOM + SpiceConstants.CONSTCtoK else 
        300.15;

       intern.m_jctSatCurDensity := ex.JS;             // A/(m*m) bulk junction saturation current per sq-meter of junction area (default 0)
       intern.m_sheetResistance := ex.RSH;             // Ohm drain and source diffusion sheet resistance (default 0)
       intern.m_bulkJctPotential := ex.PB;             // V bulk junction potential (default 0.8)
       intern.m_bulkJctBotGradingCoeff := ex.MJ;       // bulk junction bottom grading coeff. (default 0.5)
       intern.m_bulkJctSideGradingCoeff := ex.MJSW;    // bulk junction sidewall grading coeff. (default 0.5)

       intern.m_oxideThickness := ex.TOX;              // m oxide thickness (default 1e-7)

       intern.m_oxideThicknessIsGiven := if          (ex.TOX > -1e40) then 1 else 0;
       intern.m_oxideThickness := if         (ex.TOX > -1e40) then ex.TOX else 1e-7;

       intern.m_gateSourceOverlapCapFactor := ex.CGSO; // F/m gate-source overlap capacitance per meter channel width (default 0)
       intern.m_gateDrainOverlapCapFactor := ex.CGDO;  // F/m gate-drain overlap capacitance per meter channel width (default 0)
       intern.m_gateBulkOverlapCapFactor := ex.CGBO;   // F/m gate-bulk overlap capacitance per meter channel width (default 0)
       intern.m_fNcoef := ex.KF;                       // flicker-noise coefficient (default 0)
       intern.m_fNexp := ex.AF;                        // flicker-noise exponent (default 1)

    end mos2RenameParameters;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos2](Modelica_Electrical_Spice3_Internal_Mos2.html#Modelica.Electrical.Spice3.Internal.Mos2).mos2RenameParametersDev
==========================================================================================================================================================

**Device parameter renaming to internal names**

Information
-----------

::

This function mos2RenameParameters assigns the external (given by the
user) device parameters to the internal parameters. It also does the
analysis of the IsGiven values (level 2).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Nam Def Description
                                        e   aul 
                                            t   
  ------------------------------------- --- --- ---------------------------
  [ModelcardMOS2](Modelica_Electrical_S ex      
  pice3_Internal.html#Modelica.Electric         
  al.Spice3.Internal.ModelcardMOS2)             

  Integer                               mty     
                                        pe      

  [Length](Modelica_SIunits.html#Modeli W       Width of channel region [m]
  ca.SIunits.Length)                            

  [Length](Modelica_SIunits.html#Modeli L       Length of channel region
  ca.SIunits.Length)                            [m]

  [Area](Modelica_SIunits.html#Modelica AD      Area of drain diffusion
  .SIunits.Area)                                [m2]

  [Area](Modelica_SIunits.html#Modelica AS      Area of source diffusion
  .SIunits.Area)                                [m2]

  [Length](Modelica_SIunits.html#Modeli PD      Drain perimeter [m]
  ca.SIunits.Length)                            

  [Length](Modelica_SIunits.html#Modeli PS      Source perimeter [m]
  ca.SIunits.Length)                            

  Real                                  NRD     Length of drain squares

  Real                                  NRS     Length of Source squares

  Integer                               OFF     Optional initial condition:
                                                0 - IC not used, 1 - IC
                                                used, not implemented yet

  Real                                  IC      Initial condition values,
                                                not implemented yet

  [Temp\_C](Modelica_SIunits.html#Model TEM     Temperature [degC]
  ica.SIunits.Temp_C)                   P       
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- ------------
  [Mosfet](Modelica_Electrical_Spice3_Internal_Mosfet.htm dev  Output
  l#Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet)         record
                                                               Mosfet
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function mos2RenameParametersDev 
      "Device parameter renaming to internal names"
      input ModelcardMOS2 ex;
      input Integer mtype;
      input Modelica.SIunits.Length W "Width of channel region";
      input Modelica.SIunits.Length L "Length of channel region";
      input Modelica.SIunits.Area AD "Area of drain diffusion";
      input Modelica.SIunits.Area AS "Area of source diffusion";
      input Modelica.SIunits.Length PD "Drain perimeter";
      input Modelica.SIunits.Length PS "Source perimeter";
      input Real NRD "Length of drain squares";
      input Real NRS "Length of Source squares";
      input Integer OFF 
        "Optional initial condition: 0 - IC not used, 1 - IC used, not implemented yet";
      input Real IC "Initial condition values, not implemented yet";
      input Modelica.SIunits.Temp_C TEMP "Temperature";

      output Mosfet.Mosfet dev "Output record Mosfet";

    algorithm 
    /*device parameters*/
      dev.m_len := L;               // L, length of channel region
      dev.m_width := W;             // W, width of channel region
      dev.m_drainArea := AD;        // AD, area of drain diffusion
      dev.m_sourceArea := AS;       // AS, area of source diffusion
      dev.m_drainSquares := NRD;    // NRD, length of drain in squares
      dev.m_sourceSquares := NRS;   // NRS, length of source in squares
      dev.m_drainPerimiter := PD;   // PD, Drain perimeter;
      dev.m_sourcePerimiter := PS;  // PS, Source perimeter

        dev.m_dICVDSIsGiven := if          (IC > -1e40) then 1 else 0;
        dev.m_dICVDS := if         (IC > -1e40) then IC else 0;

        dev.m_dICVGSIsGiven := if          (IC > -1e40) then 1 else 0;
        dev.m_dICVGS := if         (IC > -1e40) then IC else 0;

        dev.m_dICVBSIsGiven := if          (IC > -1e40) then 1 else 0;
        dev.m_dICVBS := if         (IC > -1e40) then IC else 0;

      dev.m_off := OFF;             // non-zero to indicate device is off for dc analysis
      dev.m_bPMOS := mtype;         // P type MOSfet model
      dev.m_nLevel := ex.LEVEL;
      assert(ex.LEVEL== 1, "only MOS Level1 implemented");
      dev.m_dTemp :=TEMP + SpiceConstants.CONSTCtoK;
    end mos2RenameParametersDev;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:47 2010.