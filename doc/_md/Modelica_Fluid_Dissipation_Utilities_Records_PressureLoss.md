% Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss
% 
% 

[Modelica.Fluid.Dissipation.Utilities.Records](Modelica_Fluid_Dissipation_Utilities_Records.html#Modelica.Fluid.Dissipation.Utilities.Records).PressureLoss
===========================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image9](Modelica.Fluid.Dissipation.Utilities.Records.Gene Input for
  ral.PressureLossS.png)                                      bend
  [Bend](Modelica_Fluid_Dissipation_Utilities_Records_Pressur 
  eLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.Pre 
  ssureLoss.Bend)                                             

  ![image10](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     several
  [Geometry](Modelica_Fluid_Dissipation_Utilities_Records_Pre geometries
  ssureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records of internal
  .PressureLoss.Geometry)                                     flow

  ![image11](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     orifice
  [Orifice](Modelica_Fluid_Dissipation_Utilities_Records_Pres 
  sureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records. 
  PressureLoss.Orifice)                                       

  ![image12](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     pressure
  [PressureLossInput](Modelica_Fluid_Dissipation_Utilities_Re loss
  cords_PressureLoss.html#Modelica.Fluid.Dissipation.Utilitie calculation
  s.Records.PressureLoss.PressureLossInput)                   

  ![image13](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     straight
  [StraightPipe](Modelica_Fluid_Dissipation_Utilities_Records pipe
  _PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Rec 
  ords.PressureLoss.StraightPipe)                             

  ![image14](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     T-junction
  [Tjunction](Modelica_Fluid_Dissipation_Utilities_Records_Pr 
  essureLoss.html#Modelica.Fluid.Dissipation.Utilities.Record 
  s.PressureLoss.Tjunction)                                   

  ![image15](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     diffuser
  [Diffuser](Modelica_Fluid_Dissipation_Utilities_Records_Pre 
  ssureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records 
  .PressureLoss.Diffuser)                                     

  ![image16](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     bend
  [EdgedBend](Modelica_Fluid_Dissipation_Utilities_Records_Pr 
  essureLoss.html#Modelica.Fluid.Dissipation.Utilities.Record 
  s.PressureLoss.EdgedBend)                                   

  ![image17](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     sudden
  [SuddenChange](Modelica_Fluid_Dissipation_Utilities_Records change of
  _PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Rec diameter
  ords.PressureLoss.SuddenChange)                             
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).Bend
==========================================================================================================================================================================================================================================================================

**Input for bend**

Information
-----------

Extends from
[EdgedBend](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend)
(Input for bend).

Parameters
----------

  ------------------------------------------------------------------------
  Type                          Name Default Description
  ----------------------------- ---- ------- -----------------------------
  Bend                                       

  [Diameter](Modelica_SIunits.h d\_h 0.1     Hydraulic diameter [m]
  tml#Modelica.SIunits.Diameter yd           
  )                                          

  [Angle](Modelica_SIunits.html delt 90\*PI/ Angle of turning [rad]
  #Modelica.SIunits.Angle)      a    180     

  [Length](Modelica_SIunits.htm K    0       Roughness (absolute average
  l#Modelica.SIunits.Length)                 height of surface asperities)
                                             [m]

  [Radius](Modelica_SIunits.htm R\_0 0.5\*d\ Curvature radius [m]
  l#Modelica.SIunits.Radius)         _hyd    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record Bend "Input for bend"
      extends EdgedBend;
      SI.Radius R_0=0.5*d_hyd "Curvature radius";

    end Bend;

* * * * *

![image19](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).Geometry
==============================================================================================================================================================================================================================================================================

**Input for several geometries of internal flow**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Nam Default    Description
                                            e              
  ----------------------------------------- --- ---------- ----------------
  Channel                                                  

  [GeometryOfInternalFlow](Modelica_Fluid_D geo Modelica.F Choice of
  issipation_Utilities_Types.html#Modelica. met luid.Dissi geometry for
  Fluid.Dissipation.Utilities.Types.Geometr ry  pation.U.. internal flow
  yOfInternalFlow)                              .          

  [Length](Modelica_SIunits.html#Modelica.S K   0          Roughness
  Iunits.Length)                                           (average height
                                                           of surface
                                                           asperities) [m]

  [Length](Modelica_SIunits.html#Modelica.S L   1          Length [m]
  Iunits.Length)                                           

  Annular cross sectional area                             

  [Diameter](Modelica_SIunits.html#Modelica d\_ d\_cir     Small diameter
  .SIunits.Diameter)                        ann            [m]

  [Diameter](Modelica_SIunits.html#Modelica D\_ 2\*d\_ann  Large diameter
  .SIunits.Diameter)                        ann            [m]

  Circular cross sectional area                            

  [Diameter](Modelica_SIunits.html#Modelica d\_ 0.1        Internal
  .SIunits.Diameter)                        cir            diameter [m]

  Elliptical cross sectional area                          

  [Length](Modelica_SIunits.html#Modelica.S a\_ (3/4)\*d\_ Half length of
  Iunits.Length)                            ell cir        long base line
                                                           [m]

  [Length](Modelica_SIunits.html#Modelica.S b\_ 0.5\*a\_el Half length of
  Iunits.Length)                            ell l          short base line
                                                           [m]

  Rectangular cross sectional area                         

  [Length](Modelica_SIunits.html#Modelica.S a\_ d\_cir     Horizontal
  Iunits.Length)                            rec            length [m]

  [Length](Modelica_SIunits.html#Modelica.S b\_ a\_rec     Vertical length
  Iunits.Length)                            rec            [m]

  [Length](Modelica_SIunits.html#Modelica.S a\_ d\_cir\*(1 Length of base
  Iunits.Length)                            tri + 2\^0.5)  line [m]

  Triangle cross sectional area                            

  [Length](Modelica_SIunits.html#Modelica.S h\_ 0.5\*a\_tr Heigth to top
  Iunits.Length)                            tri i          angle
                                                           perpendicular to
                                                           base line [m]

  [Angle](Modelica_SIunits.html#Modelica.SI bet 90\*PI/180 Top angle [rad]
  units.Angle)                              a              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Geometry "Input for several geometries of internal flow"
      extends Modelica.Icons.Record;

      Modelica.Fluid.Dissipation.Utilities.Types.GeometryOfInternalFlow
        geometry=
          Modelica.Fluid.Dissipation.Utilities.Types.GeometryOfInternalFlow.Circular 
        "Choice of geometry for internal flow";

      SI.Length K=0 "Roughness (average height of surface asperities)";
      SI.Length L=1 "Length";

      //geometry variables
      //annular(1)
      SI.Diameter d_ann=d_cir "Small diameter";
      SI.Diameter D_ann=2*d_ann "Large diameter";
      //circular(2)
      SI.Diameter d_cir=0.1 "Internal diameter";
      //elliptical(3)
      SI.Length a_ell=(3/4)*d_cir "Half length of long base line";
      SI.Length b_ell=0.5*a_ell "Half length of short base line";
      //rectangular(4)
      SI.Length a_rec=d_cir "Horizontal length";
      SI.Length b_rec=a_rec "Vertical length";
      //triangular(5)
      SI.Length a_tri=d_cir*(1 + 2^0.5) "Length of base line";
      SI.Length h_tri=0.5*a_tri "Heigth to top angle perpendicular to base line";
      SI.Angle beta=90*PI/180 "Top angle";
    end Geometry;

* * * * *

![image20](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).Orifice
=============================================================================================================================================================================================================================================================================

**Input for orifice**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name Default  Description
  -------------------------------- ---- -------- --------------------------
  Orifice                                        

  [Area](Modelica_SIunits.html#Mod A\_0 0.1\*A\_ Cross sectional area of
  elica.SIunits.Area)                   1        vena contraction [m2]

  [Length](Modelica_SIunits.html#M C\_0 0.1\*C\_ Perimeter of vena
  odelica.SIunits.Length)               1        contraction [m]

  [Area](Modelica_SIunits.html#Mod A\_1 PI\*0.01 Large cross sectional area
  elica.SIunits.Area)                   \^2/4    of orifice [m2]

  [Length](Modelica_SIunits.html#M C\_1 PI\*0.01 Large perimeter of orifice
  odelica.SIunits.Length)                        [m]

  [Length](Modelica_SIunits.html#M L    1e-3     Length of vena contraction
  odelica.SIunits.Length)                        [m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Orifice "Input for orifice"

      extends Modelica.Icons.Record;

      SI.Area A_0=0.1*A_1 "Cross sectional area of vena contraction";
      SI.Length C_0=0.1*C_1 "Perimeter of vena contraction";
      SI.Area A_1=PI*0.01^2/4 "Large cross sectional area of orifice";
      SI.Length C_1=PI*0.01 "Large perimeter of orifice";
      SI.Length L=1e-3 "Length of vena contraction";
    end Orifice;

* * * * *

![image21](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).PressureLossInput
=======================================================================================================================================================================================================================================================================================

**Input for pressure loss calculation**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                         Nam Default     Description
                                               e               
  -------------------------------------------- --- ----------- -----------
  Input                                                        

  [PressureLossTarget](Modelica_Fluid_Dissipat tar Dissipation Target
  ion_Utilities_Types.html#Modelica.Fluid.Diss get .Utilities. variable of
  ipation.Utilities.Types.PressureLossTarget)      Types....   calculation

  [Pressure](Modelica_SIunits.html#Modelica.SI dp  0           Pressure
  units.Pressure)                                              loss [Pa]

  [MassFlowRate](Modelica_SIunits.html#Modelic m\_ 0           Mass flow
  a.SIunits.MassFlowRate)                      flo             rate [kg/s]
                                               w               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PressureLossInput "Input for pressure loss calculation"
      extends Modelica.Icons.Record;

      //target variables
      Modelica.Fluid.Dissipation.Utilities.Types.PressureLossTarget target=Dissipation.Utilities.Types.PressureLossTarget.PressureLoss 
        "Target variable of calculation";

      SI.Pressure dp=0 "Pressure loss";
      SI.MassFlowRate m_flow=0 "Mass flow rate";

    end PressureLossInput;

* * * * *

![image22](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).StraightPipe
==================================================================================================================================================================================================================================================================================

**Input for straight pipe**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                     Name   Default Description
  ---------------------------------------- ------ ------- ----------------
  Straight pipe                                           

  [Diameter](Modelica_SIunits.html#Modelic d\_hyd 0.1     Hydraulic
  a.SIunits.Diameter)                                     diameter [m]

  [Length](Modelica_SIunits.html#Modelica. L      1       Length [m]
  SIunits.Length)                                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record StraightPipe "Input for straight pipe"

      extends Modelica.Icons.Record;

      SI.Diameter d_hyd=0.1 "Hydraulic diameter";
      SI.Length L=1 "Length";
    end StraightPipe;

* * * * *

![image23](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).Tjunction
===============================================================================================================================================================================================================================================================================

**Input for T-junction**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                   Name       Defau Description
                                    lt    
  ---------------------- ---------- ----- ----------------------------------
  T-junction                              

  Boolean                united\_co true  true == A\_cross\_total =
                         nverging\_       2\*A\_cross\_branch | false ==
                         crossectio       A\_cross\_total \>
                         n                2\*A\_cross\_branch

  Boolean                velocity\_ true  true == pressure loss coefficents
                         reference\       w.r.t. velocity in each passage |
                         _branches        false == w.r.t. velocity in total
                                          passage

  Integer                alpha      90    Angle of branching

  [Diameter](Modelica_SI d\_hyd[3]  ones( Hydraulic diameter of passages
  units.html#Modelica.SI            3)\*0 [side,straight,total] [m]
  units.Diameter)                   .1    

  Restrictions                            

  [MassFlowRate](Modelic m\_flow\_m 1e-3  Restriction for smoothing at
  a_SIunits.html#Modelic in               reverse fluid flow [kg/s]
  a.SIunits.MassFlowRate                  
  )                                       

  [Velocity](Modelica_SI v\_max     2e2   Restriction for maximum fluid flow
  units.html#Modelica.SI                  velocity [m/s]
  units.Velocity)                         

  Real                   zeta\_TOT\ 1e3   Restriction for maximum value of
                         _max             pressure loss coefficient
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record Tjunction "Input for T-junction"
      extends Modelica.Icons.Record;

      //T-junction variables
      Boolean united_converging_crossection=true 
        "true == A_cross_total = 2*A_cross_branch | false == A_cross_total > 2*A_cross_branch";
      Boolean velocity_reference_branches=true 
        "true == pressure loss coefficents w.r.t. velocity in each passage | false == w.r.t. velocity in total passage";

      Integer alpha=90 "Angle of branching";

      SI.Diameter d_hyd[3]=ones(3)*0.1 
        "Hydraulic diameter of passages [side,straight,total]";

      //restrictions
      SI.MassFlowRate m_flow_min=1e-3 
        "Restriction for smoothing at reverse fluid flow";
      SI.Velocity v_max=2e2 "Restriction for maximum fluid flow velocity";
      Real zeta_TOT_max=1e3 
        "Restriction for maximum value of pressure loss coefficient";
    end Tjunction;

* * * * *

![image24](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).Diffuser
==============================================================================================================================================================================================================================================================================

**Input for diffuser**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                       Name    Defaul Description
                                     t      
  -------------------------- ------- ------ ------------------------------
  Diffuser                                  

  [Angle](Modelica_SIunits.h alpha   PI\*45 Diffuser diverging angle [rad]
  tml#Modelica.SIunits.Angle         /180   
  )                                         

  [Area](Modelica_SIunits.ht A\_1    PI\*0. Small constant cross sectional
  ml#Modelica.SIunits.Area)          01\^2/ area before diffuser section
                                     4      [m2]

  [Area](Modelica_SIunits.ht A\_2    2\*A\_ Large constant cross sectional
  ml#Modelica.SIunits.Area)          1      area after diffuser section
                                            [m2]

  [Length](Modelica_SIunits. C\_1    PI\*0. Small perimeter before
  html#Modelica.SIunits.Leng         01     diffuser section [m]
  th)                                       

  [Length](Modelica_SIunits. C\_2    2\*C\_ Large perimeter after diffuser
  html#Modelica.SIunits.Leng         1      section [m]
  th)                                       

  [Length](Modelica_SIunits. L\_1    0.1    Length of straight pipe before
  html#Modelica.SIunits.Leng                diffuser section [m]
  th)                                       

  [Length](Modelica_SIunits. L\_2    L\_1   Length of straight pipe after
  html#Modelica.SIunits.Leng                diffuser section [m]
  th)                                       

  [Length](Modelica_SIunits. L\_d    L\_1   Lenght of diffuser section
  html#Modelica.SIunits.Leng                (parallel to bulk fluid flow)
  th)                                       [m]

  Numerical aspects                         

  [Pressure](Modelica_SIunit dp\_sma 1      Linearisation for a pressure
  s.html#Modelica.SIunits.Pr ll             loss smaller then dp\_small
  essure)                                   [Pa]

  Real                       zeta\_T 1e-3   Minimal pressure loss
                             OT\_min        coefficient for infinite
                                            Reynolds number

  Real                       zeta\_T 1e8    Maximum pressure loss
                             OT\_max        coefficient for Reynolds
                                            number approaching zero
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record Diffuser "Input for diffuser"
      extends Modelica.Icons.Record;

      SI.Angle alpha=PI*45/180 "Diffuser diverging angle";

      SI.Area A_1=PI*0.01^2/4 
        "Small constant cross sectional area before diffuser section";
      SI.Area A_2=2*A_1 
        "Large constant cross sectional area after diffuser section";
      SI.Length C_1=PI*0.01 "Small perimeter before diffuser section";
      SI.Length C_2=2*C_1 "Large perimeter after diffuser section";
      SI.Length L_1=0.1 "Length of straight pipe before diffuser section";
      SI.Length L_2=L_1 "Length of straight pipe after diffuser section";
      SI.Length L_d=L_1 "Lenght of diffuser section (parallel to bulk fluid flow)";

      //numerical aspects
      SI.Pressure dp_small=1 
        "Linearisation for a pressure loss smaller then dp_small";
      Real zeta_TOT_min=1e-3 
        "Minimal pressure loss coefficient for infinite Reynolds number";
      Real zeta_TOT_max=1e8 
        "Maximum pressure loss coefficient for Reynolds number approaching zero";
    end Diffuser;

* * * * *

![image25](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).EdgedBend
===============================================================================================================================================================================================================================================================================

**Input for bend**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name  Defaul Description
                                       t      
  ------------------------------ ----- ------ ------------------------------
  Bend                                        

  [Diameter](Modelica_SIunits.ht d\_hy 0.1    Hydraulic diameter [m]
  ml#Modelica.SIunits.Diameter)  d            

  [Angle](Modelica_SIunits.html# delta 90\*PI Angle of turning [rad]
  Modelica.SIunits.Angle)              /180   

  [Length](Modelica_SIunits.html K     0      Roughness (absolute average
  #Modelica.SIunits.Length)                   height of surface asperities)
                                              [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record EdgedBend "Input for bend"
      extends Modelica.Icons.Record;

      SI.Diameter d_hyd(min=Modelica.Constants.eps) = 0.1 "Hydraulic diameter";
      SI.Angle delta=90*PI/180 "Angle of turning";
      SI.Length K=0 "Roughness (absolute average height of surface asperities)";

    end EdgedBend;

* * * * *

![image26](Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png) [Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss).SuddenChange
==================================================================================================================================================================================================================================================================================

**Input for sudden change of diameter**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                              Name Default   Description
  --------------------------------- ---- --------- -------------------------
  Orifice                                          

  [Area](Modelica_SIunits.html#Mode A\_1 PI\*0.01\ Small cross sectional
  lica.SIunits.Area)                     ^2/4      area of orifice [m2]

  [Area](Modelica_SIunits.html#Mode A\_2 A\_1      Large cross sectional
  lica.SIunits.Area)                               area of orifice [m2]

  [Length](Modelica_SIunits.html#Mo C\_1 PI\*0.01  Small perimeter of
  delica.SIunits.Length)                           orifice [m]

  [Length](Modelica_SIunits.html#Mo C\_2 C\_1      Large perimeter of
  delica.SIunits.Length)                           orifice [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record SuddenChange "Input for sudden change of diameter"

      extends Modelica.Icons.Record;

      SI.Area A_1=PI*0.01^2/4 "Small cross sectional area of orifice";
      SI.Area A_2=A_1 "Large cross sectional area of orifice";
      SI.Length C_1=PI*0.01 "Small perimeter of orifice";
      SI.Length C_2=C_1 "Large perimeter of orifice";
    end SuddenChange;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:25 2010.
