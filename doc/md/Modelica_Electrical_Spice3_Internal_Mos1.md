% Modelica.Electrical.Spice3.Internal.Mos1
% 
% 

[Modelica.Electrical.Spice3.Internal](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal).Mos1
========================================================================================================================

**Records and functions for Mosfets level 1**

Information
-----------

::

This package Mos1 contains functions and record with data of the mosfet
model level 1.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image6](Modelica.Electrical.Spice3.Internal.Mos1.Mos1Mo Record for
  delLineParamsS.png)                                       Mosfet model
  [Mos1ModelLineParams](Modelica_Electrical_Spice3_Internal line
  _Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1.Mos1M parameters
  odelLineParams)                                           (for level 1)

  ![image7](Modelica.Electrical.Spice3.Internal.Mos1.Mos1Mo Further mosfet
  delLineParamsS.png)                                       variables (for
  [Mos1Calc](Modelica_Electrical_Spice3_Internal_Mos1.html# level 1)
  Modelica.Electrical.Spice3.Internal.Mos1.Mos1Calc)        

  ![image8](Modelica.Electrical.Spice3.Internal.Mos1.mos1Mo Initial
  delLineParamsInitEquationsS.png)                          precalculation
  [mos1ModelLineParamsInitEquations](Modelica_Electrical_Sp 
  ice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Intern 
  al.Mos1.mos1ModelLineParamsInitEquations)                 

  ![image9](Modelica.Electrical.Spice3.Internal.Mos1.mos1Mo Drain current
  delLineParamsInitEquationsS.png)                          calculation
  [drainCur](Modelica_Electrical_Spice3_Internal_Mos1.html# 
  Modelica.Electrical.Spice3.Internal.Mos1.drainCur)        

  ![image10](Modelica.Electrical.Spice3.Internal.Mos1.mos1M Parameter
  odelLineParamsInitEquationsS.png)                         renaming to
  [mos1RenameParameters](Modelica_Electrical_Spice3_Interna internal names
  l_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1.mos1 
  RenameParameters)                                         

  ![image11](Modelica.Electrical.Spice3.Internal.Mos1.mos1M Device
  odelLineParamsInitEquationsS.png)                         parameter
  [mos1RenameParametersDev](Modelica_Electrical_Spice3_Inte renaming to
  rnal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1.m internal names
  os1RenameParametersDev)                                   
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos1](Modelica_Electrical_Spice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1).Mos1ModelLineParams
======================================================================================================================================================

**Record for Mosfet model line parameters (for level 1)**

Information
-----------

::

This record Mos1ModelLineParams contains the model line parameters that
are used for the mosfet transistors level 1 in SPICE3.

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

  Real                                    m\_bulkJctS 0.5 MJSW, Side
                                          ideGradingC     grading
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

    record Mos1ModelLineParams 
      "Record for Mosfet model line parameters (for level 1)"
      extends Mos.MosModelLineParams(
       m_lambda( start = 0.0),
       m_transconductance( start = 2.0e-5));

    end Mos1ModelLineParams;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos1](Modelica_Electrical_Spice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1).Mos1Calc
===========================================================================================================================================

**Further mosfet variables (for level 1)**

Information
-----------

::

This record Mos1Calc contains further mosfet variables (for level 1)
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

    record Mos1Calc "Further mosfet variables (for level 1)"
      extends Mos.MosCalc;

    end Mos1Calc;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos1](Modelica_Electrical_Spice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1).mos1ModelLineParamsInitEquations
===================================================================================================================================================================

**Initial precalculation**

Information
-----------

::

This function mos1ModelLineParamsInitEquation does the initial
precalculation of the mosfet model line parameters for level 1.

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                           Name  Defa Description
                                                       ult  
  ---------------------------------------------- ----- ---- ----------------
  [Mos1ModelLineParams](Modelica_Electrical_Spic in\_p      Input record
  e3_Internal_Mos1.html#Modelica.Electrical.Spic            model line
  e3.Internal.Mos1.Mos1ModelLineParams)                     parameters for
                                                            MOS1

  [SpiceConstants](Modelica_Electrical_Spice3_In in\_C      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna            
  l.SpiceConstants)                                         

  Integer                                        in\_m      Type of MOS
                                                 \_typ      transistor
                                                 e          
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- --------------
  [MosModelLineVariables](Modelica_Electrical_Spice3_I out\ Output record
  nternal_Mos.html#Modelica.Electrical.Spice3.Internal _v   model line
  .Mos.MosModelLineVariables)                               variables
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function mos1ModelLineParamsInitEquations "Initial precalculation"

      input Mos1ModelLineParams in_p "Input record model line parameters for MOS1";
      input SpiceConstants in_C "Spice constants";
      input Integer in_m_type "Type of MOS transistor";

      output Mos.MosModelLineVariables out_v "Output record model line variables";

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

      vtnom  := in_p.m_tnom*SpiceConstants.CONSTKoverQ;
      egfet1 := 1.16 - (7.02e-4*in_p.m_tnom*in_p.m_tnom)/(in_p.m_tnom + 1108);

      if (not (in_p.m_oxideThicknessIsGiven > 0.5) or in_p.m_oxideThickness == 0) then
        if 
          (in_p.m_oxideThickness == 0) then
          out_v.m_oxideCapFactor := 0;
        end if;
      else
        out_v.m_oxideCapFactor := 3.9 * 8.854214871e-12 / in_p.m_oxideThickness;

        if (out_v.m_oxideCapFactor <> 0) then

          if (not (in_p.m_transconductanceIsGiven > 0.5)) then
            out_v.m_transconductance := in_p.m_surfaceMobility * out_v.m_oxideCapFactor * 1e-4; // (m**2/cm**2)
          end if;
          if (in_p.m_substrateDopingIsGiven > 0.5) then
            if (in_p.m_substrateDoping * 1e6 > 1.45e16) then // (cm**3/m**3)
              if (not (in_p.m_phiIsGiven > 0.5)) then
                out_v.m_phi := 2*vtnom*Modelica.Math.log(in_p.m_substrateDoping*1e6/1.45e16); // (cm**3/m**3)
                out_v.m_phi := max(0.1, out_v.m_phi);
              end if;
              fermis := in_m_type *0.5  * out_v.m_phi;
              wkfng  := 3.2;
              if (in_p.m_gateType <> 0) then
                fermig := in_m_type * in_p.m_gateType *0.5  * egfet1;
                wkfng  := 3.25 +0.5  * egfet1 - fermig;
              end if;
              wkfngs := wkfng - (3.25 +0.5  * egfet1 + fermis);
              if (not (in_p.m_gammaIsGiven > 0.5)) then
                out_v.m_gamma := sqrt(2 * 11.70 * 8.854214871e-12 * SpiceConstants.CHARGE *
                                 in_p.m_substrateDoping * 1e6 / out_v.m_oxideCapFactor);         // (cm**3/m**3)
              end if;
              if (not (in_p.m_vtOIsGiven > 0.5)) then
                vfb         := wkfngs - in_p.m_surfaceStateDensity * 1e4 * SpiceConstants.CHARGE / out_v.m_oxideCapFactor; // (cm**2/m**2)
                out_v.m_vt0 := vfb + in_m_type * (out_v.m_gamma * sqrt(out_v.m_phi) + out_v.m_phi);
               end if;
            end if;
          end if;
        end if;
      end if;

    end mos1ModelLineParamsInitEquations;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos1](Modelica_Electrical_Spice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1).drainCur
===========================================================================================================================================

**Drain current calculation**

Information
-----------

::

This function drainCur calculates the main currents that flows from
drain node to source node (level 1).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                           Name  Defa Description
                                                       ult  
  ---------------------------------------------- ----- ---- ----------------
  [Voltage](Modelica_SIunits.html#Modelica.SIuni vb         [V]
  ts.Voltage)                                               

  [Voltage](Modelica_SIunits.html#Modelica.SIuni vg         [V]
  ts.Voltage)                                               

  [Voltage](Modelica_SIunits.html#Modelica.SIuni vds        [V]
  ts.Voltage)                                               

  [Mos1Calc](Modelica_Electrical_Spice3_Internal in\_c      Input record
  _Mos1.html#Modelica.Electrical.Spice3.Internal            Mos1Calc
  .Mos1.Mos1Calc)                                           

  [Mos1ModelLineParams](Modelica_Electrical_Spic in\_p      Input record
  e3_Internal_Mos1.html#Modelica.Electrical.Spic            model line
  e3.Internal.Mos1.Mos1ModelLineParams)                     parameters for
                                                            MOS1

  [SpiceConstants](Modelica_Electrical_Spice3_In in\_C      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna            
  l.SpiceConstants)                                         

  [MosModelLineVariables](Modelica_Electrical_Sp in\_v      Input record
  ice3_Internal_Mos.html#Modelica.Electrical.Spi p          model line
  ce3.Internal.Mos.MosModelLineVariables)                   variables

  Integer                                        in\_m      Type of Mos
                                                 \_typ      transistor
                                                 e          
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [Mos1Calc](Modelica_Electrical_Spice3_Internal_Mos1.ht out\_ Output
  ml#Modelica.Electrical.Spice3.Internal.Mos1.Mos1Calc)  c     record
                                                               Mos1Calc
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function drainCur "Drain current calculation"

      input Modelica.SIunits.Voltage vb;
      input Modelica.SIunits.Voltage vg;
      input Modelica.SIunits.Voltage vds;

      input Mos1Calc in_c "Input record Mos1Calc";
      input Mos1ModelLineParams in_p "Input record model line parameters for MOS1";
      input SpiceConstants in_C "Spice constants";
      input Mos.MosModelLineVariables in_vp "Input record model line variables";
      input Integer in_m_type "Type of Mos transistor";

      output Mos1Calc out_c "Output record Mos1Calc";

    protected 
      Real arg;
      Real betap;
      Real sarg;
      Modelica.SIunits.Voltage vgst;

    algorithm 
      out_c := in_c;

       if (vb <= 0) then
          sarg := sqrt( out_c.m_tPhi - vb);
       else
          sarg := sqrt( out_c.m_tPhi);
          sarg := sarg - vb / (sarg + sarg);
          sarg := max( 0., sarg);
       end if;

       out_c.m_von   := (out_c.m_tVbi * in_m_type) + in_vp.m_gamma * sarg;
       vgst          := vg - out_c.m_von;
       out_c.m_vdsat := max( vgst, 0.);
       arg           := if (sarg <= 0) then 0 else in_vp.m_gamma / (sarg + sarg);

       if (vgst <= 0) then
          /* cutoff region */
          out_c.m_cdrain := 0;
          out_c.m_gm     := 0;
          out_c.m_gds    := 0;
          out_c.m_gmbs   := 0;

       else
          betap := out_c.m_Beta*(1 + in_p.m_lambda*vds);

          if (vgst <= vds) then
             /* saturation region */
             out_c.m_cdrain := betap * vgst * vgst * 0.5;
             out_c.m_gm     := betap * vgst;
             out_c.m_gds    := in_p.m_lambda * out_c.m_Beta * vgst * vgst * 0.5;
             out_c.m_gmbs   := out_c.m_gm * arg;
          else
             /* linear region */
             out_c.m_cdrain := betap * vds * (vgst - 0.5 * vds);
             out_c.m_gm     := betap * vds;
             out_c.m_gds    := betap * (vgst - vds) + in_p.m_lambda * out_c.m_Beta * vds * (vgst - 0.5  * vds);
             out_c.m_gmbs   := out_c.m_gm * arg;
          end if;
       end if;

    end drainCur;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos1](Modelica_Electrical_Spice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1).mos1RenameParameters
=======================================================================================================================================================

**Parameter renaming to internal names**

Information
-----------

::

This function mos1RenameParameters assigns the external (given by the
user, e.g., RD) technology parameters to the internal parameters (e.g.,
m\_drainResistance). It also does the analysis of the IsGiven values
(level 1).

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                           Nam Defa Description
                                                 e   ult  
  ---------------------------------------------- --- ---- ----------------
  [ModelcardMOS](Modelica_Electrical_Spice3_Inte ex       Modelcard with
  rnal.html#Modelica.Electrical.Spice3.Internal.          technologieparam
  ModelcardMOS)                                           eters

  [SpiceConstants](Modelica_Electrical_Spice3_In con      Spice constants
  ternal.html#Modelica.Electrical.Spice3.Interna          
  l.SpiceConstants)                                       
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  [MosModelLineParams](Modelica_Electrical_Spice3_Int inte Output record
  ernal_Mos.html#Modelica.Electrical.Spice3.Internal. rn   model line
  Mos.MosModelLineParams)                                  parameters
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function mos1RenameParameters "Parameter renaming to internal names"

      input ModelcardMOS ex "Modelcard with technologieparameters";
      input SpiceConstants con "Spice constants";

      output Mos.MosModelLineParams intern "Output record model line parameters";

    algorithm 
        intern.m_oxideCapFactor := 0;

        intern.m_vtOIsGiven := if          (ex.VTO > -1e40) then 1 else 0;
        intern.m_vt0 := if         (ex.VTO > -1e40) then ex.VTO else 0;

        intern.m_capBDIsGiven := if          (ex.CBD > -1e40) then 1 else 0;
        intern.m_capBD := if         (ex.CBD > -1e40) then ex.CBD else 0;

        intern.m_capBSIsGiven := if          (ex.CBS > -1e40) then 1 else 0;
        intern.m_capBS := if         (ex.CBS > -1e40) then ex.CBS else 0;

          intern.m_bulkCapFactorIsGiven := if          (ex.CJ > -1e40) then 1 else 0;
        intern.m_bulkCapFactor := if         (ex.CJ > -1e40) then ex.CJ else 0;

        intern.m_sideWallCapFactor := ex.CJSW 
        "F/m zero-bias junction sidewall cap. per meter of junction perimeter (default 0)";
        intern.m_fwdCapDepCoeff := ex.FC 
        "Coefficient for forward-bias depletion capacitance formula (default 0.5)";

        intern.m_phiIsGiven := if          (ex.PHI > -1e40) then 1 else 0;
        intern.m_phi := if         (ex.PHI > -1e40) then ex.PHI else 0.6;

         intern.m_gammaIsGiven := if          (ex.GAMMA > -1e40) then 1 else 0;
        intern.m_gamma := if         (ex.GAMMA > -1e40) then ex.GAMMA else 0;

        intern.m_lambda := ex.LAMBDA "1/V channel-length modulation (default 0)";

        intern.m_substrateDopingIsGiven := if          (ex.NSUB > -1e40) then 1 else 0;
        intern.m_substrateDoping := if         (ex.NSUB > -1e40) then ex.NSUB else 0;

        intern.m_gateType := ex.TPG 
        "Type of gate material: +1 opp. to substrate, -1 same as substrate, 0 Al gate (default 1)";
        intern.m_surfaceStateDensity := ex.NSS 
        "IN 1/(cm*cm) surface state density (default 0)";
        intern.m_surfaceMobility := ex.UO 
        "In (cm*cm)/(Vs) surface mobility (default 600)";
        intern.m_latDiff := ex.LD "In m lateral diffusion (default 0)";
        intern.m_jctSatCur := ex.IS 
        "A bulk junction saturation current (defaul 1e-14)";

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

        intern.m_tnom := if (ex.TNOM > -1e40) then ex.TNOM + SpiceConstants.CONSTCtoK else 300.15 
        "parameter measurement temperature (default 27 deg C)";

       intern.m_jctSatCurDensity := ex.JS 
        "A/(m*m) bulk junction saturation current per sq-meter of junction area (default 0)";
       intern.m_sheetResistance := ex.RSH 
        "Ohm drain and source diffusion sheet resistance (default 0)";
       intern.m_bulkJctPotential := ex.PB "V bulk junction potential (default 0.8)";
       intern.m_bulkJctBotGradingCoeff := ex.MJ 
        "bulk junction bottom grading coeff. (default 0.5)";
       intern.m_bulkJctSideGradingCoeff := ex.MJSW 
        "bulk junction sidewall grading coeff. (default 0.5)";

       intern.m_oxideThicknessIsGiven := if          (ex.TOX > -1e40) then 1 else 0;
        intern.m_oxideThickness := if         (ex.TOX > -1e40) then ex.TOX else 0;

       intern.m_gateSourceOverlapCapFactor := ex.CGSO 
        " F/m gate-source overlap capacitance per meter channel width (default 0)";
       intern.m_gateDrainOverlapCapFactor := ex.CGDO 
        "F/m gate-drain overlap capacitance per meter channel width (default 0)";
       intern.m_gateBulkOverlapCapFactor := ex.CGBO 
        "F/m gate-bulk overlap capacitance per meter channel width (default 0)";
       intern.m_fNcoef := ex.KF "Flicker-noise coefficient (default 0)";
       intern.m_fNexp := ex.AF "Flicker-noise exponent (default 1)";

    end mos1RenameParameters;

* * * * *

[Modelica.Electrical.Spice3.Internal.Mos1](Modelica_Electrical_Spice3_Internal_Mos1.html#Modelica.Electrical.Spice3.Internal.Mos1).mos1RenameParametersDev
==========================================================================================================================================================

**Device parameter renaming to internal names**

Information
-----------

::

This function mos1RenameParametersDev assigns the external (given by the
user) device parameters to the internal parameters. It also does the
analysis of the IsGiven values (level 1).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                  Nam Defa Description
                                        e   ult  
  ------------------------------------- --- ---- ---------------------------
  [ModelcardMOS](Modelica_Electrical_Sp ex       
  ice3_Internal.html#Modelica.Electrica          
  l.Spice3.Internal.ModelcardMOS)                

  Integer                               mty      
                                        pe       

  [Length](Modelica_SIunits.html#Modeli W        Channel Width [m]
  ca.SIunits.Length)                             

  [Length](Modelica_SIunits.html#Modeli L        Channel Length [m]
  ca.SIunits.Length)                             

  [Area](Modelica_SIunits.html#Modelica AD       Area of the drain diffusion
  .SIunits.Area)                                 [m2]

  [Area](Modelica_SIunits.html#Modelica AS       Area of the source
  .SIunits.Area)                                 diffusion [m2]

  [Length](Modelica_SIunits.html#Modeli PD       Perimeter of the drain
  ca.SIunits.Length)                             junction [m]

  [Length](Modelica_SIunits.html#Modeli PS       Perimeter of the source
  ca.SIunits.Length)                             junction [m]

  Real                                  NRD      Number of squares of the
                                                 drain diffusions

  Real                                  NRS      Number of squares of the
                                                 source diffusions

  Integer                               OFF      Optional initial condition:
                                                 0 - IC not used, 1 - IC
                                                 used, not implemented yet

  Real                                  IC       Initial condition values,
                                                 not implemented yet

  [Temp\_C](Modelica_SIunits.html#Model TEM      Temperature [degC]
  ica.SIunits.Temp_C)                   P        
  --------------------------------------------------------------------------

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

    function mos1RenameParametersDev 
      "Device parameter renaming to internal names"
      input ModelcardMOS ex;
      input Integer mtype;
      input Modelica.SIunits.Length W "Channel Width";
      input Modelica.SIunits.Length L "Channel Length";
      input Modelica.SIunits.Area AD "Area of the drain diffusion";
      input Modelica.SIunits.Area AS "Area of the source diffusion";
      input Modelica.SIunits.Length PD "Perimeter of the drain junction";
      input Modelica.SIunits.Length PS "Perimeter of the source junction";
      input Real NRD "Number of squares of the drain diffusions";
      input Real NRS "Number of squares of the source diffusions";
      input Integer OFF 
        "Optional initial condition: 0 - IC not used, 1 - IC used, not implemented yet";
      input Real IC "Initial condition values, not implemented yet";
      input Modelica.SIunits.Temp_C TEMP "Temperature";

      output Mosfet.Mosfet dev "Output record Mosfet";

    algorithm 
    /*device parameters*/
      dev.m_len := L "L, length of channel region";
      dev.m_width := W "W, width of channel region";
      dev.m_drainArea := AD "AD, area of drain diffusion";
      dev.m_sourceArea := AS "AS, area of source diffusion";
      dev.m_drainSquares := NRD "NRD, length of drain in squares";
      dev.m_sourceSquares := NRS "NRS, length of source in squares";
      dev.m_drainPerimiter := PD "PD, Drain perimeter";
      dev.m_sourcePerimiter := PS "PS, Source perimeter";

        dev.m_dICVDSIsGiven := if          (IC > -1e40) then 1 else 0 
        "ICVDS IsGivenValue";
        dev.m_dICVDS := if         (IC > -1e40) then IC else 0 
        "Initial condition of VDS";

        dev.m_dICVGSIsGiven := if          (IC > -1e40) then 1 else 0 
        "ICVGS IsGivenValue";
        dev.m_dICVGS := if         (IC > -1e40) then IC else 0 
        "Initial condition of VGS";

        dev.m_dICVBSIsGiven := if          (IC > -1e40) then 1 else 0 
        "ICVBS IsGivenValue";
        dev.m_dICVBS := if         (IC > -1e40) then IC else 0 
        "Initial condition of VBS";

      dev.m_off := OFF "Non-zero to indicate device is off for dc analysis";
      dev.m_bPMOS := mtype "P type MOSfet model";
      dev.m_nLevel := ex.LEVEL "Level";
      assert(ex.LEVEL== 1, "only MOS Level1 implemented");
      dev.m_dTemp :=TEMP + SpiceConstants.CONSTCtoK "Device temperature";

    end mos1RenameParametersDev;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:47 2010.
