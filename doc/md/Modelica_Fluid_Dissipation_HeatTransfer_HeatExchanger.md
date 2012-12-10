% Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger
% 
% 

[Modelica.Fluid.Dissipation.HeatTransfer](Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer).HeatExchanger
=============================================================================================================================================

Information
-----------

::

### Heat exchanger

#### Flat tube heat exchanger

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube)
.

#### Round tube heat exchanger

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube)
.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image8](Modelica.Fluid.Dissipation.HeatTransfer.HeatEx 
  changer.kc_flatTubeS.png)                                
  [kc\_flatTube](Modelica_Fluid_Dissipation_HeatTransfer_H 
  eatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfe 
  r.HeatExchanger.kc_flatTube)                             

  ![image9](Modelica.Fluid.Dissipation.HeatTransfer.HeatEx 
  changer.kc_flatTubeS.png)                                
  [kc\_flatTube\_KC](Modelica_Fluid_Dissipation_HeatTransf 
  er_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTra 
  nsfer.HeatExchanger.kc_flatTube_KC)                      

  ![image10](Modelica.Fluid.Dissipation.HeatTransfer.HeatE Input record
  xchanger.kc_flatTube_IN_conS.png)                        for function
  [kc\_flatTube\_IN\_con](Modelica_Fluid_Dissipation_HeatT kc\_flatTube
  ransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.He and
  atTransfer.HeatExchanger.kc_flatTube_IN_con)             kc\_flatTube\_K
                                                           C

  ![image11](Modelica.Fluid.Dissipation.HeatTransfer.HeatE Input record
  xchanger.kc_flatTube_IN_conS.png)                        for function
  [kc\_flatTube\_IN\_var](Modelica_Fluid_Dissipation_HeatT kc\_flatTube
  ransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.He and
  atTransfer.HeatExchanger.kc_flatTube_IN_var)             kc\_flatTube\_K
                                                           C

  ![image12](Modelica.Fluid.Dissipation.HeatTransfer.HeatE 
  xchanger.kc_roundTubeS.png)                              
  [kc\_roundTube](Modelica_Fluid_Dissipation_HeatTransfer_ 
  HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransf 
  er.HeatExchanger.kc_roundTube)                           

  ![image13](Modelica.Fluid.Dissipation.HeatTransfer.HeatE 
  xchanger.kc_roundTubeS.png)                              
  [kc\_roundTube\_KC](Modelica_Fluid_Dissipation_HeatTrans 
  fer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTr 
  ansfer.HeatExchanger.kc_roundTube_KC)                    

  ![image14](Modelica.Fluid.Dissipation.HeatTransfer.HeatE Input record
  xchanger.kc_roundTube_IN_conS.png)                       for function
  [kc\_roundTube\_IN\_con](Modelica_Fluid_Dissipation_Heat kc\_roundTube
  Transfer_HeatExchanger.html#Modelica.Fluid.Dissipation.H and
  eatTransfer.HeatExchanger.kc_roundTube_IN_con)           kc\_roundTube\_
                                                           KC

  ![image15](Modelica.Fluid.Dissipation.HeatTransfer.HeatE Input record
  xchanger.kc_roundTube_IN_conS.png)                       for function
  [kc\_roundTube\_IN\_var](Modelica_Fluid_Dissipation_Heat kc\_roundTube
  Transfer_HeatExchanger.html#Modelica.Fluid.Dissipation.H and
  eatTransfer.HeatExchanger.kc_roundTube_IN_var)           kc\_roundTube\_
                                                           KC
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_flatTube
======================================================================================================================================================================================

Information
-----------

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries. Note that additionally a failure status is
observed in this function to check if the intended boundary conditions
are fulfilled. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube)
.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Def Description
                                                      e   aul 
                                                          t   
  --------------------------------------------------- --- --- -------------
  Constant inputs                                             

  [kc\_flatTube\_IN\_con](Modelica_Fluid_Dissipation_ IN\     Input record
  HeatTransfer_HeatExchanger.html#Modelica.Fluid.Diss _co     for function
  ipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_c n       kc\_flatTube
  on)                                                         

  Variable inputs                                             

  [kc\_flatTube\_IN\_var](Modelica_Fluid_Dissipation_ IN\     Input record
  HeatTransfer_HeatExchanger.html#Modelica.Fluid.Diss _va     for function
  ipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_v r       kc\_flatTube
  ar)                                                         
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                               Name   Description
  ---------------------------------- ------ -------------------------------
  Output                                    

  [CoefficientOfHeatTransfer](Modeli kc     Convective heat transfer
  ca_SIunits.html#Modelica.SIunits.C        coefficient [W/(m2.K)]
  oefficientOfHeatTransfer)                 

  [PrandtlNumber](Modelica_SIunits.h Pr     Prandl number [1]
  tml#Modelica.SIunits.PrandtlNumber        
  )                                         

  [ReynoldsNumber](Modelica_SIunits. Re     Reynolds number [1]
  html#Modelica.SIunits.ReynoldsNumb        
  er)                                       

  [NusseltNumber](Modelica_SIunits.h Nu     Nusselt number [1]
  tml#Modelica.SIunits.NusseltNumber        
  )                                         

  Real                               failur 0== boundary conditions
                                     eStatu fulfilled | 1== failure \>\>
                                     s      check if still meaningfull
                                            results
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_flatTube

      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con
        IN_con "Input record for function kc_flatTube";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var
        IN_var "Input record for function kc_flatTube";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes;

      SI.Area A_c=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.F_l
           - IN_con.delta_f)*(IN_con.F_p - IN_con.delta_f)/((IN_con.F_l + IN_con.D_m)
          *IN_con.F_p)) else if IN_con.geometry == TYP.RectangularFin then IN_con.A_fr
          *(h*s/((h + t + IN_con.D_m)*(s + t))) else 0 
        "Minimum flow cross-sectional area";
      SI.Length h=if IN_con.geometry == TYP.RectangularFin then IN_con.D_h*(1 +
          IN_con.alpha)/(2*IN_con.alpha) else 0 "Free flow height";
      SI.Length l=if IN_con.geometry == TYP.RectangularFin then t/IN_con.delta else 
                0 "Fin length";
      SI.Length s=if IN_con.geometry == TYP.RectangularFin then h*IN_con.alpha else 
                0 "Lateral fin spacing (free flow width)";
      SI.Length t=if IN_con.geometry == TYP.RectangularFin then s*IN_con.gamma else 
                0 "Fin thickness";
    algorithm 
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC(IN_con,
        IN_var);
      Pr := abs(IN_var.eta*IN_var.cp/IN_var.lambda);

      if IN_con.geometry == TYP.LouverFin then
        Re := max(1e-3, abs(IN_var.m_flow)*IN_con.L_p/(IN_var.eta*A_c));
        Nu := max(1e-3, kc*IN_con.L_p/IN_var.lambda);
      elseif IN_con.geometry == TYP.RectangularFin then
        Re := max(1e-3, abs(IN_var.m_flow)*IN_con.D_h/(IN_var.eta*A_c));
        Nu := max(1e-3, kc*IN_con.D_h/IN_var.lambda);
      end if;

      failureStatus := if IN_con.geometry == TYP.LouverFin then if Re < 100 or Re
         > 3000 then 1 else 0 else if IN_con.geometry == TYP.RectangularFin then 
        if Re < 300 or Re > 5000 then 1 else 0 else 0;

    end kc_flatTube;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_flatTube\_KC
==========================================================================================================================================================================================

Information
-----------

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube)
.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- --------------
  Constant inputs                                            

  [kc\_flatTube\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _HeatTransfer_HeatExchanger.html#Modelica.Fluid.Di _co     for function
  ssipation.HeatTransfer.HeatExchanger.kc_flatTube_I n       kc\_flatTube\_
  N_con)                                                     KC

  Variable inputs                                            

  [kc\_flatTube\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _HeatTransfer_HeatExchanger.html#Modelica.Fluid.Di _va     for function
  ssipation.HeatTransfer.HeatExchanger.kc_flatTube_I r       kc\_flatTube\_
  N_var)                                                     KC
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                       Nam Description
                                             e   
  ------------------------------------------ --- -------------------------
  [CoefficientOfHeatTransfer](Modelica_SIuni kc  Output for function
  ts.html#Modelica.SIunits.CoefficientOfHeat     kc\_flatTubePlateFin\_KC
  Transfer)                                      [W/(m2.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_flatTube_KC
      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      // import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con
        IN_con "Input record for function kc_flatTube_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var
        IN_var "Input record for function kc_flatTube_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc 
        "Output for function kc_flatTubePlateFin_KC";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes;

      Real MIN=Modelica.Constants.eps;
      Real Phi=IN_con.Phi*180/PI "Louver angle";

      SI.ReynoldsNumber Re_Dh=max(1e-3, abs(IN_var.m_flow)*IN_con.D_h/(IN_var.eta*
          A_c)) "Reynolds number based on hydraulic diameter";
      SI.ReynoldsNumber Re_Lp=max(1e-3, abs(IN_var.m_flow)*IN_con.L_p/(IN_var.eta*
          A_c)) "Reynolds number based on louver pitch";
      SI.PrandtlNumber Pr=IN_var.eta*IN_var.cp/IN_var.lambda "Prandtl number";
      Real j "Colburn j faktor";

      SI.Area A_c=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.F_l
           - IN_con.delta_f)*(IN_con.F_p - IN_con.delta_f)/((IN_con.F_l + IN_con.D_m)
          *IN_con.F_p)) else if IN_con.geometry == TYP.RectangularFin then IN_con.A_fr
          *(h*s/((h + t + IN_con.D_m)*(s + t))) else 0 
        "Minimum flow cross-sectional area";
      SI.Length h=if IN_con.geometry == TYP.RectangularFin then IN_con.D_h*(1 +
          IN_con.alpha)/(2*IN_con.alpha) else 0 "Free flow height";
      SI.Length l=if IN_con.geometry == TYP.RectangularFin then t/IN_con.delta else 
                0 "Fin length";
      SI.Length s=if IN_con.geometry == TYP.RectangularFin then h*IN_con.alpha else 
                0 "Lateral fin spacing (free flow width)";
      SI.Length t=if IN_con.geometry == TYP.RectangularFin then s*IN_con.gamma else 
                0 "Fin thickness";

    algorithm 
      if IN_con.geometry == TYP.LouverFin then
        j := Re_Lp^(-0.49)*(Phi/90)^0.27*(IN_con.F_p/IN_con.L_p)^(-0.14)*(IN_con.F_l
          /IN_con.L_p)^(-0.29)*(IN_con.T_d/IN_con.L_p)^(-0.23)*(IN_con.L_l/IN_con.L_p)
          ^0.68*(IN_con.T_p/IN_con.L_p)^(-0.28)*(IN_con.delta_f/IN_con.L_p)^(-0.05);
        kc := j*(Re_Lp*Pr^(1/3)*IN_var.lambda/IN_con.L_p);

      elseif IN_con.geometry == TYP.RectangularFin then
        j := 0.6522*Re_Dh^(-0.5403)*(s/h)^(-0.1541)*(t/l)^0.1499*(t/s)^(-0.0678)*(1
           + 5.269e-5*Re_Dh^1.340*(s/h)^0.504*(t/l)^0.456*(t/s)^(-1.055))^0.1;
        kc := j*(Re_Dh*Pr^(1/3)*IN_var.lambda/IN_con.D_h);

      else

      end if;

    end kc_flatTube_KC;

* * * * *

![image16](Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_flatTube\_IN\_con
=========================================================================================================================================================================================================================================================================================

**Input record for function kc\_flatTube and kc\_flatTube\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_flatTube](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube)
and
[kc\_flatTube\_KC](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                       Nam Default    Description
                                             e              
  ------------------------------------------ --- ---------- --------------
  HeatExchanger                                             

  [HTXGeometry\_flatTubes](Modelica_Fluid_Di geo Dissipatio Choice of fin
  ssipation_Utilities_Types.html#Modelica.Fl met n.Utilitie geometry
  uid.Dissipation.Utilities.Types.HTXGeometr ry  s.Types... 
  y_flatTubes)                                   .          

  [Area](Modelica_SIunits.html#Modelica.SIun A\_ 0          Frontal area
  its.Area)                                  fr             [m2]

  [Length](Modelica_SIunits.html#Modelica.SI D\_ 0          Hydraulic
  units.Length)                              h              diameter [m]

  [Length](Modelica_SIunits.html#Modelica.SI D\_ 0          Major tube
  units.Length)                              m              diameter for
                                                            flat tube [m]

  [Length](Modelica_SIunits.html#Modelica.SI F\_ 0          Fin length [m]
  units.Length)                              l              

  [Length](Modelica_SIunits.html#Modelica.SI F\_ 0          Fin pitch, fin
  units.Length)                              p              spacing + fin
                                                            thickness [m]

  [Length](Modelica_SIunits.html#Modelica.SI L\_ 0          Louver length
  units.Length)                              l              [m]

  [Length](Modelica_SIunits.html#Modelica.SI L\_ 0          Louver pitch
  units.Length)                              p              [m]

  [Length](Modelica_SIunits.html#Modelica.SI T\_ 0          Tube depth [m]
  units.Length)                              d              

  [Length](Modelica_SIunits.html#Modelica.SI T\_ 0          Tube pitch [m]
  units.Length)                              p              

  Real                                       alp 0          Lateral fin
                                             ha             spacing (s) /
                                                            free flow
                                                            height (h)

  Real                                       gam 0          Fin thickness
                                             ma             (t) / lateral
                                                            fin spacing
                                                            (s)

  Real                                       del 0          Fin thickness
                                             ta             (t) / Fin
                                                            length (l)

  [Length](Modelica_SIunits.html#Modelica.SI del 0          Fin thickness
  units.Length)                              ta\            [m]
                                             _f             

  [Angle](Modelica_SIunits.html#Modelica.SIu Phi 0          Louver angle
  nits.Angle)                                               [rad]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_flatTube_IN_con 
      "Input record for function kc_flatTube and kc_flatTube_KC"
      extends Modelica.Icons.Record;

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes;

    public 
      Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes
        geometry =                                                              Dissipation.Utilities.Types.HTXGeometry_flatTubes.LouverFin 
        "Choice of fin geometry";

      SI.Area A_fr=0 "Frontal area";
      SI.Length D_h=0 "Hydraulic diameter";
      SI.Length D_m=0 "Major tube diameter for flat tube";
      SI.Length F_l=0 "Fin length";
      SI.Length F_p=0 "Fin pitch, fin spacing + fin thickness";
      SI.Length L_l=0 "Louver length";
      SI.Length L_p=0 "Louver pitch";
      SI.Length T_d=0 "Tube depth";
      SI.Length T_p=0 "Tube pitch";

      Real alpha=0 "Lateral fin spacing (s) / free flow height (h)";
      Real gamma=0 "Fin thickness (t) / lateral fin spacing (s)";
      Real delta=0 "Fin thickness (t) / Fin length (l)";
      SI.Length delta_f=0 "Fin thickness";
      SI.Angle Phi=0 "Louver angle";


    end kc_flatTube_IN_con;

* * * * *

![image17](Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_flatTube\_IN\_var
=========================================================================================================================================================================================================================================================================================

**Input record for function kc\_flatTube and kc\_flatTube\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_flatTube](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube)
and
[kc\_flatTube\_KC](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records),
[Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties)
(Base record for fluid properties).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                      Nam Def Description
                                            e   aul 
                                                t   
  ----------------------------------------- --- --- ----------------------
  Fluid properties                                  

  [SpecificHeatCapacityAtConstantPressure]( cp      Specific heat capacity
  Modelica_SIunits.html#Modelica.SIunits.Sp         of fluid at constant
  ecificHeatCapacityAtConstantPressure)             pressure [J/(kg.K)]

  [DynamicViscosity](Modelica_SIunits.html# eta     Dynamic viscosity of
  Modelica.SIunits.DynamicViscosity)                fluid [Pa.s]

  [ThermalConductivity](Modelica_SIunits.ht lam     Thermal conductivity
  ml#Modelica.SIunits.ThermalConductivity)  bda     of fluid [W/(m.K)]

  [Density](Modelica_SIunits.html#Modelica. rho     Density of fluid
  SIunits.Density)                                  [kg/m3]

  Input                                             

  [MassFlowRate](Modelica_SIunits.html#Mode m\_     [kg/s]
  lica.SIunits.MassFlowRate)                flo     
                                            w       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_flatTube_IN_var 
      "Input record for function kc_flatTube and kc_flatTube_KC"
      extends Modelica.Icons.Record;

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;


    end kc_flatTube_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_roundTube
=======================================================================================================================================================================================

Information
-----------

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries. Note that additionally a failure status is
observed in this function to check if the intended boundary conditions
are fulfilled. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- -------------
  Constant inputs                                            

  [kc\_roundTube\_IN\_con](Modelica_Fluid_Dissipatio IN\     Input record
  n_HeatTransfer_HeatExchanger.html#Modelica.Fluid.D _co     for function
  issipation.HeatTransfer.HeatExchanger.kc_roundTube n       kc\_roundTube
  _IN_con)                                                   

  Variable inputs                                            

  [kc\_roundTube\_IN\_var](Modelica_Fluid_Dissipatio IN\     Input record
  n_HeatTransfer_HeatExchanger.html#Modelica.Fluid.D _va     for function
  issipation.HeatTransfer.HeatExchanger.kc_roundTube r       kc\_roundTube
  _IN_var)                                                   
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                               Name   Description
  ---------------------------------- ------ -------------------------------
  Output                                    

  [CoefficientOfHeatTransfer](Modeli kc     Convective heat transfer
  ca_SIunits.html#Modelica.SIunits.C        coefficient [W/(m2.K)]
  oefficientOfHeatTransfer)                 

  [PrandtlNumber](Modelica_SIunits.h Pr     Prandl number [1]
  tml#Modelica.SIunits.PrandtlNumber        
  )                                         

  [ReynoldsNumber](Modelica_SIunits. Re     Reynolds number [1]
  html#Modelica.SIunits.ReynoldsNumb        
  er)                                       

  [NusseltNumber](Modelica_SIunits.h Nu     Nusselt number [1]
  tml#Modelica.SIunits.NusseltNumber        
  )                                         

  Real                               failur 0== boundary conditions
                                     eStatu fulfilled | 1== failure \>\>
                                     s      check if still meaningfull
                                            results
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_roundTube
      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con
        IN_con "Input record for function kc_roundTube";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var
        IN_var "Input record for function kc_roundTube";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes;

      SI.Area A_c=IN_con.A_fr*((IN_con.F_p*IN_con.P_t - IN_con.F_p*IN_con.D_c - (
          IN_con.P_t - IN_con.D_c)*IN_con.delta_f)/(IN_con.F_p*IN_con.P_t)) 
        "Minimum flow cross-sectional area";
      SI.Area A_tot=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.N
          *PI*IN_con.D_c*(IN_con.F_p - IN_con.delta_f) + 2*(IN_con.P_t*IN_con.L -
          IN_con.N*PI*IN_con.D_c^2/4))/(IN_con.P_t*IN_con.F_p)) else 0 
        "Total heat transfer area";
      SI.Length D_h=if IN_con.geometry == TYP.LouverFin then 4*A_c*IN_con.L/A_tot else 
                0 "Hydraulic diameter";

      /*SI.Length D_h=
        if IN_con.geometry==2 then
          4*A_c/(IN_con.A_fr*(2*(IN_con.P_t-IN_con.D_c+IN_con.F_p)/(IN_con.F_p*(IN_con.P_t-IN_con.D_c)))) else
          0 "Hydraulic diameter";*/

    algorithm 
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC(IN_con,
        IN_var);
      Pr := abs(IN_var.eta*IN_var.cp/IN_var.lambda);

      if IN_con.geometry == TYP.PlainFin or IN_con.geometry == TYP.LouverFin or 
          IN_con.geometry == TYP.SlitFin or IN_con.geometry == TYP.WavyFin then
        Re := max(1e-3, abs(IN_var.m_flow)*IN_con.D_c/(IN_var.eta*A_c));
        Nu := max(1e-3, kc*IN_con.D_c/IN_var.lambda);
      end if;

      failureStatus := if IN_con.geometry == TYP.PlainFin then if Re < 300 or Re >
        8000 then 1 else 0 else if IN_con.geometry == TYP.LouverFin then if Re <
        300 or Re > 7000 then 1 else 0 else if IN_con.geometry == TYP.SlitFin then 
        if Re < 400 or Re > 7000 then 1 else 0 else if IN_con.geometry == TYP.WavyFin then 
              if Re < 350 or Re > 7000 then 1 else 0 else 0;

    end kc_roundTube;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_roundTube\_KC
===========================================================================================================================================================================================

Information
-----------

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries.[See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube)
.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- --------------
  Constant inputs                                            

  [kc\_roundTube\_IN\_con](Modelica_Fluid_Dissipatio IN\     Input record
  n_HeatTransfer_HeatExchanger.html#Modelica.Fluid.D _co     for function
  issipation.HeatTransfer.HeatExchanger.kc_roundTube n       kc\_roundTube\
  _IN_con)                                                   _KC

  Variable inputs                                            

  [kc\_roundTube\_IN\_var](Modelica_Fluid_Dissipatio IN\     Input record
  n_HeatTransfer_HeatExchanger.html#Modelica.Fluid.D _va     for function
  issipation.HeatTransfer.HeatExchanger.kc_roundTube r       kc\_roundTube\
  _IN_var)                                                   _KC
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name Description
  -------------------------------------------- ---- -----------------------
  [CoefficientOfHeatTransfer](Modelica_SIunits kc   Output for function
  .html#Modelica.SIunits.CoefficientOfHeatTran      kc\_roundTube\_KC
  sfer)                                             [W/(m2.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_roundTube_KC
      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con
        IN_con "Input record for function kc_roundTube_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var
        IN_var "Input record for function kc_roundTube_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_roundTube_KC";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes;

      Real MIN=Modelica.Constants.eps;

      SI.ReynoldsNumber Re_Dc=max(1e-3, abs(IN_var.m_flow)*IN_con.D_c/(IN_var.eta*
          A_c)) "Reynolds number based on fin collar diameter";
      SI.PrandtlNumber Pr=IN_var.eta*IN_var.cp/IN_var.lambda "Prandtl number";
      Real j "Colburn j faktor";

      SI.Area A_c=IN_con.A_fr*((IN_con.F_p*IN_con.P_t - IN_con.F_p*IN_con.D_c - (
          IN_con.P_t - IN_con.D_c)*IN_con.delta_f)/(IN_con.F_p*IN_con.P_t)) 
        "Minimum flow cross-sectional area";
      SI.Area A_tot=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.N
          *PI*IN_con.D_c*(IN_con.F_p - IN_con.delta_f) + 2*(IN_con.P_t*IN_con.L -
          IN_con.N*PI*IN_con.D_c^2/4))/(IN_con.P_t*IN_con.F_p)) else 0 
        "Total heat transfer area";
      SI.Length D_h=if IN_con.geometry == TYP.LouverFin then 4*A_c*IN_con.L/A_tot else 
                0 "Hydraulic diameter";

      /*SI.Length D_h=
        if IN_con.geometry==2 then
          4*A_c/(IN_con.A_fr*(2*(IN_con.P_t-IN_con.D_c+IN_con.F_p-IN_con.delta_f)/(IN_con.F_p*IN_con.P_t))) else
          0 "Hydraulic diameter";*/

      Real J1=0 "Exponent for computation of Colburn j faktor";
      Real J2=0 "Exponent for computation of Colburn j faktor";
      Real J3=0 "Exponent for computation of Colburn j faktor";
      Real J4=0 "Exponent for computation of Colburn j faktor";
      Real J5=0 "Exponent for computation of Colburn j faktor";
      Real J6=0 "Exponent for computation of Colburn j faktor";
      Real J7=0 "Exponent for computation of Colburn j faktor";
      Real J8=0 "Exponent for computation of Colburn j faktor";

    algorithm 
      if IN_con.geometry == TYP.PlainFin then
        j := 0.991*(2.24*Re_Dc^(-0.092)*(IN_con.N/4)^(-0.031))^(0.607*(4 - IN_con.N))
          *(0.14*Re_Dc^(-0.328)*(IN_con.P_t/IN_con.P_l)^(-0.502)*(IN_con.F_p/IN_con.D_c)
          ^(0.0312))*(2.55*(IN_con.P_l/IN_con.D_c)^(-1.28));
        kc := j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);

      elseif IN_con.geometry == TYP.LouverFin then
        if Re_Dc < 900 then
          J1 := -0.991 - 0.1055*(IN_con.P_l/IN_con.P_t)^3.1*log(IN_con.L_h/IN_con.L_p);
          J2 := -0.7344 + 2.1059*IN_con.N^0.55/(log(Re_Dc) - 3.2);
          J3 := 0.08485*(IN_con.P_l/IN_con.P_t)^(-4.4)*IN_con.N^(-0.68);
          J4 := -0.1741*log(IN_con.N);
          j := 14.3117*Re_Dc^J1*(IN_con.F_p/IN_con.D_c)^J2*(IN_con.L_h/IN_con.L_p)^
            J3*(IN_con.F_p/IN_con.P_l)^J4*(IN_con.P_l/IN_con.P_t)^(-1.724);
        elseif Re_Dc > 1100 then
          J5 := -0.6027 + 0.02593*(IN_con.P_l/D_h)^0.52*IN_con.N^(-0.5)*log(IN_con.L_h
            /IN_con.L_p);
          J6 := -0.4776 + 0.40774*IN_con.N^0.7/(log(Re_Dc) - 4.4);
          J7 := -0.58655*(IN_con.F_p/D_h)^2.3*(IN_con.P_l/IN_con.P_t)^(-1.6)*IN_con.N
            ^(-0.65);
          J8 := 0.0814*(log(Re_Dc) - 3);
          j := 1.1373*Re_Dc^J5*(IN_con.F_p/IN_con.P_l)^J6*(IN_con.L_h/IN_con.L_p)^
            J7*(IN_con.P_l/IN_con.P_t)^J8*IN_con.N^0.3545;
        else
          J1 := -0.991 - 0.1055*(IN_con.P_l/IN_con.P_t)^3.1*log(IN_con.L_h/IN_con.L_p);
          J2 := -0.7344 + 2.1059*IN_con.N^0.55/(log(Re_Dc) - 3.2);
          J3 := 0.08485*(IN_con.P_l/IN_con.P_t)^(-4.4)*IN_con.N^(-0.68);
          J4 := -0.1741*log(IN_con.N);
          J5 := -0.6027 + 0.02593*(IN_con.P_l/D_h)^0.52*IN_con.N^(-0.5)*log(IN_con.L_h
            /IN_con.L_p);
          J6 := -0.4776 + 0.40774*IN_con.N^0.7/(log(Re_Dc) - 4.4);
          J7 := -0.58655*(IN_con.F_p/D_h)^2.3*(IN_con.P_l/IN_con.P_t)^(-1.6)*IN_con.N
            ^(-0.65);
          J8 := 0.0814*(log(Re_Dc) - 3);
          j := SMOOTH(
            900,
            1100,
            Re_Dc)*(14.3117*Re_Dc^J1*(IN_con.F_p/IN_con.D_c)^J2*(IN_con.L_h/IN_con.L_p)
            ^J3*(IN_con.F_p/IN_con.P_l)^J4*(IN_con.P_l/IN_con.P_t)^(-1.724)) +
            SMOOTH(
            1100,
            900,
            Re_Dc)*(1.1373*Re_Dc^J5*(IN_con.F_p/IN_con.P_l)^J6*(IN_con.L_h/IN_con.L_p)
            ^J7*(IN_con.P_l/IN_con.P_t)^J8*IN_con.N^0.3545);
        end if;
        kc := SMOOTH(
          100,
          0,
          Re_Dc)*j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);

      elseif IN_con.geometry == TYP.SlitFin then
        J1 := -0.674 + 0.1316*IN_con.N/log(Re_Dc) - 0.3769*IN_con.F_p/IN_con.D_c -
          1.8857*IN_con.N/Re_Dc;
        J2 := -0.0178 + 0.996*IN_con.N/log(Re_Dc) + 26.7*IN_con.N/Re_Dc;
        J3 := 1.865 + 1244.03*IN_con.F_p/(Re_Dc*IN_con.D_c) - 14.37/log(Re_Dc);
        j := 1.6409*Re_Dc^J1*(IN_con.S_p/IN_con.S_h)^1.16*(IN_con.P_t/IN_con.P_l)^
          1.37*(IN_con.F_p/IN_con.D_c)^J2*IN_con.N^J3;
        kc := j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);

      elseif IN_con.geometry == TYP.WavyFin then
        if Re_Dc < exp(2.921) then
          j := 1.201/(log(exp(2.921)^(A_c/IN_con.A_fr)))^2.921;
          kc := j*(exp(2.921)*Pr^(1/3)*IN_var.lambda/IN_con.D_c);
        else
          j := 1.201/((log(Re_Dc^(A_c/IN_con.A_fr)))^2.921);
          kc := j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);
        end if;

      else

      end if;

    end kc_roundTube_KC;

* * * * *

![image18](Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_roundTube\_IN\_con
===========================================================================================================================================================================================================================================================================================

**Input record for function kc\_roundTube and kc\_roundTube\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_roundTube](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube)
and
[kc\_roundTube\_KC](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                        Nam Default    Description
                                              e              
  ------------------------------------------- --- ---------- -------------
  HeatExchanger                                              

  [HTXGeometry\_roundTubes](Modelica_Fluid_Di geo Dissipatio Choice of fin
  ssipation_Utilities_Types.html#Modelica.Flu met n.Utilitie geometry
  id.Dissipation.Utilities.Types.HTXGeometry_ ry  s.Types... 
  roundTubes)                                     .          

  [Area](Modelica_SIunits.html#Modelica.SIuni A\_ 0          Frontal area
  ts.Area)                                    fr             [m2]

  [Length](Modelica_SIunits.html#Modelica.SIu D\_ 0          Fin collar
  nits.Length)                                c              diameter [m]

  [Length](Modelica_SIunits.html#Modelica.SIu F\_ 0          Fin pitch,
  nits.Length)                                p              fin spacing +
                                                             fin thickness
                                                             [m]

  [Length](Modelica_SIunits.html#Modelica.SIu L   0          Heat
  nits.Length)                                               exchanger
                                                             length [m]

  [Length](Modelica_SIunits.html#Modelica.SIu L\_ 0          Louver height
  nits.Length)                                h              [m]

  [Length](Modelica_SIunits.html#Modelica.SIu L\_ 0          Louver pitch
  nits.Length)                                p              [m]

  Integer                                     N   0          Number of
                                                             tube rows

  [Length](Modelica_SIunits.html#Modelica.SIu P\_ 0          Pattern depth
  nits.Length)                                d              of wavy fin,
                                                             wave height
                                                             [m]

  [Length](Modelica_SIunits.html#Modelica.SIu P\_ 0          Longitudinal
  nits.Length)                                l              tube pitch
                                                             [m]

  [Length](Modelica_SIunits.html#Modelica.SIu P\_ 0          Transverse
  nits.Length)                                t              tube pitch
                                                             [m]

  [Length](Modelica_SIunits.html#Modelica.SIu S\_ 0          Slit height
  nits.Length)                                h              [m]

  [Length](Modelica_SIunits.html#Modelica.SIu S\_ 0          Slit pitch
  nits.Length)                                p              [m]

  [Length](Modelica_SIunits.html#Modelica.SIu X\_ 0          Half wave
  nits.Length)                                f              length of
                                                             wavy fin [m]

  [Length](Modelica_SIunits.html#Modelica.SIu del 0          Fin thickness
  nits.Length)                                ta\            [m]
                                              _f             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_roundTube_IN_con 
      "Input record for function kc_roundTube and kc_roundTube_KC"
      extends Modelica.Icons.Record;

      Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes
        geometry =                                                               Dissipation.Utilities.Types.HTXGeometry_roundTubes.PlainFin 
        "Choice of fin geometry";

      SI.Area A_fr=0 "Frontal area";
      SI.Length D_c=0 "Fin collar diameter";
      SI.Length F_p=0 "Fin pitch, fin spacing + fin thickness";
      SI.Length L=0 "Heat exchanger length";
      SI.Length L_h=0 "Louver height";
      SI.Length L_p=0 "Louver pitch";
      Integer N=0 "Number of tube rows";
      SI.Length P_d=0 "Pattern depth of wavy fin, wave height";
      SI.Length P_l=0 "Longitudinal tube pitch";
      SI.Length P_t=0 "Transverse tube pitch";
      SI.Length S_h=0 "Slit height";
      SI.Length S_p=0 "Slit pitch";
      SI.Length X_f=0 "Half wave length of wavy fin";

      SI.Length delta_f=0 "Fin thickness";


    end kc_roundTube_IN_con;

* * * * *

![image19](Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger).kc\_roundTube\_IN\_var
===========================================================================================================================================================================================================================================================================================

**Input record for function kc\_roundTube and kc\_roundTube\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_roundTube](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube)
and
[kc\_roundTube\_KC](Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records),
[Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties)
(Base record for fluid properties).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                      Nam Def Description
                                            e   aul 
                                                t   
  ----------------------------------------- --- --- ----------------------
  Fluid properties                                  

  [SpecificHeatCapacityAtConstantPressure]( cp      Specific heat capacity
  Modelica_SIunits.html#Modelica.SIunits.Sp         of fluid at constant
  ecificHeatCapacityAtConstantPressure)             pressure [J/(kg.K)]

  [DynamicViscosity](Modelica_SIunits.html# eta     Dynamic viscosity of
  Modelica.SIunits.DynamicViscosity)                fluid [Pa.s]

  [ThermalConductivity](Modelica_SIunits.ht lam     Thermal conductivity
  ml#Modelica.SIunits.ThermalConductivity)  bda     of fluid [W/(m.K)]

  [Density](Modelica_SIunits.html#Modelica. rho     Density of fluid
  SIunits.Density)                                  [kg/m3]

  Input                                             

  [MassFlowRate](Modelica_SIunits.html#Mode m\_     [kg/s]
  lica.SIunits.MassFlowRate)                flo     
                                            w       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_roundTube_IN_var 
      "Input record for function kc_roundTube and kc_roundTube_KC"
      extends Modelica.Icons.Record;

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;


    end kc_roundTube_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:20 2010.
