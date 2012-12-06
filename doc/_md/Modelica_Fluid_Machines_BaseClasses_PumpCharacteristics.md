% Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics
% 
% 

[Modelica.Fluid.Machines.BaseClasses](Modelica_Fluid_Machines_BaseClasses.html#Modelica.Fluid.Machines.BaseClasses).PumpCharacteristics
=======================================================================================================================================

**Functions for pump characteristics**

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image9](Modelica.Fluid.Machines.BaseClasses.assertPositi Base class
  veDifferenceS.png)                                         for pump flow
  [baseFlow](Modelica_Fluid_Machines_BaseClasses_PumpCharact characteristi
  eristics.html#Modelica.Fluid.Machines.BaseClasses.PumpChar cs
  acteristics.baseFlow)                                      

  ![image10](Modelica.Fluid.Machines.BaseClasses.assertPosit Base class
  iveDifferenceS.png)                                        for pump
  [basePower](Modelica_Fluid_Machines_BaseClasses_PumpCharac power
  teristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCha consumption
  racteristics.basePower)                                    characteristi
                                                             cs

  ![image11](Modelica.Fluid.Machines.BaseClasses.assertPosit Base class
  iveDifferenceS.png)                                        for
  [baseEfficiency](Modelica_Fluid_Machines_BaseClasses_PumpC efficiency
  haracteristics.html#Modelica.Fluid.Machines.BaseClasses.Pu characteristi
  mpCharacteristics.baseEfficiency)                          cs

  ![image12](Modelica.Fluid.Machines.BaseClasses.assertPosit Linear flow
  iveDifferenceS.png)                                        characteristi
  [linearFlow](Modelica_Fluid_Machines_BaseClasses_PumpChara c
  cteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCh 
  aracteristics.linearFlow)                                  

  ![image13](Modelica.Fluid.Machines.BaseClasses.assertPosit Quadratic
  iveDifferenceS.png)                                        flow
  [quadraticFlow](Modelica_Fluid_Machines_BaseClasses_PumpCh characteristi
  aracteristics.html#Modelica.Fluid.Machines.BaseClasses.Pum c
  pCharacteristics.quadraticFlow)                            

  ![image14](Modelica.Fluid.Machines.BaseClasses.assertPosit Polynomial
  iveDifferenceS.png)                                        flow
  [polynomialFlow](Modelica_Fluid_Machines_BaseClasses_PumpC characteristi
  haracteristics.html#Modelica.Fluid.Machines.BaseClasses.Pu c
  mpCharacteristics.polynomialFlow)                          

  ![image15](Modelica.Fluid.Machines.BaseClasses.assertPosit Constant
  iveDifferenceS.png)                                        efficiency
  [constantEfficiency](Modelica_Fluid_Machines_BaseClasses_P characteristi
  umpCharacteristics.html#Modelica.Fluid.Machines.BaseClasse c
  s.PumpCharacteristics.constantEfficiency)                  

  ![image16](Modelica.Fluid.Machines.BaseClasses.assertPosit Linear power
  iveDifferenceS.png)                                        consumption
  [linearPower](Modelica_Fluid_Machines_BaseClasses_PumpChar characteristi
  acteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpC c
  haracteristics.linearPower)                                

  ![image17](Modelica.Fluid.Machines.BaseClasses.assertPosit Quadratic
  iveDifferenceS.png)                                        power
  [quadraticPower](Modelica_Fluid_Machines_BaseClasses_PumpC consumption
  haracteristics.html#Modelica.Fluid.Machines.BaseClasses.Pu characteristi
  mpCharacteristics.quadraticPower)                          c
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).baseFlow
==========================================================================================================================================================================================================================================================================

**Base class for pump flow characteristics**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name   Defaul Description
                                                   t      
  ----------------------------------------- ------ ------ -----------------
  [VolumeFlowRate](Modelica_SIunits.html#Mo V\_flo        Volumetric flow
  delica.SIunits.VolumeFlowRate)            w             rate [m3/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- --------------
  [Height](Modelica_SIunits.html#Modelica.SIunits.He head    Pump head [m]
  ight)                                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial function baseFlow "Base class for pump flow characteristics"
      extends Modelica.Icons.Function;
      input SI.VolumeFlowRate V_flow "Volumetric flow rate";
      output SI.Height head "Pump head";
    end baseFlow;

* * * * *

![image19](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).basePower
===========================================================================================================================================================================================================================================================================

**Base class for pump power consumption characteristics**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name   Defaul Description
                                                   t      
  ----------------------------------------- ------ ------ -----------------
  [VolumeFlowRate](Modelica_SIunits.html#Mo V\_flo        Volumetric flow
  delica.SIunits.VolumeFlowRate)            w             rate [m3/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name        Description
  ------------------------------------------ ----------- ------------------
  [Power](Modelica_SIunits.html#Modelica.SIu consumption Power consumption
  nits.Power)                                            [W]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial function basePower 
      "Base class for pump power consumption characteristics"
      extends Modelica.Icons.Function;
      input SI.VolumeFlowRate V_flow "Volumetric flow rate";
      output SI.Power consumption "Power consumption";
    end basePower;

* * * * *

![image20](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).baseEfficiency
================================================================================================================================================================================================================================================================================

**Base class for efficiency characteristics**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name   Defaul Description
                                                   t      
  ----------------------------------------- ------ ------ -----------------
  [VolumeFlowRate](Modelica_SIunits.html#Mo V\_flo        Volumetric flow
  delica.SIunits.VolumeFlowRate)            w             rate [m3/s]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      eta       Efficiency

Modelica definition
-------------------

    partial function baseEfficiency 
      "Base class for efficiency characteristics"
      extends Modelica.Icons.Function;
      input SI.VolumeFlowRate V_flow "Volumetric flow rate";
      output Real eta "Efficiency";
    end baseEfficiency;

* * * * *

![image21](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).linearFlow
============================================================================================================================================================================================================================================================================

**Linear flow characteristic**

Information
-----------

Extends from
[baseFlow](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow)
(Base class for pump flow characteristics).

Inputs
------

  -------------------------------------------------------------------------
  Type                            Name      Defa Description
                                            ult  
  ------------------------------- --------- ---- --------------------------
  [VolumeFlowRate](Modelica_SIuni V\_flow        Volumetric flow rate
  ts.html#Modelica.SIunits.Volume                [m3/s]
  FlowRate)                                      

  [VolumeFlowRate](Modelica_SIuni V\_flow\_      Volume flow rate for two
  ts.html#Modelica.SIunits.Volume nominal[2      operating points (single
  FlowRate)                       ]              pump) [m3/s]

  [Height](Modelica_SIunits.html# head\_nom      Pump head for two
  Modelica.SIunits.Height)        inal[2]        operating points [m]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- --------------
  [Height](Modelica_SIunits.html#Modelica.SIunits.He head    Pump head [m]
  ight)                                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function linearFlow "Linear flow characteristic"
      extends baseFlow;
      input SI.VolumeFlowRate V_flow_nominal[2] 
        "Volume flow rate for two operating points (single pump)";
      input SI.Height head_nominal[2] "Pump head for two operating points";
      /* Linear system to determine the coefficients:
      head_nominal[1] = c[1] + V_flow_nominal[1]*c[2];
      head_nominal[2] = c[1] + V_flow_nominal[2]*c[2];
      */
    protected 
      Real c[2] = Modelica.Math.Matrices.solve([ones(2),V_flow_nominal],head_nominal) 
        "Coefficients of linear head curve";
    algorithm 
      // Flow equation: head = q*c[1] + c[2];
      head := c[1] + V_flow*c[2];
    end linearFlow;

* * * * *

![image22](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).quadraticFlow
===============================================================================================================================================================================================================================================================================

**Quadratic flow characteristic**

Information
-----------

Extends from
[baseFlow](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow)
(Base class for pump flow characteristics).

Inputs
------

  -------------------------------------------------------------------------
  Type                           Name      Defa Description
                                           ult  
  ------------------------------ --------- ---- ---------------------------
  [VolumeFlowRate](Modelica_SIun V\_flow        Volumetric flow rate [m3/s]
  its.html#Modelica.SIunits.Volu                
  meFlowRate)                                   

  [VolumeFlowRate](Modelica_SIun V\_flow\_      Volume flow rate for three
  its.html#Modelica.SIunits.Volu nominal[3      operating points (single
  meFlowRate)                    ]              pump) [m3/s]

  [Height](Modelica_SIunits.html head\_nom      Pump head for three
  #Modelica.SIunits.Height)      inal[3]        operating points [m]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- --------------
  [Height](Modelica_SIunits.html#Modelica.SIunits.He head    Pump head [m]
  ight)                                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function quadraticFlow "Quadratic flow characteristic"
      extends baseFlow;
      input SI.VolumeFlowRate V_flow_nominal[3] 
        "Volume flow rate for three operating points (single pump)";
      input SI.Height head_nominal[3] "Pump head for three operating points";
    protected 
      Real V_flow_nominal2[3] = {V_flow_nominal[1]^2,V_flow_nominal[2]^2, V_flow_nominal[3]^2} 
        "Squared nominal flow rates";
      /* Linear system to determine the coefficients:
      head_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
      head_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
      head_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
      */
      Real c[3] = Modelica.Math.Matrices.solve([ones(3), V_flow_nominal, V_flow_nominal2],head_nominal) 
        "Coefficients of quadratic head curve";
    algorithm 
      // Flow equation: head  = c[1] + V_flow*c[2] + V_flow^2*c[3];
      head := c[1] + V_flow*c[2] + V_flow^2*c[3];
    end quadraticFlow;

* * * * *

![image23](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).polynomialFlow
================================================================================================================================================================================================================================================================================

**Polynomial flow characteristic**

Information
-----------

Extends from
[baseFlow](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow)
(Base class for pump flow characteristics).

Inputs
------

  -------------------------------------------------------------------------
  Type                            Name      Defa Description
                                            ult  
  ------------------------------- --------- ---- --------------------------
  [VolumeFlowRate](Modelica_SIuni V\_flow        Volumetric flow rate
  ts.html#Modelica.SIunits.Volume                [m3/s]
  FlowRate)                                      

  [VolumeFlowRate](Modelica_SIuni V\_flow\_      Volume flow rate for N
  ts.html#Modelica.SIunits.Volume nominal[:      operating points (single
  FlowRate)                       ]              pump) [m3/s]

  [Height](Modelica_SIunits.html# head\_nom      Pump head for N operating
  Modelica.SIunits.Height)        inal[:]        points [m]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- --------------
  [Height](Modelica_SIunits.html#Modelica.SIunits.He head    Pump head [m]
  ight)                                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function polynomialFlow "Polynomial flow characteristic"
      extends baseFlow;
      input SI.VolumeFlowRate V_flow_nominal[:] 
        "Volume flow rate for N operating points (single pump)";
      input SI.Height head_nominal[:] "Pump head for N operating points";
    protected 
      Integer N = size(V_flow_nominal,1) "Number of nominal operating points";
      Real V_flow_nominal_pow[N,N] = {{V_flow_nominal[i]^(j-1) for j in 1:N} for i in 1:N} 
        "Rows: different operating points; columns: increasing powers";
      /* Linear system to determine the coefficients (example N=3):
      head_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
      head_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
      head_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
      */
      Real c[N] = Modelica.Math.Matrices.solve(V_flow_nominal_pow,head_nominal) 
        "Coefficients of polynomial head curve";
    algorithm 
      // Flow equation (example N=3): head  = c[1] + V_flow*c[2] + V_flow^2*c[3];
      // Note: the implementation is numerically efficient only for low values of Na
      head := sum(V_flow^(i-1)*c[i] for i in 1:N);
    end polynomialFlow;

* * * * *

![image24](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).constantEfficiency
====================================================================================================================================================================================================================================================================================

**Constant efficiency characteristic**

Information
-----------

Extends from
[baseEfficiency](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseEfficiency)
(Base class for efficiency characteristics).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name     Defaul Description
                                                    t      
  ---------------------------------------- -------- ------ ----------------
  [VolumeFlowRate](Modelica_SIunits.html#M V\_flow         Volumetric flow
  odelica.SIunits.VolumeFlowRate)                          rate [m3/s]

  Real                                     eta\_nom        Nominal
                                           inal            efficiency
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      eta       Efficiency

Modelica definition
-------------------

    function constantEfficiency "Constant efficiency characteristic"
       extends baseEfficiency;
       input Real eta_nominal "Nominal efficiency";
    algorithm 
      eta := eta_nominal;
    end constantEfficiency;

* * * * *

![image25](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).linearPower
=============================================================================================================================================================================================================================================================================

**Linear power consumption characteristic**

Information
-----------

Extends from
[basePower](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.basePower)
(Base class for pump power consumption characteristics).

Inputs
------

  -------------------------------------------------------------------------
  Type                            Name      Defa Description
                                            ult  
  ------------------------------- --------- ---- --------------------------
  [VolumeFlowRate](Modelica_SIuni V\_flow        Volumetric flow rate
  ts.html#Modelica.SIunits.Volume                [m3/s]
  FlowRate)                                      

  [VolumeFlowRate](Modelica_SIuni V\_flow\_      Volume flow rate for two
  ts.html#Modelica.SIunits.Volume nominal[2      operating points (single
  FlowRate)                       ]              pump) [m3/s]

  [Power](Modelica_SIunits.html#M W\_nomina      Power consumption for two
  odelica.SIunits.Power)          l[2]           operating points [W]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name        Description
  ------------------------------------------ ----------- ------------------
  [Power](Modelica_SIunits.html#Modelica.SIu consumption Power consumption
  nits.Power)                                            [W]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function linearPower "Linear power consumption characteristic"
      extends basePower;
      input SI.VolumeFlowRate V_flow_nominal[2] 
        "Volume flow rate for two operating points (single pump)";
      input SI.Power W_nominal[2] "Power consumption for two operating points";
      /* Linear system to determine the coefficients:
      W_nominal[1] = c[1] + V_flow_nominal[1]*c[2];
      W_nominal[2] = c[1] + V_flow_nominal[2]*c[2];
      */
    protected 
      Real c[2] = Modelica.Math.Matrices.solve([ones(3),V_flow_nominal],W_nominal) 
        "Coefficients of linear power consumption curve";
    algorithm 
      consumption := c[1] + V_flow*c[2];
    end linearPower;

* * * * *

![image26](Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png) [Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics).quadraticPower
================================================================================================================================================================================================================================================================================

**Quadratic power consumption characteristic**

Information
-----------

Extends from
[basePower](Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.basePower)
(Base class for pump power consumption characteristics).

Inputs
------

  -------------------------------------------------------------------------
  Type                           Name      Defa Description
                                           ult  
  ------------------------------ --------- ---- ---------------------------
  [VolumeFlowRate](Modelica_SIun V\_flow        Volumetric flow rate [m3/s]
  its.html#Modelica.SIunits.Volu                
  meFlowRate)                                   

  [VolumeFlowRate](Modelica_SIun V\_flow\_      Volume flow rate for three
  its.html#Modelica.SIunits.Volu nominal[3      operating points (single
  meFlowRate)                    ]              pump) [m3/s]

  [Power](Modelica_SIunits.html# W\_nomina      Power consumption for three
  Modelica.SIunits.Power)        l[3]           operating points [W]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name        Description
  ------------------------------------------ ----------- ------------------
  [Power](Modelica_SIunits.html#Modelica.SIu consumption Power consumption
  nits.Power)                                            [W]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function quadraticPower "Quadratic power consumption characteristic"
      extends basePower;
      input SI.VolumeFlowRate V_flow_nominal[3] 
        "Volume flow rate for three operating points (single pump)";
      input SI.Power W_nominal[3] "Power consumption for three operating points";
    protected 
      Real V_flow_nominal2[3] = {V_flow_nominal[1]^2,V_flow_nominal[2]^2, V_flow_nominal[3]^2} 
        "Squared nominal flow rates";
      /* Linear system to determine the coefficients:
      W_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
      W_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
      W_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
      */
      Real c[3] = Modelica.Math.Matrices.solve([ones(3),V_flow_nominal,V_flow_nominal2],W_nominal) 
        "Coefficients of quadratic power consumption curve";
    algorithm 
      consumption := c[1] + V_flow*c[2] + V_flow^2*c[3];
    end quadraticPower;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:16 2010.
