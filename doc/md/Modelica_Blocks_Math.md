% Modelica.Blocks.Math
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).Math
============================================================

**Library of Real mathematical functions as input/output blocks**

Information
-----------

::

This package contains basic **mathematical operations**, such as
summation and multiplication, and basic **mathematical functions**, such
as **sqrt** and **sin**, as input/output blocks. All blocks of this
library can be either connected with continuous blocks or with
sampled-data blocks.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                Description
  ----------------------------------- ------------------------------------
  ![image46](Modelica.Blocks.Math.Uni Conversion blocks to convert between
  tConversionsS.png)                  SI and non-SI unit signals
  [UnitConversions](Modelica_Blocks_M 
  ath_UnitConversions.html#Modelica.B 
  locks.Math.UnitConversions)         

  ![image47](Modelica.Blocks.Math.Inv Construct inverse model by requiring
  erseBlockConstraintsS.png)          that two inputs and two outputs are
  [InverseBlockConstraints](Modelica_ identical (replaces the previously,
  Blocks_Math.html#Modelica.Blocks.Ma unbalanced, TwoInputs and TwoOutputs
  th.InverseBlockConstraints)         blocks)

  ![image48](Modelica.Blocks.Math.Gai Output the product of a gain value
  nS.png)                             with the input signal
  [Gain](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Gain)            

  ![image49](Modelica.Blocks.Math.Mat Output the product of a gain matrix
  rixGainS.png)                       with the input signal vector
  [MatrixGain](Modelica_Blocks_Math.h 
  tml#Modelica.Blocks.Math.MatrixGain 
  )                                   

  ![image50](Modelica.Blocks.Math.Mul Sum of Reals: y = k[1]\*u[1] +
  tiSumS.png)                         k[2]\*u[2] + ... + k[n]\*u[n]
  [MultiSum](Modelica_Blocks_Math.htm 
  l#Modelica.Blocks.Math.MultiSum)    

  ![image51](Modelica.Blocks.Math.Mul Product of Reals: y = u[1]\*u[2]\*
  tiProductS.png)                     ... \*u[n]
  [MultiProduct](Modelica_Blocks_Math 
  .html#Modelica.Blocks.Math.MultiPro 
  duct)                               

  ![image52](Modelica.Blocks.Math.Mul Set Real expression that is
  tiSwitchS.png)                      associated with the first active
  [MultiSwitch](Modelica_Blocks_Math. input signal
  html#Modelica.Blocks.Math.MultiSwit 
  ch)                                 

  ![image53](Modelica.Blocks.Math.Sum Output the sum of the elements of
  S.png)                              the input vector
  [Sum](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Sum)              

  ![image54](Modelica.Blocks.Math.Fee Output difference between commanded
  dbackS.png)                         and feedback input
  [Feedback](Modelica_Blocks_Math.htm 
  l#Modelica.Blocks.Math.Feedback)    

  ![image55](Modelica.Blocks.Math.Add Output the sum of the two inputs
  S.png)                              (this is an obsolet block. Use
  [Add](Modelica_Blocks_Math.html#Mod instead MultiSum)
  elica.Blocks.Math.Add)              

  ![image56](Modelica.Blocks.Math.Add Output the sum of the three inputs
  3S.png)                             (this is an obsolet block. Use
  [Add3](Modelica_Blocks_Math.html#Mo instead MultiSum)
  delica.Blocks.Math.Add3)            

  ![image57](Modelica.Blocks.Math.Pro Output product of the two inputs
  ductS.png)                          (this is an obsolet block. Use
  [Product](Modelica_Blocks_Math.html instead MultiProduct)
  #Modelica.Blocks.Math.Product)      

  ![image58](Modelica.Blocks.Math.Div Output first input divided by second
  isionS.png)                         input
  [Division](Modelica_Blocks_Math.htm 
  l#Modelica.Blocks.Math.Division)    

  ![image59](Modelica.Blocks.Math.Abs Output the absolute value of the
  S.png)                              input
  [Abs](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Abs)              

  ![image60](Modelica.Blocks.Math.Sig Output the sign of the input
  nS.png)                             
  [Sign](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Sign)            

  ![image61](Modelica.Blocks.Math.Sqr Output the square root of the input
  tS.png)                             (input \>= 0 required)
  [Sqrt](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Sqrt)            

  ![image62](Modelica.Blocks.Math.Sin Output the sine of the input
  S.png)                              
  [Sin](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Sin)              

  ![image63](Modelica.Blocks.Math.Cos Output the cosine of the input
  S.png)                              
  [Cos](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Cos)              

  ![image64](Modelica.Blocks.Math.Tan Output the tangent of the input
  S.png)                              
  [Tan](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Tan)              

  ![image65](Modelica.Blocks.Math.Asi Output the arc sine of the input
  nS.png)                             
  [Asin](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Asin)            

  ![image66](Modelica.Blocks.Math.Aco Output the arc cosine of the input
  sS.png)                             
  [Acos](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Acos)            

  ![image67](Modelica.Blocks.Math.Ata Output the arc tangent of the input
  nS.png)                             
  [Atan](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Atan)            

  ![image68](Modelica.Blocks.Math.Ata Output atan(u1/u2) of the inputs u1
  n2S.png)                            and u2
  [Atan2](Modelica_Blocks_Math.html#M 
  odelica.Blocks.Math.Atan2)          

  ![image69](Modelica.Blocks.Math.Sin Output the hyperbolic sine of the
  hS.png)                             input
  [Sinh](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Sinh)            

  ![image70](Modelica.Blocks.Math.Cos Output the hyperbolic cosine of the
  hS.png)                             input
  [Cosh](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Cosh)            

  ![image71](Modelica.Blocks.Math.Tan Output the hyperbolic tangent of the
  hS.png)                             input
  [Tanh](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Tanh)            

  ![image72](Modelica.Blocks.Math.Exp Output the exponential (base e) of
  S.png)                              the input
  [Exp](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Exp)              

  ![image73](Modelica.Blocks.Math.Log Output the natural (base e)
  S.png)                              logarithm of the input (input \> 0
  [Log](Modelica_Blocks_Math.html#Mod required)
  elica.Blocks.Math.Log)              

  ![image74](Modelica.Blocks.Math.Log Output the base 10 logarithm of the
  10S.png)                            input (input \> 0 required)
  [Log10](Modelica_Blocks_Math.html#M 
  odelica.Blocks.Math.Log10)          

  ![image75](Modelica.Blocks.Math.Rea Convert Real to Integer signal
  lToIntegerS.png)                    
  [RealToInteger](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.RealToI 
  nteger)                             

  ![image76](Modelica.Blocks.Math.Int Convert integer to real signals
  egerToRealS.png)                    
  [IntegerToReal](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.Integer 
  ToReal)                             

  ![image77](Modelica.Blocks.Math.Boo Convert Boolean to Real signal
  leanToRealS.png)                    
  [BooleanToReal](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.Boolean 
  ToReal)                             

  ![image78](Modelica.Blocks.Math.Boo Convert Boolean to Integer signal
  leanToIntegerS.png)                 
  [BooleanToInteger](Modelica_Blocks_ 
  Math.html#Modelica.Blocks.Math.Bool 
  eanToInteger)                       

  ![image79](Modelica.Blocks.Math.Rea Convert Real to Boolean signal
  lToBooleanS.png)                    
  [RealToBoolean](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.RealToB 
  oolean)                             

  ![image80](Modelica.Blocks.Math.Int Convert Integer to Boolean signal
  egerToBooleanS.png)                 
  [IntegerToBoolean](Modelica_Blocks_ 
  Math.html#Modelica.Blocks.Math.Inte 
  gerToBoolean)                       

  ![image81](Modelica.Blocks.Math.Rec Convert rectangular coordinates to
  tangularToPolarS.png)               polar coordinates
  [RectangularToPolar](Modelica_Block 
  s_Math.html#Modelica.Blocks.Math.Re 
  ctangularToPolar)                   

  ![image82](Modelica.Blocks.Math.Rec Convert polar coordinates to
  tangularToPolarS.png)               rectangular coordinates
  [PolarToRectangular](Modelica_Block 
  s_Math.html#Modelica.Blocks.Math.Po 
  larToRectangular)                   

  ![image83](Modelica.Blocks.Math.Mea Calculate mean over period 1/f
  nS.png)                             
  [Mean](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Mean)            

  ![image84](Modelica.Blocks.Math.Mea Calculate refctified mean over
  nS.png)                             period 1/f
  [RectifiedMean](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.Rectifi 
  edMean)                             

  ![image85](Modelica.Blocks.Math.Mea Calculate root mean square over
  nS.png)                             period 1/f
  [RootMeanSquare](Modelica_Blocks_Ma 
  th.html#Modelica.Blocks.Math.RootMe 
  anSquare)                           

  ![image86](Modelica.Blocks.Math.Har Calculate harmonic over period 1/f
  monicS.png)                         
  [Harmonic](Modelica_Blocks_Math.htm 
  l#Modelica.Blocks.Math.Harmonic)    

  ![image87](Modelica.Blocks.Math.Max Pass through the largest signal
  S.png)                              
  [Max](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Max)              

  ![image88](Modelica.Blocks.Math.Max Pass through the smallest signal
  S.png)                              
  [Min](Modelica_Blocks_Math.html#Mod 
  elica.Blocks.Math.Min)              

  ![image89](Modelica.Blocks.Math.Edg Indicates rising edge of boolean
  eS.png)                             signal
  [Edge](Modelica_Blocks_Math.html#Mo 
  delica.Blocks.Math.Edge)            

  ![image90](Modelica.Blocks.Math.Edg Indicates boolean signal changing
  eS.png)                             
  [BooleanChange](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.Boolean 
  Change)                             

  ![image91](Modelica.Blocks.Math.Int Indicates integer signal changing
  egerChangeS.png)                    
  [IntegerChange](Modelica_Blocks_Mat 
  h.html#Modelica.Blocks.Math.Integer 
  Change)                             
  ------------------------------------------------------------------------

* * * * *

![image92](Modelica.Blocks.Math.InverseBlockConstraintsI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).InverseBlockConstraints
============================================================================================================================================================

**Construct inverse model by requiring that two inputs and two outputs
are identical (replaces the previously, unbalanced, TwoInputs and
TwoOutputs blocks)**

Information
-----------

::

Exchange input and ouput signals of a block, i.e., the previous block
inputs become block outputs and the previous block outputs become block
inputs. This block is used to construct inverse models. Its usage is
demonstrated in example:
[Modelica.Blocks.Examples.InverseModel](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.InverseModel).

Note, if a block shall be inverted that has several input and output
blocks, then this can be easily achieved by using a vector of
InverseBlockConstraints instances:

    InverseBlockConstraint invert[3];  // Block to be inverted has 3 input signals

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  input                                               u1   Input signal 1
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic      (u1 = u2)
  a.Blocks.Interfaces.RealInput)                           

  input                                               u2   Input signal 2
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic      (u1 = u2)
  a.Blocks.Interfaces.RealInput)                           

  output                                              y1   Output signal 1
  [RealOutput](Modelica_Blocks_Interfaces.html#Modeli      (y1 = y2)
  ca.Blocks.Interfaces.RealOutput)                         

  output                                              y2   Output signal 2
  [RealOutput](Modelica_Blocks_Interfaces.html#Modeli      (y2 = y2)
  ca.Blocks.Interfaces.RealOutput)                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block InverseBlockConstraints 
      "Construct inverse model by requiring that two inputs and two outputs are identical (replaces the previously, unbalanced, TwoInputs and TwoOutputs blocks)"

      Modelica.Blocks.Interfaces.RealInput u1 "Input signal 1 (u1 = u2)";
      Modelica.Blocks.Interfaces.RealInput u2 "Input signal 2 (u1 = u2)";
      Modelica.Blocks.Interfaces.RealOutput y1 "Output signal 1 (y1 = y2)";
      Modelica.Blocks.Interfaces.RealOutput y2 "Output signal 2 (y2 = y2)";

    equation 
      u1 = u2;
      y1 = y2;
    end InverseBlockConstraints;

* * * * *

![image93](Modelica.Blocks.Math.GainI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Gain
======================================================================================================================

**Output the product of a gain value with the input signal**

Information
-----------

::

This block computes output *y* as *product* of gain *k* with the input
*u*:

    y = k * u;

::

Parameters
----------

  Type     Name     Default     Description
  -------- -------- ----------- --------------------------------------------
  Real     k                    Gain value multiplied with input signal [1]

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- ---------------
  input                                                u    Input signal
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica      connector
  .Blocks.Interfaces.RealInput)                             

  output                                               y    Output signal
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelic      connector
  a.Blocks.Interfaces.RealOutput)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Gain "Output the product of a gain value with the input signal"

      parameter Real k(start=1, unit="1") "Gain value multiplied with input signal";
    public 
      Interfaces.RealInput u "Input signal connector";
      Interfaces.RealOutput y "Output signal connector";

    equation 
      y = k*u;
    end Gain;

* * * * *

![image94](Modelica.Blocks.Math.MatrixGainI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).MatrixGain
==================================================================================================================================

**Output the product of a gain matrix with the input signal vector**

Information
-----------

::

This blocks computes output vector **y** as *product* of the gain matrix
**K** with the input signal vector **u**:

    y = K * u;

Example:

    parameter: K = [0.12 2; 3 1.5]

    results in the following equations:

      | y[1] |     | 0.12  2.00 |   | u[1] |
      |      |  =  |            | * |      |
      | y[2] |     | 3.00  1.50 |   | u[2] |

::

Extends from
[Interfaces.MIMO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO)
(Multiple Input Multiple Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type      Name      Default       Description
  --------- --------- ------------- ---------------------------------------
  Real      K[:, :]   [1, 0; 0, 1]  Gain matrix which is multiplied with
                                    the input

  Integer   nin       size(K, 2)    Number of inputs

  Integer   nout      size(K, 1)    Number of outputs
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  input                                           u[nin Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ]     input signals
  elica.Blocks.Interfaces.RealInput)                    

  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block MatrixGain 
      "Output the product of a gain matrix with the input signal vector"

      parameter Real K[:, :]=[1, 0; 0, 1] 
        "Gain matrix which is multiplied with the input";
      extends Interfaces.MIMO(final nin=size(K, 2), final nout=size(K, 1));
    equation 
      y = K*u;
    end MatrixGain;

* * * * *

![image95](Modelica.Blocks.Math.MultiSumI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).MultiSum
==============================================================================================================================

**Sum of Reals: y = k[1]\*u[1] + k[2]\*u[2] + ... + k[n]\*u[n]**

Information
-----------

::

This blocks computes the scalar Real output "y" as sum of the elements
of the Real input signal vector u:

>     y = k[1]*u[1] + k[2]*u[2] + ... k[N]*u[N];

The input connector is a vector of Real input signals. When a connection
line is drawn, the dimension of the input vector is enlarged by one and
the connection is automatically connected to this new free index (thanks
to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.RealNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1).

If no connection to the input connector "u" is present, the output is
set to zero: y=0.

::

Extends from
[Modelica.Blocks.Interfaces.PartialRealMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialRealMISO)
(Partial block with a RealVectorInput and a RealOutput signal).

Parameters
----------

  -------------------------------------------------------------------------
  Type      Name         Default  Description
  --------- ------------ -------- -----------------------------------------
  Real      k[nu]        fill(1,  Input gains
                         nu)      

  **Advance                       
  d**                             

  Integer   significantD 3        Number of significant digits to be shown
            igits                 in dynamic diagram layer for y
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name  Descript
                                                                  ion
  --------------------------------------------------------- ----- --------
  input                                                     u[nu] 
  [RealVectorInput](Modelica_Blocks_Interfaces.html#Modelic       
  a.Blocks.Interfaces.RealVectorInput)                            

  output                                                    y     
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Blo       
  cks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block MultiSum 
      "Sum of Reals: y = k[1]*u[1] + k[2]*u[2] + ... + k[n]*u[n]"
       extends Modelica.Blocks.Interfaces.PartialRealMISO;
       parameter Real k[nu] = fill(1,nu) "Input gains";
    equation 
      if size(u,1) > 0 then
         y = k*u;
      else
         y = 0;
      end if;

    end MultiSum;

* * * * *

![image96](Modelica.Blocks.Math.MultiProductI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).MultiProduct
======================================================================================================================================

**Product of Reals: y = u[1]\*u[2]\* ... \*u[n]**

Information
-----------

::

This blocks computes the scalar Real output "y" as product of the
elements of the Real input signal vector u:

>     y = u[1]*u[2]* ... *u[N];

The input connector is a vector of Real input signals. When a connection
line is drawn, the dimension of the input vector is enlarged by one and
the connection is automatically connected to this new free index (thanks
to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.RealNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1).

If no connection to the input connector "u" is present, the output is
set to zero: y=0.

::

Extends from
[Modelica.Blocks.Interfaces.PartialRealMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialRealMISO)
(Partial block with a RealVectorInput and a RealOutput signal).

Parameters
----------

  -------------------------------------------------------------------------
  Type      Name         Defaul Description
                         t      
  --------- ------------ ------ -------------------------------------------
  **Advance                     
  d**                           

  Integer   significantD 3      Number of significant digits to be shown in
            igits               dynamic diagram layer for y
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name  Descript
                                                                  ion
  --------------------------------------------------------- ----- --------
  input                                                     u[nu] 
  [RealVectorInput](Modelica_Blocks_Interfaces.html#Modelic       
  a.Blocks.Interfaces.RealVectorInput)                            

  output                                                    y     
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Blo       
  cks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block MultiProduct "Product of Reals: y = u[1]*u[2]* ... *u[n]"
       extends Modelica.Blocks.Interfaces.PartialRealMISO;
    equation 
      if size(u,1) > 0 then
         y = product(u);
      else
         y = 0;
      end if;

    end MultiProduct;

* * * * *

![image97](Modelica.Blocks.Math.MultiSwitchI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).MultiSwitch
====================================================================================================================================

**Set Real expression that is associated with the first active input
signal**

Information
-----------

::

This block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Real expressions expr[nu]. The output signal y is set to
expr[i], if i is the first element in the input vector u that is true.
If all input signals are false, y is set to parameter "y\_default".

>     // Conceptual equation (not valid Modelica)
>     i = 'first element of u[:] that is true';
>     y = if i==0 then y_default else expr[i];

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.RealNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type      Name     Default    Description
  --------- -------- ---------- -------------------------------------------
  Real      expr[nu] fill(0.0,  y = if u[i] then expr[i] else y\_default
                     nu)        (time varying)

  Real      y\_defau 0.0        Default value of output y if all u[i] =
            lt                  false

  **Advance                     
  d**                           

  Integer   precisio 3          Number of significant digits to be shown in
            n                   dynamic diagram layer for y
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Set y = expr[i],
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    if u[i] = true
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         

  output                                              y    Output depending
  [RealOutput](Modelica_Blocks_Interfaces.html#Modeli      on expression
  ca.Blocks.Interfaces.RealOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block MultiSwitch 
      "Set Real expression that is associated with the first active input signal"

        input Real expr[nu]=fill(0.0, nu) 
        "y = if u[i] then expr[i] else y_default (time varying)";
        parameter Real y_default=0.0 
        "Default value of output y if all u[i] = false";

        parameter Integer nu(min=0) = 0 "Number of input connections";
        parameter Integer precision(min=0) = 3 
        "Number of significant digits to be shown in dynamic diagram layer for y";

        Modelica.Blocks.Interfaces.BooleanVectorInput u[nu] 
        "Set y = expr[i], if u[i] = true";
      Modelica.Blocks.Interfaces.RealOutput y(start=y_default,fixed=true) 
        "Output depending on expression";

    protected 
      Integer firstActiveIndex;
    initial equation 
      pre(u) = fill(false,nu);
    equation 
      firstActiveIndex = Modelica.Math.BooleanVectors.firstTrueIndex(
                                                      u);
       y = if firstActiveIndex == 0 then y_default else expr[firstActiveIndex];
    end MultiSwitch;

* * * * *

![image98](Modelica.Blocks.Math.SumI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Sum
====================================================================================================================

**Output the sum of the elements of the input vector**

Information
-----------

::

This blocks computes output **y** as *sum* of the elements of the input
signal vector **u**:

    y = u[1] + u[2] + ...;

Example:

    parameter:   nin = 3;

> results in the following equations:
>
> > y = u[1] + u[2] + u[3];

::

Extends from
[Interfaces.MISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MISO)
(Multiple Input Single Output continuous control block).

Parameters
----------

  Type         Name        Default        Description
  ------------ ----------- -------------- -------------------------------
  Integer      nin         1              Number of inputs
  Real         k[nin]      ones(nin)      Optional: sum coefficients

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  input                                            u[nin Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ]     input signals
  lica.Blocks.Interfaces.RealInput)                      

  output                                           y     Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod       output signal
  elica.Blocks.Interfaces.RealOutput)                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sum "Output the sum of the elements of the input vector"
      extends Interfaces.MISO;
      parameter Real k[nin]=ones(nin) "Optional: sum coefficients";
    equation 
      y = k*u;
    end Sum;

* * * * *

![image99](Modelica.Blocks.Math.FeedbackI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Feedback
==============================================================================================================================

**Output difference between commanded and feedback input**

Information
-----------

::

This blocks computes output **y** as *difference* of the commanded input
**u1** and the feedback input **u2**:

    y = u1 - u2;

Example:

    parameter:   n = 2

> results in the following equations:
>
> > y = u1 - u2

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  input                                                     u1    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bloc       
  ks.Interfaces.RealInput)                                        

  input                                                     u2    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bloc       
  ks.Interfaces.RealInput)                                        

  output                                                    y     
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Blo       
  cks.Interfaces.RealOutput)                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Feedback 
      "Output difference between commanded and feedback input"

      input Interfaces.RealInput u1;
      input Interfaces.RealInput u2;
      output Interfaces.RealOutput y;

    equation 
      y = u1 - u2;
    end Feedback;

* * * * *

![image100](Modelica.Blocks.Math.AddI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Add
=====================================================================================================================

**Output the sum of the two inputs (this is an obsolet block. Use
instead MultiSum)**

Information
-----------

::

This blocks computes output **y** as *sum* of the two input signals
**u1** and **u2**:

    y = k1*u1 + k2*u2;

Example:

    parameter:   k1= +2, k2= -3

> results in the following equations:
>
> > y = 2 \* u1 - 3 \* u2

::

Extends from
[Interfaces.SI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO)
(2 Single Input / 1 Single Output continuous control block).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ ------------------------
  Real      k1        +1           Gain of upper input
  Real      k2        +1           Gain of lower input

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 1
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 2
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Add 
      "Output the sum of the two inputs (this is an obsolet block. Use instead MultiSum)"
      extends Interfaces.SI2SO;
      parameter Real k1=+1 "Gain of upper input";
      parameter Real k2=+1 "Gain of lower input";

    equation 
      y = k1*u1 + k2*u2;
    end Add;

* * * * *

![image101](Modelica.Blocks.Math.Add3I.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Add3
=======================================================================================================================

**Output the sum of the three inputs (this is an obsolet block. Use
instead MultiSum)**

Information
-----------

::

This blocks computes output **y** as *sum* of the three input signals
**u1**, **u2** and **u3**:

    y = k1*u1 + k2*u2 + k3*u3;

Example:

    parameter:   k1= +2, k2= -3, k3=1;

> results in the following equations:
>
> > y = 2 \* u1 - 3 \* u2 + u3;

::

Extends from
[Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -------------------------
  Real      k1        +1           Gain of upper input
  Real      k2        +1           Gain of middle input
  Real      k3        +1           Gain of lower input

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  input                                            u1   Connector 1 of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signals
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector 2 of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signals
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u3   Connector 3 of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signals
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signals
  elica.Blocks.Interfaces.RealOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Add3 
      "Output the sum of the three inputs (this is an obsolet block. Use instead MultiSum)"
      extends Interfaces.BlockIcon;

      parameter Real k1=+1 "Gain of upper input";
      parameter Real k2=+1 "Gain of middle input";
      parameter Real k3=+1 "Gain of lower input";
      input Interfaces.RealInput u1 "Connector 1 of Real input signals";
      input Interfaces.RealInput u2 "Connector 2 of Real input signals";
      input Interfaces.RealInput u3 "Connector 3 of Real input signals";
      output Interfaces.RealOutput y "Connector of Real output signals";

    equation 
      y = k1*u1 + k2*u2 + k3*u3;
    end Add3;

* * * * *

![image102](Modelica.Blocks.Math.ProductI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Product
=============================================================================================================================

**Output product of the two inputs (this is an obsolet block. Use
instead MultiProduct)**

Information
-----------

::

This blocks computes the output **y** (element-wise) as *product* of the
corresponding elements of the two inputs **u1** and **u2**:

    y = u1 * u2;

::

Extends from
[Interfaces.SI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 1
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 2
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Product 
      "Output product of the two inputs (this is an obsolet block. Use instead MultiProduct)"
      extends Interfaces.SI2SO;

    equation 
      y = u1*u2;
    end Product;

* * * * *

![image103](Modelica.Blocks.Math.DivisionI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Division
===============================================================================================================================

**Output first input divided by second input**

Information
-----------

::

This block computes the output **y** (element-wise) by *dividing* the
corresponding elements of the two inputs **u1** and **u2**:

    y = u1 / u2;

::

Extends from
[Interfaces.SI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 1
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 2
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Division "Output first input divided by second input"
      extends Interfaces.SI2SO;

    equation 
      y = u1/u2;
    end Division;

* * * * *

![image104](Modelica.Blocks.Math.AbsI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Abs
=====================================================================================================================

**Output the absolute value of the input**

Information
-----------

::

This blocks computes the output **y** as *absolute value* of the input
**u**:

    y = abs( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Abs "Output the absolute value of the input"
      extends Interfaces.SISO;
    equation 
      y = abs(u);
    end Abs;

* * * * *

![image105](Modelica.Blocks.Math.SignI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Sign
=======================================================================================================================

**Output the sign of the input**

Information
-----------

::

This blocks computes the output **y** as **sign** of the input **u**:

    1  if u > 0

> y = 0 if u == 0
>   ~ -1 if u < 0
>
::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sign "Output the sign of the input"
      extends Interfaces.SISO;
    equation 
      y = sign(u);
    end Sign;

* * * * *

![image106](Modelica.Blocks.Math.SqrtI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Sqrt
=======================================================================================================================

**Output the square root of the input (input \>= 0 required)**

Information
-----------

::

This blocks computes the output **y** as *square root* of the input
**u**:

    y = sqrt( u );

All elements of the input vector shall be zero or positive. Otherwise an
error occurs.

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sqrt 
      "Output the square root of the input (input >= 0 required)"
      extends Interfaces.SISO;

    equation 
      y = sqrt(u);
    end Sqrt;

* * * * *

![image107](Modelica.Blocks.Math.SinI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Sin
=====================================================================================================================

**Output the sine of the input**

Information
-----------

::

This blocks computes the output **y** as **sine** of the input **u**:

    y = sin( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sin "Output the sine of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.sin(u);
    end Sin;

* * * * *

![image108](Modelica.Blocks.Math.CosI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Cos
=====================================================================================================================

**Output the cosine of the input**

Information
-----------

::

This blocks computes the output **y** as **cos** of the input **u**:

    y = cos( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Cos "Output the cosine of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.cos(u);
    end Cos;

* * * * *

![image109](Modelica.Blocks.Math.TanI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Tan
=====================================================================================================================

**Output the tangent of the input**

Information
-----------

::

This blocks computes the output **y** as **tan** of the input **u**:

    y = tan( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Tan "Output the tangent of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.tan(u);
    end Tan;

* * * * *

![image110](Modelica.Blocks.Math.AsinI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Asin
=======================================================================================================================

**Output the arc sine of the input**

Information
-----------

::

This blocks computes the output **y** as the *sine-inverse* of the input
**u**:

    y = asin( u );

The absolute values of the elements of the input **u** need to be less
or equal to one (**abs**( u ) <= 1). Otherwise an error occurs.

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Asin "Output the arc sine of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.asin(u);
    end Asin;

* * * * *

![image111](Modelica.Blocks.Math.AcosI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Acos
=======================================================================================================================

**Output the arc cosine of the input**

Information
-----------

::

This blocks computes the output **y** as the *cosine-inverse* of the
input **u**:

    y = acos( u );

The absolute values of the elements of the input **u** need to be less
or equal to one (**abs**( u ) <= 1). Otherwise an error occurs.

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Acos "Output the arc cosine of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.acos(u);
    end Acos;

* * * * *

![image112](Modelica.Blocks.Math.AtanI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Atan
=======================================================================================================================

**Output the arc tangent of the input**

Information
-----------

::

This blocks computes the output **y** as the *tangent-inverse* of the
input **u**:

    y= atan( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Atan "Output the arc tangent of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.atan(u);
    end Atan;

* * * * *

![image113](Modelica.Blocks.Math.Atan2I.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Atan2
=========================================================================================================================

**Output atan(u1/u2) of the inputs u1 and u2**

Information
-----------

::

This blocks computes the output **y** as the *tangent-inverse* of the
input **u1** divided by input **u2**:

    y = atan2( u1, u2 );

u1 and u2 shall not be zero at the same time instant. **Atan2** uses the
sign of u1 and u2 in order to construct the solution in the range -180
deg ≤ y ≤ 180 deg, whereas block **Atan** gives a solution in the range
-90 deg ≤ y ≤ 90 deg.

::

Extends from
[Interfaces.SI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 1
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 2
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Atan2 "Output atan(u1/u2) of the inputs u1 and u2"
      extends Interfaces.SI2SO;
    equation 
      y = Modelica.Math.atan2(u1, u2);
    end Atan2;

* * * * *

![image114](Modelica.Blocks.Math.SinhI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Sinh
=======================================================================================================================

**Output the hyperbolic sine of the input**

Information
-----------

::

This blocks computes the output **y** as the *hyperbolic sine* of the
input **u**:

    y = sinh( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sinh "Output the hyperbolic sine of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.sinh(u);
    end Sinh;

* * * * *

![image115](Modelica.Blocks.Math.CoshI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Cosh
=======================================================================================================================

**Output the hyperbolic cosine of the input**

Information
-----------

::

This blocks computes the output **y** as the *hyperbolic cosine* of the
input **u**:

    y = cosh( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Cosh "Output the hyperbolic cosine of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.cosh(u);
    end Cosh;

* * * * *

![image116](Modelica.Blocks.Math.TanhI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Tanh
=======================================================================================================================

**Output the hyperbolic tangent of the input**

Information
-----------

::

This blocks computes the output **y** as the *hyperbolic tangent* of the
input **u**:

    y = tanh( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Tanh "Output the hyperbolic tangent of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.tanh(u);
    end Tanh;

* * * * *

![image117](Modelica.Blocks.Math.ExpI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Exp
=====================================================================================================================

**Output the exponential (base e) of the input**

Information
-----------

::

This blocks computes the output **y** as the *exponential* (of base e)
of the input **u**:

    y = exp( u );

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Exp "Output the exponential (base e) of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.exp(u);
    end Exp;

* * * * *

![image118](Modelica.Blocks.Math.LogI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Log
=====================================================================================================================

**Output the natural (base e) logarithm of the input (input \> 0
required)**

Information
-----------

::

This blocks computes the output **y** as the *natural (base e)
logarithm* of the input **u**:

    y = log( u );

An error occurs if the elements of the input **u** are zero or negative.

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Log 
      "Output the natural (base e) logarithm of the input (input > 0 required)"

      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.log(u);
    end Log;

* * * * *

![image119](Modelica.Blocks.Math.Log10I.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Log10
=========================================================================================================================

**Output the base 10 logarithm of the input (input \> 0 required)**

Information
-----------

::

This blocks computes the output **y** as the *base 10 logarithm* of the
input **u**:

    y = log10( u );

An error occurs if the elements of the input **u** are zero or negative.

::

Extends from
[Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Log10 
      "Output the base 10 logarithm of the input (input > 0 required)"

      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.log10(u);
    end Log10;

* * * * *

![image120](Modelica.Blocks.Math.RealToIntegerI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).RealToInteger
=========================================================================================================================================

**Convert Real to Integer signal**

Information
-----------

::

This block computes the output **y** as *nearest integer value* of the
input **u**:

    y = integer( floor( u + 0.5 ) )  for  u > 0;
    y = integer( ceil ( u - 0.5 ) )  for  u < 0;

::

Extends from
[Interfaces.IntegerBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerBlockIcon)
(Basic graphical layout of Integer block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RealToInteger "Convert Real to Integer signal"
      extends Interfaces.IntegerBlockIcon;
    public 
      Interfaces.RealInput u "Connector of Real input signal";
      Interfaces.IntegerOutput y "Connector of Integer output signal";
    equation 
       y = if (u > 0) then integer(floor(u + 0.5)) else 
                           integer(ceil( u - 0.5));
    end RealToInteger;

* * * * *

![image121](Modelica.Blocks.Math.IntegerToRealI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).IntegerToReal
=========================================================================================================================================

**Convert integer to real signals**

Information
-----------

::

This block computes the output **y** as *Real equivalent* of the Integer
input **u**:

    y = u;

where **u** is of Integer and **y** of Real type.

::

Extends from
[Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u    Connector of
  [IntegerInput](Modelica_Blocks_Interfaces.html#M      Integer input
  odelica.Blocks.Interfaces.IntegerInput)               signal

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerToReal "Convert integer to real signals"
      extends Interfaces.BlockIcon;
      Interfaces.IntegerInput u "Connector of Integer input signal";
      Interfaces.RealOutput y "Connector of Real output signal";
    equation 
      y = u;
    end IntegerToReal;

* * * * *

![image122](Modelica.Blocks.Math.BooleanToRealI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).BooleanToReal
=========================================================================================================================================

**Convert Boolean to Real signal**

Information
-----------

::

This block computes the output **y** as *Real equivalent* of the Boolean
input **u**:

    y = if u then realTrue else realFalse;

where **u** is of Boolean and **y** of Real type, and **realTrue** and
**realFalse** are parameters.

::

Extends from
[Interfaces.partialBooleanSI](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI)
(Partial block with 1 input Boolean signal).

Parameters
----------

  Type     Name          Default     Description
  -------- ------------- ----------- ---------------------------------------
  Real     realTrue      1.0         Output signal for true Boolean input
  Real     realFalse     0.0         Output signal for false Boolean input

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#M      Boolean input
  odelica.Blocks.Interfaces.BooleanInput)               signal

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanToReal "Convert Boolean to Real signal"
      extends Interfaces.partialBooleanSI;
      parameter Real realTrue=1.0 "Output signal for true Boolean input";
      parameter Real realFalse=0.0 "Output signal for false Boolean input";

      Blocks.Interfaces.RealOutput y "Connector of Real output signal";

    equation 
      y = if u then realTrue else realFalse;
    end BooleanToReal;

* * * * *

![image123](Modelica.Blocks.Math.BooleanToIntegerI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).BooleanToInteger
===============================================================================================================================================

**Convert Boolean to Integer signal**

Information
-----------

::

This block computes the output **y** as *Integer equivalent* of the
Boolean input **u**:

    y = if u then integerTrue else integerFalse;

where **u** is of Boolean and **y** of Integer type, and **integerTrue**
and **integerFalse** are parameters.

::

Extends from
[Interfaces.partialBooleanSI](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI)
(Partial block with 1 input Boolean signal).

Parameters
----------

  -------------------------------------------------------------------------
  Type       Name           Default    Description
  ---------- -------------- ---------- ------------------------------------
  Integer    integerTrue    1          Output signal for true Boolean input

  Integer    integerFalse   0          Output signal for false Boolean
                                       input
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanToInteger "Convert Boolean to Integer signal"
      extends Interfaces.partialBooleanSI;
      parameter Integer integerTrue=1 "Output signal for true Boolean input";
      parameter Integer integerFalse=0 "Output signal for false Boolean input";

      Blocks.Interfaces.IntegerOutput y "Connector of Integer output signal";

    equation 
      y = if u then integerTrue else integerFalse;
    end BooleanToInteger;

* * * * *

![image124](Modelica.Blocks.Math.RealToBooleanI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).RealToBoolean
=========================================================================================================================================

**Convert Real to Boolean signal**

Information
-----------

::

This block computes the Boolean output **y** from the Real input **u**
by the equation:

    y = u ≥ threshold;

where **threshold** is a parameter.

::

Extends from
[Interfaces.partialBooleanSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSO)
(Partial block with 1 output Boolean signal).

Parameters
----------

  -------------------------------------------------------------------------
  Type    Name        Default   Description
  ------- ----------- --------- -------------------------------------------
  Real    threshold   0.5       Output signal y is true, if input u \>=
                                threshold
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RealToBoolean "Convert Real to Boolean signal"

      Blocks.Interfaces.RealInput u "Connector of Real input signal";
      extends Interfaces.partialBooleanSO;
      parameter Real threshold=0.5 
        "Output signal y is true, if input u >= threshold";

    equation 
      y = u >= threshold;
    end RealToBoolean;

* * * * *

![image125](Modelica.Blocks.Math.IntegerToBooleanI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).IntegerToBoolean
===============================================================================================================================================

**Convert Integer to Boolean signal**

Information
-----------

::

This block computes the Boolean output **y** from the Integer input
**u** by the equation:

    y = u ≥ threshold;

where **threshold** is a parameter.

::

Extends from
[Interfaces.partialBooleanSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSO)
(Partial block with 1 output Boolean signal).

Parameters
----------

  -------------------------------------------------------------------------
  Type      Name        Default   Description
  --------- ----------- --------- -----------------------------------------
  Integer   threshold   1         Output signal y is true, if input u \>=
                                  threshold
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [IntegerInput](Modelica_Blocks_Interfaces.html#Mo      Integer input
  delica.Blocks.Interfaces.IntegerInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerToBoolean "Convert Integer to Boolean signal"

      Blocks.Interfaces.IntegerInput u "Connector of Integer input signal";
      extends Interfaces.partialBooleanSO;
      parameter Integer threshold=1 
        "Output signal y is true, if input u >= threshold";

    equation 
      y = u >= threshold;
    end IntegerToBoolean;

* * * * *

![image126](Modelica.Blocks.Math.RectangularToPolarI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).RectangularToPolar
===================================================================================================================================================

**Convert rectangular coordinates to polar coordinates**

Information
-----------

::

The input values of this block are the rectangular components `u_re` and
`u_im` of a phasor in two dimensions. This block calculates the length
`y_abs` and the angle `y_arg` of the polar representation of this
phasor.

    y_abs = abs(u_re + j*u_im) = sqrt( u_re2 + u_im2 )
    y_arg = arg(u_re + j*u_im) = atan2(u_im, u_re)

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  input                                        u\_re Real part of
  [RealInput](Modelica_Blocks_Interfaces.html#       rectangular
  Modelica.Blocks.Interfaces.RealInput)              representation

  input                                        u\_im Imaginary part of
  [RealInput](Modelica_Blocks_Interfaces.html#       rectangular
  Modelica.Blocks.Interfaces.RealInput)              representation

  output                                       y\_ab Length of polar
  [RealOutput](Modelica_Blocks_Interfaces.html s     representation
  #Modelica.Blocks.Interfaces.RealOutput)            

  output                                       y\_ar Angle of polar
  [RealOutput](Modelica_Blocks_Interfaces.html g     representation
  #Modelica.Blocks.Interfaces.RealOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RectangularToPolar 
      "Convert rectangular coordinates to polar coordinates"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput u_re 
        "Real part of rectangular representation";
      Modelica.Blocks.Interfaces.RealInput u_im 
        "Imaginary part of rectangular representation";
      Modelica.Blocks.Interfaces.RealOutput y_abs "Length of polar representation";
      Modelica.Blocks.Interfaces.RealOutput y_arg "Angle of polar representation";

    equation 
       y_abs = sqrt(u_re*u_re + u_im*u_im);
       y_arg = Modelica.Math.atan2(u_im, u_re);
    end RectangularToPolar;

* * * * *

![image127](Modelica.Blocks.Math.PolarToRectangularI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).PolarToRectangular
===================================================================================================================================================

**Convert polar coordinates to rectangular coordinates**

Information
-----------

::

The input values of this block are the polar components `uabs` and
`uarg` of a phasor. This block calculates the components `y_re` and
`y_im` of the rectangular representation of this phasor.

    y_re = u_abs * cos( u_arg )
    y_im = u_abs * sin( u_arg )

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  input                                        u\_ab Length of polar
  [RealInput](Modelica_Blocks_Interfaces.html# s     representation
  Modelica.Blocks.Interfaces.RealInput)              

  input                                        u\_ar Angle of polar
  [RealInput](Modelica_Blocks_Interfaces.html# g     representation
  Modelica.Blocks.Interfaces.RealInput)              

  output                                       y\_re Real part of
  [RealOutput](Modelica_Blocks_Interfaces.html       rectangular
  #Modelica.Blocks.Interfaces.RealOutput)            representation

  output                                       y\_im Imaginary part of
  [RealOutput](Modelica_Blocks_Interfaces.html       rectangular
  #Modelica.Blocks.Interfaces.RealOutput)            representation
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block PolarToRectangular 
      "Convert polar coordinates to rectangular coordinates"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput u_abs "Length of polar representation";
      Modelica.Blocks.Interfaces.RealInput u_arg "Angle of polar representation";
      Modelica.Blocks.Interfaces.RealOutput y_re 
        "Real part of rectangular representation";
      Modelica.Blocks.Interfaces.RealOutput y_im 
        "Imaginary part of rectangular representation";

    equation 
      y_re = u_abs * Modelica.Math.cos(u_arg);
      y_im = u_abs * Modelica.Math.sin(u_arg);
    end PolarToRectangular;

* * * * *

![image128](Modelica.Blocks.Math.MeanI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Mean
=======================================================================================================================

**Calculate mean over period 1/f**

Information
-----------

::

This block calculates the mean of the input signal u over the given
period 1/f:

    1 T
    - ∫ u(t) dt
    T 0

Note: The output is updated after each period defined by 1/f.

::

Extends from
[Modelica.Blocks.Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- ---------------
  [Frequency](Modelica_SIunits.html#Modelica. f             Base frequency
  SIunits.Frequency)                                        [Hz]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Mean "Calculate mean over period 1/f"
      extends Modelica.Blocks.Interfaces.SISO;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
    protected 
      discrete Modelica.SIunits.Time t0 "Start time of simulation";
      Real x(start=0) "Integrator state";
    equation 
      when initial() then
          t0 = time;
      end when;
      der(x) = u;
      when sample(t0+1/f, 1/f) then
        y=f*x;
        reinit(x, 0);
      end when;
    end Mean;

* * * * *

![image129](Modelica.Blocks.Math.RectifiedMeanI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).RectifiedMean
=========================================================================================================================================

**Calculate refctified mean over period 1/f**

Information
-----------

::

This block calculates the rectified mean of the input signal u over the
given period 1/f, using the [mean
block](Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean).

Note: The output is updated after each period defined by 1/f.

::

Extends from
[Modelica.Blocks.Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- ---------------
  [Frequency](Modelica_SIunits.html#Modelica. f             Base frequency
  SIunits.Frequency)                                        [Hz]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RectifiedMean "Calculate refctified mean over period 1/f"
      extends Modelica.Blocks.Interfaces.SISO;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
      Mean mean(final f=f);
      Blocks.Math.Abs abs1;
    equation 
      connect(u, abs1.u);
      connect(abs1.y, mean.u);
      connect(mean.y, y);
    end RectifiedMean;

* * * * *

![image130](Modelica.Blocks.Math.RootMeanSquareI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).RootMeanSquare
===========================================================================================================================================

**Calculate root mean square over period 1/f**

Information
-----------

::

This block calculates the root mean square of the input signal u over
the given period 1/f, using the [mean
block](Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean).

Note: The output is updated after each period defined by 1/f.

::

Extends from
[Modelica.Blocks.Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- ---------------
  [Frequency](Modelica_SIunits.html#Modelica. f             Base frequency
  SIunits.Frequency)                                        [Hz]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RootMeanSquare "Calculate root mean square over period 1/f"
      extends Modelica.Blocks.Interfaces.SISO;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
      Blocks.Math.Product product;
      Mean mean(final f=f);
      Blocks.Math.Sqrt sqrt1;
    equation 

      connect(u, product.u1);
      connect(u, product.u2);
      connect(product.y, mean.u);
      connect(mean.y, sqrt1.u);
      connect(sqrt1.y, y);
    end RootMeanSquare;

* * * * *

![image131](Modelica.Blocks.Math.HarmonicI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Harmonic
===============================================================================================================================

**Calculate harmonic over period 1/f**

Information
-----------

::

This block calculates the root mean square and the phase angle of a
single harmonic *k* of the input signal u over the given period 1/f,
using the [mean
block](Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean).

Note: The output is updated after each period defined by 1/f.

Note: The harmonic is defined by `√2 rms cos(k 2 π f t - arg)`

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- ---------------
  [Frequency](Modelica_SIunits.html#Modelica. f             Base frequency
  SIunits.Frequency)                                        [Hz]

  Integer                                     k             Order of
                                                            harmonic
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name  Description
  --------------------------------------------- ----- ---------------------
  input                                         u     
  [RealInput](Modelica_Blocks_Interfaces.html#M       
  odelica.Blocks.Interfaces.RealInput)                

  output                                        y\_rm Root mean square of
  [RealOutput](Modelica_Blocks_Interfaces.html# s     polar representation
  Modelica.Blocks.Interfaces.RealOutput)              

  output                                        y\_ar Angle of polar
  [RealOutput](Modelica_Blocks_Interfaces.html# g     representation
  Modelica.Blocks.Interfaces.RealOutput)              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Harmonic "Calculate harmonic over period 1/f"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
      parameter Integer k(start=1) "Order of harmonic";
      Blocks.Sources.Sine sin1(
        final amplitude=sqrt(2),
        final phase=Modelica.Constants.pi/2,
        final freqHz=k*f);
      Blocks.Sources.Sine sin2(                final amplitude=sqrt(2),
        final phase=0,
        final freqHz=k*f);
      Blocks.Math.Product product1;
      Blocks.Math.Product product2;
      Mean mean1(final f=f);
      Mean mean2(final f=f);
      Blocks.Interfaces.RealInput u;
      Blocks.Interfaces.RealOutput y_rms "Root mean square of polar representation";
      Blocks.Interfaces.RealOutput y_arg "Angle of polar representation";
      Blocks.Math.RectangularToPolar rectangularToPolar;
    equation 

      connect(sin2.y, product2.u2);
      connect(sin1.y, product1.u1);
      connect(u, product1.u2);
      connect(u, product2.u1);
      connect(product2.y, mean2.u);
      connect(product1.y, mean1.u);
      connect(mean1.y, rectangularToPolar.u_re);
      connect(mean2.y, rectangularToPolar.u_im);
      connect(rectangularToPolar.y_abs, y_rms);
      connect(rectangularToPolar.y_arg, y_arg);
    end Harmonic;

* * * * *

![image132](Modelica.Blocks.Math.MaxI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Max
=====================================================================================================================

**Pass through the largest signal**

Information
-----------

::

This block computes the output **y** as *maximum* of the two Real inputs
**u1** and **u2**:

    y = max ( u1 , u2 );

::

Extends from
[Interfaces.SI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 1
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 2
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Max "Pass through the largest signal"
      extends Interfaces.SI2SO;
    equation 
      y = max(u1, u2);
    end Max;

* * * * *

![image133](Modelica.Blocks.Math.MinI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Min
=====================================================================================================================

**Pass through the smallest signal**

Information
-----------

::

This block computes the output **y** as *minimum* of the two Real inputs
**u1** and **u2**:

    y = min ( u1 , u2 );

::

Extends from
[Interfaces.SI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 1
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2   Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signal 2
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Min "Pass through the smallest signal"
      extends Interfaces.SI2SO;
    equation 
       y = min(u1, u2);
    end Min;

* * * * *

![image134](Modelica.Blocks.Math.EdgeI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).Edge
=======================================================================================================================

**Indicates rising edge of boolean signal**

Information
-----------

::

This block sets the Boolean output **y** to true, when the Boolean input
**u** shows a *rising edge*:

    y = edge( u );

::

Extends from
[Interfaces.BooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanSISO)
(Single Input Single Output control block with signals of type Boolean).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Edge "Indicates rising edge of boolean signal"
      extends Interfaces.BooleanSISO;
    equation 
      y = edge(u);
    end Edge;

* * * * *

![image135](Modelica.Blocks.Math.BooleanChangeI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).BooleanChange
=========================================================================================================================================

**Indicates boolean signal changing**

Information
-----------

::

This block sets the Boolean output **y** to true, when the Boolean input
**u** shows a *rising or falling edge*, i.e., when the signal changes:

    y = change( u );

::

Extends from
[Interfaces.BooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanSISO)
(Single Input Single Output control block with signals of type Boolean).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanChange "Indicates boolean signal changing"
      extends Interfaces.BooleanSISO;
    equation 
      y = change(u);
    end BooleanChange;

* * * * *

![image136](Modelica.Blocks.Math.IntegerChangeI.png) [Modelica.Blocks.Math](Modelica_Blocks_Math.html#Modelica.Blocks.Math).IntegerChange
=========================================================================================================================================

**Indicates integer signal changing**

Information
-----------

::

This block sets the Boolean output **y** to true, when the Integer input
**u** changes:

    y = change( u );

::

Extends from
[Interfaces.IntegerSIBooleanSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSIBooleanSO)
(Integer Input Boolean Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [IntegerInput](Modelica_Blocks_Interfaces.html#Mo      Integer input
  delica.Blocks.Interfaces.IntegerInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerChange "Indicates integer signal changing"
      extends Interfaces.IntegerSIBooleanSO;
    equation 
      y = change(u);
    end IntegerChange;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:38 2010.
