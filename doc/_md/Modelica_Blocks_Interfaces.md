% Modelica.Blocks.Interfaces
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).Interfaces
==================================================================

**Library of connectors and partial models for input/output blocks**

Information
-----------

::

This package contains interface definitions for **continuous**
input/output blocks with Real, Integer and Boolean signals. Furthermore,
it contains partial models for continuous and discrete blocks.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                         Description
  -------------------------------------------- ---------------------------
  ![image57](Modelica.Blocks.Interfaces.RealIn 'input Real' as connector
  putS.png)                                    
  [RealInput](Modelica_Blocks_Interfaces.html# 
  Modelica.Blocks.Interfaces.RealInput)        

  ![image58](Modelica.Blocks.Interfaces.RealOu 'output Real' as connector
  tputS.png)                                   
  [RealOutput](Modelica_Blocks_Interfaces.html 
  #Modelica.Blocks.Interfaces.RealOutput)      

  ![image59](Modelica.Blocks.Interfaces.Boolea 'input Boolean' as
  nInputS.png)                                 connector
  [BooleanInput](Modelica_Blocks_Interfaces.ht 
  ml#Modelica.Blocks.Interfaces.BooleanInput)  

  ![image60](Modelica.Blocks.Interfaces.Boolea 'output Boolean' as
  nOutputS.png)                                connector
  [BooleanOutput](Modelica_Blocks_Interfaces.h 
  tml#Modelica.Blocks.Interfaces.BooleanOutput 
  )                                            

  ![image61](Modelica.Blocks.Interfaces.Intege 'input Integer' as
  rInputS.png)                                 connector
  [IntegerInput](Modelica_Blocks_Interfaces.ht 
  ml#Modelica.Blocks.Interfaces.IntegerInput)  

  ![image62](Modelica.Blocks.Interfaces.Intege 'output Integer' as
  rOutputS.png)                                connector
  [IntegerOutput](Modelica_Blocks_Interfaces.h 
  tml#Modelica.Blocks.Interfaces.IntegerOutput 
  )                                            

  ![image63](Modelica.Blocks.Interfaces.RealVe Vector of Real inputs
  ctorInputS.png)                              
  [RealVectorInput](Modelica_Blocks_Interfaces 
  .html#Modelica.Blocks.Interfaces.RealVectorI 
  nput)                                        

  ![image64](Modelica.Blocks.Interfaces.Intege Vector of Integer inputs
  rVectorInputS.png)                           
  [IntegerVectorInput](Modelica_Blocks_Interfa 
  ces.html#Modelica.Blocks.Interfaces.IntegerV 
  ectorInput)                                  

  ![image65](Modelica.Blocks.Interfaces.Boolea Vector of Boolean inputs
  nVectorInputS.png)                           
  [BooleanVectorInput](Modelica_Blocks_Interfa 
  ces.html#Modelica.Blocks.Interfaces.BooleanV 
  ectorInput)                                  

  ![image66](Modelica.Blocks.Interfaces.BlockI Basic graphical layout of
  conS.png)                                    input/output block
  [BlockIcon](Modelica_Blocks_Interfaces.html# 
  Modelica.Blocks.Interfaces.BlockIcon)        

  ![image67](Modelica.Blocks.Interfaces.SOS.pn Single Output continuous
  g)                                           control block
  [SO](Modelica_Blocks_Interfaces.html#Modelic 
  a.Blocks.Interfaces.SO)                      

  ![image68](Modelica.Blocks.Interfaces.SOS.pn Multiple Output continuous
  g)                                           control block
  [MO](Modelica_Blocks_Interfaces.html#Modelic 
  a.Blocks.Interfaces.MO)                      

  ![image69](Modelica.Blocks.Interfaces.SISOS. Single Input Single Output
  png)                                         continuous control block
  [SISO](Modelica_Blocks_Interfaces.html#Model 
  ica.Blocks.Interfaces.SISO)                  

  ![image70](Modelica.Blocks.Interfaces.SI2SOS 2 Single Input / 1 Single
  .png)                                        Output continuous control
  [SI2SO](Modelica_Blocks_Interfaces.html#Mode block
  lica.Blocks.Interfaces.SI2SO)                

  ![image71](Modelica.Blocks.Interfaces.SIMOS. Single Input Multiple
  png)                                         Output continuous control
  [SIMO](Modelica_Blocks_Interfaces.html#Model block
  ica.Blocks.Interfaces.SIMO)                  

  ![image72](Modelica.Blocks.Interfaces.SIMOS. Multiple Input Single
  png)                                         Output continuous control
  [MISO](Modelica_Blocks_Interfaces.html#Model block
  ica.Blocks.Interfaces.MISO)                  

  ![image73](Modelica.Blocks.Interfaces.Partia Partial block with a
  lRealMISOS.png)                              RealVectorInput and a
  [PartialRealMISO](Modelica_Blocks_Interfaces RealOutput signal
  .html#Modelica.Blocks.Interfaces.PartialReal 
  MISO)                                        

  ![image74](Modelica.Blocks.Interfaces.MIMOS. Multiple Input Multiple
  png)                                         Output continuous control
  [MIMO](Modelica_Blocks_Interfaces.html#Model block
  ica.Blocks.Interfaces.MIMO)                  

  ![image75](Modelica.Blocks.Interfaces.MIMOS. Multiple Input Multiple
  png)                                         Output continuous control
  [MIMOs](Modelica_Blocks_Interfaces.html#Mode block with same number of
  lica.Blocks.Interfaces.MIMOs)                inputs and outputs

  ![image76](Modelica.Blocks.Interfaces.MI2MOS 2 Multiple Input / Multiple
  .png)                                        Output continuous control
  [MI2MO](Modelica_Blocks_Interfaces.html#Mode block
  lica.Blocks.Interfaces.MI2MO)                

  ![image77](Modelica.Blocks.Interfaces.Signal Base class for continuous
  SourceS.png)                                 signal source
  [SignalSource](Modelica_Blocks_Interfaces.ht 
  ml#Modelica.Blocks.Interfaces.SignalSource)  

  ![image78](Modelica.Blocks.Interfaces.SVcont Single-Variable continuous
  rolS.png)                                    controller
  [SVcontrol](Modelica_Blocks_Interfaces.html# 
  Modelica.Blocks.Interfaces.SVcontrol)        

  ![image79](Modelica.Blocks.Interfaces.SVcont Multi-Variable continuous
  rolS.png)                                    controller
  [MVcontrol](Modelica_Blocks_Interfaces.html# 
  Modelica.Blocks.Interfaces.MVcontrol)        

  ![image80](Modelica.Blocks.Interfaces.Discre Graphical layout of
  teBlockIconS.png)                            discrete block component
  [DiscreteBlockIcon](Modelica_Blocks_Interfac icon
  es.html#Modelica.Blocks.Interfaces.DiscreteB 
  lockIcon)                                    

  ![image81](Modelica.Blocks.Interfaces.Discre Base class of discrete
  teBlockIconS.png)                            control blocks
  [DiscreteBlock](Modelica_Blocks_Interfaces.h 
  tml#Modelica.Blocks.Interfaces.DiscreteBlock 
  )                                            

  ![image82](Modelica.Blocks.Interfaces.Discre Single Input Single Output
  teSISOS.png)                                 discrete control block
  [DiscreteSISO](Modelica_Blocks_Interfaces.ht 
  ml#Modelica.Blocks.Interfaces.DiscreteSISO)  

  ![image83](Modelica.Blocks.Interfaces.Discre Multiple Input Multiple
  teSISOS.png)                                 Output discrete control
  [DiscreteMIMO](Modelica_Blocks_Interfaces.ht block
  ml#Modelica.Blocks.Interfaces.DiscreteMIMO)  

  ![image84](Modelica.Blocks.Interfaces.Discre Multiple Input Multiple
  teSISOS.png)                                 Output discrete control
  [DiscreteMIMOs](Modelica_Blocks_Interfaces.h block
  tml#Modelica.Blocks.Interfaces.DiscreteMIMOs 
  )                                            

  ![image85](Modelica.Blocks.Interfaces.SVdisc Discrete Single-Variable
  reteS.png)                                   controller
  [SVdiscrete](Modelica_Blocks_Interfaces.html 
  #Modelica.Blocks.Interfaces.SVdiscrete)      

  ![image86](Modelica.Blocks.Interfaces.SVdisc Discrete Multi-Variable
  reteS.png)                                   controller
  [MVdiscrete](Modelica_Blocks_Interfaces.html 
  #Modelica.Blocks.Interfaces.MVdiscrete)      

  ![image87](Modelica.Blocks.Interfaces.Boolea Basic graphical layout of
  nBlockIconS.png)                             Boolean block
  [BooleanBlockIcon](Modelica_Blocks_Interface 
  s.html#Modelica.Blocks.Interfaces.BooleanBlo 
  ckIcon)                                      

  ![image88](Modelica.Blocks.Interfaces.Boolea Single Input Single Output
  nSISOS.png)                                  control block with signals
  [BooleanSISO](Modelica_Blocks_Interfaces.htm of type Boolean
  l#Modelica.Blocks.Interfaces.BooleanSISO)    

  ![image89](Modelica.Blocks.Interfaces.Boolea Multiple Input Multiple
  nSISOS.png)                                  Output continuous control
  [BooleanMIMOs](Modelica_Blocks_Interfaces.ht block with same number of
  ml#Modelica.Blocks.Interfaces.BooleanMIMOs)  inputs and outputs of
                                               boolean type

  ![image90](Modelica.Blocks.Interfaces.MI2Boo 2 Multiple Input / Boolean
  leanMOsS.png)                                Multiple Output block with
  [MI2BooleanMOs](Modelica_Blocks_Interfaces.h same signal lengths
  tml#Modelica.Blocks.Interfaces.MI2BooleanMOs 
  )                                            

  ![image91](Modelica.Blocks.Interfaces.MI2Boo 2 Single Input / Boolean
  leanMOsS.png)                                Single Output block
  [SI2BooleanSO](Modelica_Blocks_Interfaces.ht 
  ml#Modelica.Blocks.Interfaces.SI2BooleanSO)  

  ![image92](Modelica.Blocks.Interfaces.Boolea Base class for Boolean
  nSignalSourceS.png)                          signal sources
  [BooleanSignalSource](Modelica_Blocks_Interf 
  aces.html#Modelica.Blocks.Interfaces.Boolean 
  SignalSource)                                

  ![image93](Modelica.Blocks.Interfaces.Intege Basic graphical layout of
  rBlockIconS.png)                             Integer block
  [IntegerBlockIcon](Modelica_Blocks_Interface 
  s.html#Modelica.Blocks.Interfaces.IntegerBlo 
  ckIcon)                                      

  ![image94](Modelica.Blocks.Interfaces.Intege Single Integer Output
  rSOS.png)                                    continuous control block
  [IntegerSO](Modelica_Blocks_Interfaces.html# 
  Modelica.Blocks.Interfaces.IntegerSO)        

  ![image95](Modelica.Blocks.Interfaces.Intege Multiple Integer Output
  rSOS.png)                                    continuous control block
  [IntegerMO](Modelica_Blocks_Interfaces.html# 
  Modelica.Blocks.Interfaces.IntegerMO)        

  ![image96](Modelica.Blocks.Interfaces.Intege Base class for continuous
  rSOS.png)                                    Integer signal source
  [IntegerSignalSource](Modelica_Blocks_Interf 
  aces.html#Modelica.Blocks.Interfaces.Integer 
  SignalSource)                                

  ![image97](Modelica.Blocks.Interfaces.Intege Integer Input Boolean
  rSIBooleanSOS.png)                           Output continuous control
  [IntegerSIBooleanSO](Modelica_Blocks_Interfa block
  ces.html#Modelica.Blocks.Interfaces.IntegerS 
  IBooleanSO)                                  

  ![image98](Modelica.Blocks.Interfaces.Intege Multiple Integer Input
  rSIBooleanSOS.png)                           Multiple Boolean Output
  [IntegerMIBooleanMOs](Modelica_Blocks_Interf continuous control block
  aces.html#Modelica.Blocks.Interfaces.Integer with same number of inputs
  MIBooleanMOs)                                and outputs

  ![image99](Modelica.Blocks.Interfaces.Partia Partial block with a
  lIntegerSISOS.png)                           IntegerInput and an
  [PartialIntegerSISO](Modelica_Blocks_Interfa IntegerOutput signal
  ces.html#Modelica.Blocks.Interfaces.PartialI 
  ntegerSISO)                                  

  ![image100](Modelica.Blocks.Interfaces.Parti Partial block with an
  alIntegerMISOS.png)                          IntegerVectorInput and an
  [PartialIntegerMISO](Modelica_Blocks_Interfa IntegerOutput signal
  ces.html#Modelica.Blocks.Interfaces.PartialI 
  ntegerMISO)                                  

  ![image101](Modelica.Blocks.Interfaces.parti Basic graphical layout of
  alBooleanBlockIconS.png)                     logical block
  [partialBooleanBlockIcon](Modelica_Blocks_In 
  terfaces.html#Modelica.Blocks.Interfaces.par 
  tialBooleanBlockIcon)                        

  ![image102](Modelica.Blocks.Interfaces.parti Partial block with 1 input
  alBooleanSISOS.png)                          and 1 output Boolean signal
  [partialBooleanSISO](Modelica_Blocks_Interfa 
  ces.html#Modelica.Blocks.Interfaces.partialB 
  ooleanSISO)                                  

  ![image103](Modelica.Blocks.Interfaces.parti Partial block with 2 input
  alBooleanSI2SOS.png)                         and 1 output Boolean signal
  [partialBooleanSI2SO](Modelica_Blocks_Interf 
  aces.html#Modelica.Blocks.Interfaces.partial 
  BooleanSI2SO)                                

  ![image104](Modelica.Blocks.Interfaces.parti Partial block with 3 input
  alBooleanSI3SOS.png)                         and 1 output Boolean signal
  [partialBooleanSI3SO](Modelica_Blocks_Interf 
  aces.html#Modelica.Blocks.Interfaces.partial 
  BooleanSI3SO)                                

  ![image105](Modelica.Blocks.Interfaces.parti Partial block with 1 input
  alBooleanSIS.png)                            Boolean signal
  [partialBooleanSI](Modelica_Blocks_Interface 
  s.html#Modelica.Blocks.Interfaces.partialBoo 
  leanSI)                                      

  ![image106](Modelica.Blocks.Interfaces.parti Partial block with 1 output
  alBooleanSOS.png)                            Boolean signal
  [partialBooleanSO](Modelica_Blocks_Interface 
  s.html#Modelica.Blocks.Interfaces.partialBoo 
  leanSO)                                      

  ![image107](Modelica.Blocks.Interfaces.parti Partial source block (has 1
  alBooleanSourceS.png)                        output Boolean signal and
  [partialBooleanSource](Modelica_Blocks_Inter an appropriate default
  faces.html#Modelica.Blocks.Interfaces.partia icon)
  lBooleanSource)                              

  ![image108](Modelica.Blocks.Interfaces.parti Partial block to compare
  alBooleanThresholdComparisonS.png)           the Real input u with a
  [partialBooleanThresholdComparison](Modelica threshold and provide the
  _Blocks_Interfaces.html#Modelica.Blocks.Inte result as 1 Boolean output
  rfaces.partialBooleanThresholdComparison)    signal

  ![image109](Modelica.Blocks.Interfaces.parti Partial block with 2 Real
  alBooleanComparisonS.png)                    input and 1 Boolean output
  [partialBooleanComparison](Modelica_Blocks_I signal (the result of a
  nterfaces.html#Modelica.Blocks.Interfaces.pa comparison of the two Real
  rtialBooleanComparison)                      inputs

  ![image110](Modelica.Blocks.Interfaces.Parti Partial block with a
  alBooleanSISO_smallS.png)                    BooleanInput and a
  [PartialBooleanSISO\_small](Modelica_Blocks_ BooleanOutput signal and a
  Interfaces.html#Modelica.Blocks.Interfaces.P small block icon
  artialBooleanSISO_small)                     

  ![image111](Modelica.Blocks.Interfaces.Parti Partial block with a
  alBooleanMISOS.png)                          BooleanVectorInput and a
  [PartialBooleanMISO](Modelica_Blocks_Interfa BooleanOutput signal
  ces.html#Modelica.Blocks.Interfaces.PartialB 
  ooleanMISO)                                  

  ![image112](Modelica.Blocks.Interfaces.Adapt Obsolete package with
  orsS.png)                                    components to send signals
  [Adaptors](Modelica_Blocks_Interfaces_Adapto to a bus or receive signals
  rs.html#Modelica.Blocks.Interfaces.Adaptors) from a bus (only for
                                               backward compatibility)

  ![image113](Modelica.Blocks.Interfaces.Parti Partial block defining the
  alConversionBlockS.png)                      interface for conversion
  [PartialConversionBlock](Modelica_Blocks_Int blocks
  erfaces.html#Modelica.Blocks.Interfaces.Part 
  ialConversionBlock)                          
  ------------------------------------------------------------------------

* * * * *

![image114](Modelica.Blocks.Interfaces.RealInputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).RealInput
=========================================================================================================================================================

**'input Real' as connector**

Information
-----------

::

Connector with one input signal of type Real.

::

Extends from Real.

Modelica definition
-------------------

    connector RealInput = input Real "'input Real' as connector";

* * * * *

![image115](Modelica.Blocks.Interfaces.RealOutputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).RealOutput
===========================================================================================================================================================

**'output Real' as connector**

Information
-----------

::

Connector with one output signal of type Real.

::

Extends from Real.

Modelica definition
-------------------

    connector RealOutput = output Real "'output Real' as connector";

* * * * *

![image116](Modelica.Blocks.Interfaces.BooleanInputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanInput
===============================================================================================================================================================

**'input Boolean' as connector**

Information
-----------

::

Connector with one input signal of type Boolean.

::

Extends from Boolean.

Modelica definition
-------------------

    connector BooleanInput = input Boolean "'input Boolean' as connector";

* * * * *

![image117](Modelica.Blocks.Interfaces.BooleanOutputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanOutput
=================================================================================================================================================================

**'output Boolean' as connector**

Information
-----------

::

Connector with one output signal of type Boolean.

::

Extends from Boolean.

Modelica definition
-------------------

    connector BooleanOutput = output Boolean "'output Boolean' as connector";

* * * * *

![image118](Modelica.Blocks.Interfaces.IntegerInputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerInput
===============================================================================================================================================================

**'input Integer' as connector**

Information
-----------

::

Connector with one input signal of type Integer.

::

Extends from Integer.

Modelica definition
-------------------

    connector IntegerInput = input Integer "'input Integer' as connector";

* * * * *

![image119](Modelica.Blocks.Interfaces.IntegerOutputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerOutput
=================================================================================================================================================================

**'output Integer' as connector**

Information
-----------

::

Connector with one output signal of type Integer.

::

Extends from Integer.

Modelica definition
-------------------

    connector IntegerOutput = output Integer "'output Integer' as connector";

* * * * *

![image120](Modelica.Blocks.Interfaces.RealVectorInputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).RealVectorInput
=====================================================================================================================================================================

**Vector of Real inputs**

Information
-----------

::

Connector with one input signal of type Boolean.

::

Extends from Real.

Modelica definition
-------------------

    connector RealVectorInput =
                             input Real "Vector of Real inputs";

* * * * *

![image121](Modelica.Blocks.Interfaces.IntegerVectorInputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerVectorInput
===========================================================================================================================================================================

**Vector of Integer inputs**

Information
-----------

::

Connector with one input signal of type Boolean.

::

Extends from Integer.

Modelica definition
-------------------

    connector IntegerVectorInput =
                             input Integer "Vector of Integer inputs";

* * * * *

![image122](Modelica.Blocks.Interfaces.BooleanVectorInputI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanVectorInput
===========================================================================================================================================================================

**Vector of Boolean inputs**

Information
-----------

::

Connector with one input signal of type Boolean.

::

Extends from Boolean.

Modelica definition
-------------------

    connector BooleanVectorInput =
                             input Boolean "Vector of Boolean inputs";

* * * * *

![image123](Modelica.Blocks.Interfaces.BlockIconI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BlockIcon
=========================================================================================================================================================

**Basic graphical layout of input/output block**

Information
-----------

::

Block that has only the basic icon for an input/output block (no
declarations, no equations). Most blocks of package Modelica.Blocks
inherit directly or indirectly from this block.

::

Modelica definition
-------------------

    partial block BlockIcon 
      "Basic graphical layout of input/output block"


    end BlockIcon;

* * * * *

![image124](Modelica.Blocks.Interfaces.SOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SO
===========================================================================================================================================

**Single Output continuous control block**

Information
-----------

::

Block has one continuous Real output signal.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SO "Single Output continuous control block"
      extends BlockIcon;

      RealOutput y "Connector of Real output signal";

    end SO;

* * * * *

![image125](Modelica.Blocks.Interfaces.SOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MO
===========================================================================================================================================

**Multiple Output continuous control block**

Information
-----------

::

Block has one continuous Real output signal vector.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nout      1            Number of outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MO "Multiple Output continuous control block"
      extends BlockIcon;

      parameter Integer nout(min=1) = 1 "Number of outputs";
      RealOutput y[nout] "Connector of Real output signals";

    end MO;

* * * * *

![image126](Modelica.Blocks.Interfaces.SISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SISO
===============================================================================================================================================

**Single Input Single Output continuous control block**

Information
-----------

::

Block has one continuous Real input and one continuous Real output
signal.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

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

    partial block SISO 
      "Single Input Single Output continuous control block"
      extends BlockIcon;

      RealInput u "Connector of Real input signal";
      RealOutput y "Connector of Real output signal";
    end SISO;

* * * * *

![image127](Modelica.Blocks.Interfaces.SI2SOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SI2SO
=================================================================================================================================================

**2 Single Input / 1 Single Output continuous control block**

Information
-----------

::

Block has two continuous Real input signals u1 and u2 and one continuous
Real output signal y.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

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

    partial block SI2SO 
      "2 Single Input / 1 Single Output continuous control block"
      extends BlockIcon;

      RealInput u1 "Connector of Real input signal 1";
      RealInput u2 "Connector of Real input signal 2";
      RealOutput y "Connector of Real output signal";


    end SI2SO;

* * * * *

![image128](Modelica.Blocks.Interfaces.SIMOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SIMO
===============================================================================================================================================

**Single Input Multiple Output continuous control block**

Information
-----------

::

Block has one continuous Real input signal and a vector of continuous
Real output signals.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nout      1            Number of outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  input                                           u     Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mod       input signal
  elica.Blocks.Interfaces.RealInput)                    

  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SIMO 
      "Single Input Multiple Output continuous control block"
      extends BlockIcon;
      parameter Integer nout=1 "Number of outputs";
          RealInput u "Connector of Real input signal";
          RealOutput y[nout] "Connector of Real output signals";

    end SIMO;

* * * * *

![image129](Modelica.Blocks.Interfaces.SIMOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MISO
===============================================================================================================================================

**Multiple Input Single Output continuous control block**

Information
-----------

::

Block has a vector of continuous Real input signals and one continuous
Real output signal.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      nin       1            Number of inputs

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

    partial block MISO 
      "Multiple Input Single Output continuous control block"

      extends BlockIcon;
      parameter Integer nin=1 "Number of inputs";
      RealInput u[nin] "Connector of Real input signals";
      RealOutput y "Connector of Real output signal";
    end MISO;

* * * * *

![image130](Modelica.Blocks.Interfaces.PartialRealMISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).PartialRealMISO
=====================================================================================================================================================================

**Partial block with a RealVectorInput and a RealOutput signal**

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

    partial block PartialRealMISO 
      "Partial block with a RealVectorInput and a RealOutput signal"

      parameter Integer significantDigits(min=1) = 3 
        "Number of significant digits to be shown in dynamic diagram layer for y";
      parameter Integer nu(min=0)=0 "Number of input connections";
      Modelica.Blocks.Interfaces.RealVectorInput u[nu];
      Modelica.Blocks.Interfaces.RealOutput y;
    end PartialRealMISO;

* * * * *

![image131](Modelica.Blocks.Interfaces.MIMOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MIMO
===============================================================================================================================================

**Multiple Input Multiple Output continuous control block**

Information
-----------

::

Block has a continuous Real input and a continuous Real output signal
vector. The signal sizes of the input and output vector may be
different.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nin       1            Number of inputs
  Integer      nout      1            Number of outputs

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

    partial block MIMO 
      "Multiple Input Multiple Output continuous control block"

      extends BlockIcon;
      parameter Integer nin=1 "Number of inputs";
      parameter Integer nout=1 "Number of outputs";
      RealInput u[nin] "Connector of Real input signals";
      RealOutput y[nout] "Connector of Real output signals";
    end MIMO;

* * * * *

![image132](Modelica.Blocks.Interfaces.MIMOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MIMOs
================================================================================================================================================

**Multiple Input Multiple Output continuous control block with same
number of inputs and outputs**

Information
-----------

::

Block has a continuous Real input and a continuous Real output signal
vector where the signal sizes of the input and output vector are
identical.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u[n] Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signals
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y[n] Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signals
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MIMOs 
      "Multiple Input Multiple Output continuous control block with same number of inputs and outputs"

      extends BlockIcon;
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      RealInput u[n] "Connector of Real input signals";
      RealOutput y[n] "Connector of Real output signals";
    end MIMOs;

* * * * *

![image133](Modelica.Blocks.Interfaces.MI2MOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MI2MO
=================================================================================================================================================

**2 Multiple Input / Multiple Output continuous control block**

Information
-----------

::

Block has two continuous Real input vectors u1 and u2 and one continuous
Real output vector y. All vectors have the same number of elements.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Dimension of input and output vectors.

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u1[n Connector 1 of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ]    Real input signals
  lica.Blocks.Interfaces.RealInput)                     

  input                                            u2[n Connector 2 of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ]    Real input signals
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y[n] Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signals
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MI2MO 
      "2 Multiple Input / Multiple Output continuous control block"
      extends BlockIcon;

      parameter Integer n=1 "Dimension of input and output vectors.";

      RealInput u1[n] "Connector 1 of Real input signals";
      RealInput u2[n] "Connector 2 of Real input signals";
      RealOutput y[n] "Connector of Real output signals";

    end MI2MO;

* * * * *

![image134](Modelica.Blocks.Interfaces.SignalSourceI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SignalSource
===============================================================================================================================================================

**Base class for continuous signal source**

Information
-----------

::

Basic block for Real sources of package Blocks.Sources. This component
has one continuous Real output signal y and two parameters (offset,
startTime) to shift the generated signal.

::

Extends from
[SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name    Defaul Description
                                          t      
  ------------------------------- ------- ------ -------------------------
  Real                            offset  0      Offset of output signal y

  [Time](Modelica_SIunits.html#Mo startTi 0      Output y = offset for
  delica.SIunits.Time)            me             time < startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SignalSource "Base class for continuous signal source"
      extends SO;
      parameter Real offset=0 "Offset of output signal y";
      parameter SIunits.Time startTime=0 "Output y = offset for time < startTime";
    end SignalSource;

* * * * *

![image135](Modelica.Blocks.Interfaces.SVcontrolI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SVcontrol
=========================================================================================================================================================

**Single-Variable continuous controller**

Information
-----------

::

Block has two continuous Real input signals and one continuous Real
output signal. The block is designed to be used as base class for a
corresponding controller.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u\_s Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      setpoint input
  elica.Blocks.Interfaces.RealInput)                   signal

  input                                           u\_m Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      measurement input
  elica.Blocks.Interfaces.RealInput)                   signal

  output                                          y    Connector of
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo      actuator output
  delica.Blocks.Interfaces.RealOutput)                 signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SVcontrol "Single-Variable continuous controller"
      extends BlockIcon;

      RealInput u_s "Connector of setpoint input signal";
      RealInput u_m "Connector of measurement input signal";
      RealOutput y "Connector of actuator output signal";
    end SVcontrol;

* * * * *

![image136](Modelica.Blocks.Interfaces.SVcontrolI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MVcontrol
=========================================================================================================================================================

**Multi-Variable continuous controller**

Information
-----------

::

Block has two continuous Real input signal vectors and one continuous
Real output signal vector. The block is designed to be used as base
class for a corresponding controller.

::

Extends from
[BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name       Default      Description
  ------------ ---------- ------------ ---------------------------------
  Integer      nu\_s      1            Number of setpoint inputs
  Integer      nu\_m      1            Number of measurement inputs
  Integer      ny         1            Number of actuator outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                         Name    Description
  -------------------------------------------- ------- -------------------
  input                                        u\_s[nu Connector of
  [RealInput](Modelica_Blocks_Interfaces.html# \_s]    setpoint input
  Modelica.Blocks.Interfaces.RealInput)                signals

  input                                        u\_m[nu Connector of
  [RealInput](Modelica_Blocks_Interfaces.html# \_m]    measurement input
  Modelica.Blocks.Interfaces.RealInput)                signals

  output                                       y[ny]   Connector of
  [RealOutput](Modelica_Blocks_Interfaces.html         actuator output
  #Modelica.Blocks.Interfaces.RealOutput)              signals
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MVcontrol "Multi-Variable continuous controller"
      extends BlockIcon;

      parameter Integer nu_s=1 "Number of setpoint inputs";
      parameter Integer nu_m=1 "Number of measurement inputs";
      parameter Integer ny=1 "Number of actuator outputs";
      RealInput u_s[nu_s] "Connector of setpoint input signals";
      RealInput u_m[nu_m] "Connector of measurement input signals";
      RealOutput y[ny] "Connector of actuator output signals";
    end MVcontrol;

* * * * *

![image137](Modelica.Blocks.Interfaces.DiscreteBlockIconI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).DiscreteBlockIcon
=========================================================================================================================================================================

**Graphical layout of discrete block component icon**

Information
-----------

::

Block that has only the basic icon for an input/output, discrete block
(no declarations, no equations), e.g., from Blocks.Discrete.

::

Modelica definition
-------------------

    partial block DiscreteBlockIcon 
      "Graphical layout of discrete block component icon"

    end DiscreteBlockIcon;

* * * * *

![image138](Modelica.Blocks.Interfaces.DiscreteBlockIconI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).DiscreteBlock
=====================================================================================================================================================================

**Base class of discrete control blocks**

Information
-----------

::

Basic definitions of a discrete block of library Blocks.Discrete.

::

Extends from
[DiscreteBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.DiscreteBlockIcon)
(Graphical layout of discrete block component icon).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name       Default Description
  ---------------------------------- ---------- ------- --------------------
  [Time](Modelica_SIunits.html#Model samplePeri         Sample period of
  ica.SIunits.Time)                  od                 component [s]

  [Time](Modelica_SIunits.html#Model startTime  0       First sample time
  ica.SIunits.Time)                                     instant [s]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    partial block DiscreteBlock "Base class of discrete control blocks"
      extends DiscreteBlockIcon;

      parameter SI.Time samplePeriod(min=100*Modelica.Constants.eps, start = 0.1) 
        "Sample period of component";
      parameter SI.Time startTime=0 "First sample time instant";
    protected 
      output Boolean sampleTrigger "True, if sample time instant";
      output Boolean firstTrigger "Rising edge signals first sample instant";
    equation 
      sampleTrigger = sample(startTime, samplePeriod);
      when sampleTrigger then
        firstTrigger = time <= startTime + samplePeriod/2;
      end when;
    end DiscreteBlock;

* * * * *

![image139](Modelica.Blocks.Interfaces.DiscreteSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).DiscreteSISO
===============================================================================================================================================================

**Single Input Single Output discrete control block**

Information
-----------

::

Block has one continuous input and one continuous output signal which
are sampled due to the defined **samplePeriod** parameter.

::

Extends from
[DiscreteBlock](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.DiscreteBlock)
(Base class of discrete control blocks).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name       Default Description
  ---------------------------------- ---------- ------- --------------------
  [Time](Modelica_SIunits.html#Model samplePeri         Sample period of
  ica.SIunits.Time)                  od                 component [s]

  [Time](Modelica_SIunits.html#Model startTime  0       First sample time
  ica.SIunits.Time)                                     instant [s]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  input                                               u    Continuous
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic      input signal
  a.Blocks.Interfaces.RealInput)                           

  output                                              y    Continuous
  [RealOutput](Modelica_Blocks_Interfaces.html#Modeli      output signal
  ca.Blocks.Interfaces.RealOutput)                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block DiscreteSISO 
      "Single Input Single Output discrete control block"

      extends DiscreteBlock;

      Modelica.Blocks.Interfaces.RealInput u "Continuous input signal";
      Modelica.Blocks.Interfaces.RealOutput y "Continuous output signal";
    end DiscreteSISO;

* * * * *

![image140](Modelica.Blocks.Interfaces.DiscreteSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).DiscreteMIMO
===============================================================================================================================================================

**Multiple Input Multiple Output discrete control block**

Information
-----------

::

Block has a continuous input and a continuous output signal vector which
are sampled due to the defined **samplePeriod** parameter.

::

Extends from
[DiscreteBlock](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.DiscreteBlock)
(Base class of discrete control blocks).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name       Default Description
  ---------------------------------- ---------- ------- --------------------
  [Time](Modelica_SIunits.html#Model samplePeri         Sample period of
  ica.SIunits.Time)                  od                 component [s]

  [Time](Modelica_SIunits.html#Model startTime  0       First sample time
  ica.SIunits.Time)                                     instant [s]

  Integer                            nin        1       Number of inputs

  Integer                            nout       1       Number of outputs
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Name   Description
  -------------------------------------------------- ------ ---------------
  input                                              u[nin] Continuous
  [RealInput](Modelica_Blocks_Interfaces.html#Modeli        input signals
  ca.Blocks.Interfaces.RealInput)                           

  output                                             y[nout Continuous
  [RealOutput](Modelica_Blocks_Interfaces.html#Model ]      output signals
  ica.Blocks.Interfaces.RealOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block DiscreteMIMO 
      "Multiple Input Multiple Output discrete control block"

      extends DiscreteBlock;
      parameter Integer nin=1 "Number of inputs";
      parameter Integer nout=1 "Number of outputs";

      Modelica.Blocks.Interfaces.RealInput u[nin] "Continuous input signals";
      Modelica.Blocks.Interfaces.RealOutput y[nout] "Continuous output signals";

    end DiscreteMIMO;

* * * * *

![image141](Modelica.Blocks.Interfaces.DiscreteSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).DiscreteMIMOs
================================================================================================================================================================

**Multiple Input Multiple Output discrete control block**

Information
-----------

::

Block has a continuous input and a continuous output signal vector where
the signal sizes of the input and output vector are identical. These
signals are sampled due to the defined **samplePeriod** parameter.

::

Extends from
[DiscreteBlock](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.DiscreteBlock)
(Base class of discrete control blocks).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name      Defaul Description
                                             t      
  -------------------------------- --------- ------ -----------------------
  Integer                          n         1      Number of inputs (=
                                                    number of outputs)

  [Time](Modelica_SIunits.html#Mod samplePer        Sample period of
  elica.SIunits.Time)              iod              component [s]

  [Time](Modelica_SIunits.html#Mod startTime 0      First sample time
  elica.SIunits.Time)                               instant [s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  input                                               u[n] Continuous
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic      input signals
  a.Blocks.Interfaces.RealInput)                           

  output                                              y[n] Continuous
  [RealOutput](Modelica_Blocks_Interfaces.html#Modeli      output signals
  ca.Blocks.Interfaces.RealOutput)                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block DiscreteMIMOs 
      "Multiple Input Multiple Output discrete control block"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      extends DiscreteBlock;

      Modelica.Blocks.Interfaces.RealInput u[n] "Continuous input signals";
      Modelica.Blocks.Interfaces.RealOutput y[n] "Continuous output signals";


    end DiscreteMIMOs;

* * * * *

![image142](Modelica.Blocks.Interfaces.SVdiscreteI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SVdiscrete
===========================================================================================================================================================

**Discrete Single-Variable controller**

Information
-----------

::

Block has two continuous Real input signals and one continuous Real
output signal that are sampled due to the defined **samplePeriod**
parameter. The block is designed to be used as base class for a
corresponding controller.

::

Extends from
[DiscreteBlock](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.DiscreteBlock)
(Base class of discrete control blocks).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name       Default Description
  ---------------------------------- ---------- ------- --------------------
  [Time](Modelica_SIunits.html#Model samplePeri         Sample period of
  ica.SIunits.Time)                  od                 component [s]

  [Time](Modelica_SIunits.html#Model startTime  0       First sample time
  ica.SIunits.Time)                                     instant [s]
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ----------------------
  input                                         u\_s Continuous scalar
  [RealInput](Modelica_Blocks_Interfaces.html#M      setpoint input signal
  odelica.Blocks.Interfaces.RealInput)               

  input                                         u\_m Continuous scalar
  [RealInput](Modelica_Blocks_Interfaces.html#M      measurement input
  odelica.Blocks.Interfaces.RealInput)               signal

  output                                        y    Continuous scalar
  [RealOutput](Modelica_Blocks_Interfaces.html#      actuator output signal
  Modelica.Blocks.Interfaces.RealOutput)             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SVdiscrete "Discrete Single-Variable controller"
      extends DiscreteBlock;

      Discrete.Sampler sampler_s(
        final samplePeriod=samplePeriod,
        final startTime=startTime);
      Discrete.Sampler sampler_m(
        final samplePeriod=samplePeriod,
        final startTime=startTime);
      Modelica.Blocks.Interfaces.RealInput u_s 
        "Continuous scalar setpoint input signal";
      Modelica.Blocks.Interfaces.RealInput u_m 
        "Continuous scalar measurement input signal";
      Modelica.Blocks.Interfaces.RealOutput y 
        "Continuous scalar actuator output signal";
    equation 
      connect(u_s, sampler_s.u);
      connect(u_m, sampler_m.u);
    end SVdiscrete;

* * * * *

![image143](Modelica.Blocks.Interfaces.SVdiscreteI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MVdiscrete
===========================================================================================================================================================

**Discrete Multi-Variable controller**

Information
-----------

::

Block has two continuous Real input signal vectors and one continuous
Real output signal vector. The vector signals are sampled due to the
defined **samplePeriod** parameter. The block is designed to be used as
base class for a corresponding controller.

::

Extends from
[DiscreteBlock](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.DiscreteBlock)
(Base class of discrete control blocks).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name       Default Description
  ---------------------------------- ---------- ------- --------------------
  [Time](Modelica_SIunits.html#Model samplePeri         Sample period of
  ica.SIunits.Time)                  od                 component [s]

  [Time](Modelica_SIunits.html#Model startTime  0       First sample time
  ica.SIunits.Time)                                     instant [s]

  Integer                            nu\_s      1       Number of setpoint
                                                        inputs

  Integer                            nu\_m      1       Number of
                                                        measurement inputs

  Integer                            ny         1       Number of actuator
                                                        outputs
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name    Description
  --------------------------------------------- ------- -------------------
  input                                         u\_s[nu Continuous setpoint
  [RealInput](Modelica_Blocks_Interfaces.html#M \_s]    input signals
  odelica.Blocks.Interfaces.RealInput)                  

  input                                         u\_m[nu Continuous
  [RealInput](Modelica_Blocks_Interfaces.html#M \_m]    measurement input
  odelica.Blocks.Interfaces.RealInput)                  signals

  output                                        y[ny]   Continuous actuator
  [RealOutput](Modelica_Blocks_Interfaces.html#         output signals
  Modelica.Blocks.Interfaces.RealOutput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MVdiscrete "Discrete Multi-Variable controller"
      extends DiscreteBlock;
      parameter Integer nu_s=1 "Number of setpoint inputs";
      parameter Integer nu_m=1 "Number of measurement inputs";
      parameter Integer ny=1 "Number of actuator outputs";
      Discrete.Sampler sampler_s[nu_s](
        each final samplePeriod=samplePeriod,
        each final startTime=startTime);
      Discrete.Sampler sampler_m[nu_m](
        each final samplePeriod=samplePeriod,
        each final startTime=startTime);
      Modelica.Blocks.Interfaces.RealInput u_s[nu_s] 
        "Continuous setpoint input signals";
      Modelica.Blocks.Interfaces.RealInput u_m[nu_m] 
        "Continuous measurement input signals";
      Modelica.Blocks.Interfaces.RealOutput y[ny] 
        "Continuous actuator output signals";
    equation 
      connect(u_s, sampler_s.u);
      connect(u_m, sampler_m.u);
    end MVdiscrete;

* * * * *

![image144](Modelica.Blocks.Interfaces.BooleanBlockIconI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanBlockIcon
=======================================================================================================================================================================

**Basic graphical layout of Boolean block**

Information
-----------

::

Block that has only the basic icon for an input/output, Boolean block
(no declarations, no equations).

::

Modelica definition
-------------------

    partial block BooleanBlockIcon 
      "Basic graphical layout of Boolean block"


    end BooleanBlockIcon;

* * * * *

![image145](Modelica.Blocks.Interfaces.BooleanSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanSISO
=============================================================================================================================================================

**Single Input Single Output control block with signals of type
Boolean**

Information
-----------

::

Block has one continuous Boolean input and one continuous Boolean output
signal.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

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

    partial block BooleanSISO 
      "Single Input Single Output control block with signals of type Boolean"

      extends BooleanBlockIcon;

    public 
      BooleanInput u "Connector of Boolean input signal";
      BooleanOutput y "Connector of Boolean output signal";

    end BooleanSISO;

* * * * *

![image146](Modelica.Blocks.Interfaces.BooleanSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanMIMOs
==============================================================================================================================================================

**Multiple Input Multiple Output continuous control block with same
number of inputs and outputs of boolean type**

Information
-----------

::

Block has a continuous Boolean input and a continuous Boolean output
signal vector where the signal sizes of the input and output vector are
identical.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u[n] Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#M      Boolean input
  odelica.Blocks.Interfaces.BooleanInput)               signals

  output                                           y[n] Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#      Boolean output
  Modelica.Blocks.Interfaces.BooleanOutput)             signals
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block BooleanMIMOs 
      "Multiple Input Multiple Output continuous control block with same number of inputs and outputs of boolean type"

      extends BooleanBlockIcon;
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      BooleanInput u[n] "Connector of Boolean input signals";
      BooleanOutput y[n] "Connector of Boolean output signals";
    end BooleanMIMOs;

* * * * *

![image147](Modelica.Blocks.Interfaces.MI2BooleanMOsI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).MI2BooleanMOs
=================================================================================================================================================================

**2 Multiple Input / Boolean Multiple Output block with same signal
lengths**

Information
-----------

::

Block has two Boolean input vectors u1 and u2 and one Boolean output
vector y. All vectors have the same number of elements.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Dimension of input and output vectors.

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  input                                            u1[n Connector 1 of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ]    Boolean input
  lica.Blocks.Interfaces.RealInput)                     signals

  input                                            u2[n Connector 2 of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ]    Boolean input
  lica.Blocks.Interfaces.RealInput)                     signals

  output                                           y[n] Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#      Boolean output
  Modelica.Blocks.Interfaces.BooleanOutput)             signals
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MI2BooleanMOs 
      "2 Multiple Input / Boolean Multiple Output block with same signal lengths"

      extends BooleanBlockIcon;
      parameter Integer n=1 "Dimension of input and output vectors.";
      RealInput u1[n] "Connector 1 of Boolean input signals";
      RealInput u2[n] "Connector 2 of Boolean input signals";
      BooleanOutput y[n] "Connector of Boolean output signals";
    end MI2BooleanMOs;

* * * * *

![image148](Modelica.Blocks.Interfaces.MI2BooleanMOsI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).SI2BooleanSO
================================================================================================================================================================

**2 Single Input / Boolean Single Output block**

Information
-----------

::

Block has two Boolean input signals u1 and u2 and one Boolean output
signal y.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  input                                            u1   Connector 1 of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      Boolean input
  lica.Blocks.Interfaces.RealInput)                     signals

  input                                            u2   Connector 2 of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      Boolean input
  lica.Blocks.Interfaces.RealInput)                     signals

  output                                           y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#      Boolean output
  Modelica.Blocks.Interfaces.BooleanOutput)             signals
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SI2BooleanSO 
      "2 Single Input / Boolean Single Output block"

      extends BooleanBlockIcon;
      input RealInput u1 "Connector 1 of Boolean input signals";
      input RealInput u2 "Connector 2 of Boolean input signals";
      output BooleanOutput y "Connector of Boolean output signals";

    end SI2BooleanSO;

* * * * *

![image149](Modelica.Blocks.Interfaces.BooleanSignalSourceI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).BooleanSignalSource
=============================================================================================================================================================================

**Base class for Boolean signal sources**

Information
-----------

::

Basic block for Boolean sources of package Blocks.Sources. This
component has one continuous Boolean output signal y.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block BooleanSignalSource 
      "Base class for Boolean signal sources"

      extends BooleanBlockIcon;
      BooleanOutput y "Connector of Boolean output signal";

    end BooleanSignalSource;

* * * * *

![image150](Modelica.Blocks.Interfaces.IntegerBlockIconI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerBlockIcon
=======================================================================================================================================================================

**Basic graphical layout of Integer block**

Information
-----------

::

Block that has only the basic icon for an input/output, Integer block
(no declarations, no equations).

::

Modelica definition
-------------------

    partial block IntegerBlockIcon 
      "Basic graphical layout of Integer block"

    end IntegerBlockIcon;

* * * * *

![image151](Modelica.Blocks.Interfaces.IntegerSOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerSO
=========================================================================================================================================================

**Single Integer Output continuous control block**

Information
-----------

::

Block has one continuous Integer output signal.

::

Extends from
[IntegerBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerBlockIcon)
(Basic graphical layout of Integer block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block IntegerSO 
      "Single Integer Output continuous control block"
      extends IntegerBlockIcon;

      IntegerOutput y "Connector of Integer output signal";
    end IntegerSO;

* * * * *

![image152](Modelica.Blocks.Interfaces.IntegerSOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerMO
=========================================================================================================================================================

**Multiple Integer Output continuous control block**

Information
-----------

::

Block has one continuous Integer output signal vector.

::

Extends from
[IntegerBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerBlockIcon)
(Basic graphical layout of Integer block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nout      1            Number of outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  output                                          y[nou Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html t]    Integer output
  #Modelica.Blocks.Interfaces.IntegerOutput)            signals
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block IntegerMO 
      "Multiple Integer Output continuous control block"
      extends IntegerBlockIcon;

      parameter Integer nout(min=1) = 1 "Number of outputs";
      IntegerOutput y[nout] "Connector of Integer output signals";
    end IntegerMO;

* * * * *

![image153](Modelica.Blocks.Interfaces.IntegerSOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerSignalSource
===================================================================================================================================================================

**Base class for continuous Integer signal source**

Information
-----------

::

Basic block for Integer sources of package Blocks.Sources. This
component has one continuous Integer output signal y and two parameters
(offset, startTime) to shift the generated signal.

::

Extends from
[IntegerSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSO)
(Single Integer Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name    Defaul Description
                                          t      
  ------------------------------- ------- ------ -------------------------
  Integer                         offset  0      Offset of output signal y

  [Time](Modelica_SIunits.html#Mo startTi 0      Output y = offset for
  delica.SIunits.Time)            me             time < startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block IntegerSignalSource 
      "Base class for continuous Integer signal source"
      extends IntegerSO;
      parameter Integer offset=0 "Offset of output signal y";
      parameter SI.Time startTime=0 "Output y = offset for time < startTime";
    end IntegerSignalSource;

* * * * *

![image154](Modelica.Blocks.Interfaces.IntegerSIBooleanSOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerSIBooleanSO
===========================================================================================================================================================================

**Integer Input Boolean Output continuous control block**

Information
-----------

::

Block has a continuous Integer input and a continuous Boolean output
signal.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

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

    partial block IntegerSIBooleanSO 
      "Integer Input Boolean Output continuous control block"

      extends BooleanBlockIcon;
      IntegerInput u "Connector of Integer input signal";
      BooleanOutput y "Connector of Boolean output signal";
    end IntegerSIBooleanSO;

* * * * *

![image155](Modelica.Blocks.Interfaces.IntegerSIBooleanSOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).IntegerMIBooleanMOs
============================================================================================================================================================================

**Multiple Integer Input Multiple Boolean Output continuous control
block with same number of inputs and outputs**

Information
-----------

::

Block has a continuous Integer input and a continuous Boolean output
signal vector where the signal sizes of the input and output vector are
identical.

::

Extends from
[BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u[n] Connector of
  [IntegerInput](Modelica_Blocks_Interfaces.html#M      Integer input
  odelica.Blocks.Interfaces.IntegerInput)               signals

  output                                           y[n] Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#      Boolean output
  Modelica.Blocks.Interfaces.BooleanOutput)             signals
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block IntegerMIBooleanMOs 
      "Multiple Integer Input Multiple Boolean Output continuous control block with same number of inputs and outputs"

      extends BooleanBlockIcon;
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      IntegerInput u[n] "Connector of Integer input signals";
      BooleanOutput y[n] "Connector of Boolean output signals";
    end IntegerMIBooleanMOs;

* * * * *

![image156](Modelica.Blocks.Interfaces.PartialIntegerSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).PartialIntegerSISO
===========================================================================================================================================================================

**Partial block with a IntegerInput and an IntegerOutput signal**

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Integer input
  [IntegerInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.IntegerInput)                         

  output                                                y    Integer
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.IntegerOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block PartialIntegerSISO 
      "Partial block with a IntegerInput and an IntegerOutput signal"

      Modelica.Blocks.Interfaces.IntegerInput u "Integer input signal";
      Modelica.Blocks.Interfaces.IntegerOutput y "Integer output signal";
    end PartialIntegerSISO;

* * * * *

![image157](Modelica.Blocks.Interfaces.PartialIntegerMISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).PartialIntegerMISO
===========================================================================================================================================================================

**Partial block with an IntegerVectorInput and an IntegerOutput signal**

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [IntegerVectorInput](Modelica_Blocks_Interfaces.htm ]    Integer input
  l#Modelica.Blocks.Interfaces.IntegerVectorInput)         signals

  output                                              y    Integer output
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.IntegerOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block PartialIntegerMISO 
      "Partial block with an IntegerVectorInput and an IntegerOutput signal"

      parameter Integer nu(min=0)=0 "Number of input connections";
      Modelica.Blocks.Interfaces.IntegerVectorInput u[nu] 
        "Vector of Integer input signals";
      Modelica.Blocks.Interfaces.IntegerOutput y "Integer output signal";
    end PartialIntegerMISO;

* * * * *

![image158](Modelica.Blocks.Interfaces.partialBooleanBlockIconI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanBlockIcon
=====================================================================================================================================================================================

**Basic graphical layout of logical block**

Information
-----------

::

Block that has only the basic icon for an input/output, Boolean block
(no declarations, no equations) used especially in the Blocks.Logical
library.

::

Modelica definition
-------------------

    partial block partialBooleanBlockIcon 
      "Basic graphical layout of logical block"

    end partialBooleanBlockIcon;

* * * * *

![image159](Modelica.Blocks.Interfaces.partialBooleanSISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanSISO
===========================================================================================================================================================================

**Partial block with 1 input and 1 output Boolean signal**

Information
-----------

::

Block has one continuous Boolean input and one continuous Boolean output
signal with a 3D icon (e.g., used in Blocks.Logical library).

::

Extends from
[partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

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

    partial block partialBooleanSISO 
      "Partial block with 1 input and 1 output Boolean signal"
      extends partialBooleanBlockIcon;
             Blocks.Interfaces.BooleanInput u "Connector of Boolean input signal";
             Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";


    end partialBooleanSISO;

* * * * *

![image160](Modelica.Blocks.Interfaces.partialBooleanSI2SOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanSI2SO
=============================================================================================================================================================================

**Partial block with 2 input and 1 output Boolean signal**

Information
-----------

::

Block has two continuous Boolean input and one continuous Boolean output
signal with a 3D icon (e.g., used in Blocks.Logical library).

::

Extends from
[partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanSI2SO 
      "Partial block with 2 input and 1 output Boolean signal"
      extends partialBooleanBlockIcon;
             Blocks.Interfaces.BooleanInput u1 
        "Connector of first Boolean input signal";
             Blocks.Interfaces.BooleanInput u2 
        "Connector of second Boolean input signal";
             Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";


    end partialBooleanSI2SO;

* * * * *

![image161](Modelica.Blocks.Interfaces.partialBooleanSI3SOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanSI3SO
=============================================================================================================================================================================

**Partial block with 3 input and 1 output Boolean signal**

Information
-----------

::

Block has three continuous Boolean input and one continuous Boolean
output signal with a 3D icon (e.g., used in Blocks.Logical library).

::

Extends from
[partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u3   Connector of third
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanSI3SO 
      "Partial block with 3 input and 1 output Boolean signal"
      extends partialBooleanBlockIcon;
             Blocks.Interfaces.BooleanInput u1 
        "Connector of first Boolean input signal";
             Blocks.Interfaces.BooleanInput u2 
        "Connector of second Boolean input signal";
             Blocks.Interfaces.BooleanInput u3 
        "Connector of third Boolean input signal";
             Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";


    end partialBooleanSI3SO;

* * * * *

![image162](Modelica.Blocks.Interfaces.partialBooleanSII.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanSI
=======================================================================================================================================================================

**Partial block with 1 input Boolean signal**

Information
-----------

::

Block has one continuous Boolean input signal with a 3D icon (e.g., used
in Blocks.Logical library).

::

Extends from
[partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#M      Boolean input
  odelica.Blocks.Interfaces.BooleanInput)               signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanSI 
      "Partial block with 1 input Boolean signal"
      extends partialBooleanBlockIcon;

             Blocks.Interfaces.BooleanInput u "Connector of Boolean input signal";


    end partialBooleanSI;

* * * * *

![image163](Modelica.Blocks.Interfaces.partialBooleanSOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanSO
=======================================================================================================================================================================

**Partial block with 1 output Boolean signal**

Information
-----------

::

Block has one continuous Boolean output signal with a 3D icon (e.g.,
used in Blocks.Logical library).

::

Extends from
[partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanSO 
      "Partial block with 1 output Boolean signal"

             Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";
      extends partialBooleanBlockIcon;


    end partialBooleanSO;

* * * * *

![image164](Modelica.Blocks.Interfaces.partialBooleanSourceI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanSource
===============================================================================================================================================================================

**Partial source block (has 1 output Boolean signal and an appropriate
default icon)**

Information
-----------

::

Basic block for Boolean sources of package Blocks.Sources. This
component has one continuous Boolean output signal y and a 3D icon
(e.g., used in Blocks.Logical library).

::

Extends from
[partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanSource 
      "Partial source block (has 1 output Boolean signal and an appropriate default icon)"
      extends partialBooleanBlockIcon;

      Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";


    end partialBooleanSource;

* * * * *

![image165](Modelica.Blocks.Interfaces.partialBooleanThresholdComparisonI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanThresholdComparison
=========================================================================================================================================================================================================

**Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal**

Information
-----------

::

Block has one continuous Real input and one continuous Boolean output
signal as well as a 3D icon (e.g., used in Blocks.Logical library).

::

Parameters
----------

  Type     Name          Default     Description
  -------- ------------- ----------- --------------------------------------
  Real     threshold     0           Comparison with respect to threshold

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Model      Boolean input
  ica.Blocks.Interfaces.RealInput)                       signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanThresholdComparison 
      "Partial block to compare the Real input u with a threshold and provide the result as 1 Boolean output signal"

      parameter Real threshold=0 "Comparison with respect to threshold";

      Blocks.Interfaces.RealInput u "Connector of Boolean input signal";
      Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";


    end partialBooleanThresholdComparison;

* * * * *

![image166](Modelica.Blocks.Interfaces.partialBooleanComparisonI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).partialBooleanComparison
=======================================================================================================================================================================================

**Partial block with 2 Real input and 1 Boolean output signal (the
result of a comparison of the two Real inputs**

Information
-----------

::

Block has two continuous Real input and one continuous Boolean output
signal as a result of the comparision of the two input signals. The
block has a 3D icon (e.g., used in Blocks.Logical library).

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  input                                           u2   Connector of second
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block partialBooleanComparison 
      "Partial block with 2 Real input and 1 Boolean output signal (the result of a comparison of the two Real inputs"

      Blocks.Interfaces.RealInput u1 "Connector of first Boolean input signal";
      Blocks.Interfaces.RealInput u2 "Connector of second Boolean input signal";
      Blocks.Interfaces.BooleanOutput y "Connector of Boolean output signal";


    end partialBooleanComparison;

* * * * *

![image167](Modelica.Blocks.Interfaces.PartialBooleanSISO_smallI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).PartialBooleanSISO\_small
========================================================================================================================================================================================

**Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon**

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Boolean input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.BooleanInput)                         

  output                                                y    Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.BooleanOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block PartialBooleanSISO_small 
      "Partial block with a BooleanInput and a BooleanOutput signal and a small block icon"

      Modelica.Blocks.Interfaces.BooleanInput u "Boolean input signal";
      Modelica.Blocks.Interfaces.BooleanOutput y "Boolean output signal";
    end PartialBooleanSISO_small;

* * * * *

![image168](Modelica.Blocks.Interfaces.PartialBooleanMISOI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).PartialBooleanMISO
===========================================================================================================================================================================

**Partial block with a BooleanVectorInput and a BooleanOutput signal**

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    Boolean input
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         signals

  output                                              y    Boolean output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block PartialBooleanMISO 
      "Partial block with a BooleanVectorInput and a BooleanOutput signal"

      parameter Integer nu(min=0)=0 "Number of input connections";
      Modelica.Blocks.Interfaces.BooleanVectorInput u[nu] 
        "Vector of Boolean input signals";
      Modelica.Blocks.Interfaces.BooleanOutput y "Boolean output signal";
    initial equation 
      pre(u) = fill(false,nu);
    end PartialBooleanMISO;

* * * * *

![image169](Modelica.Blocks.Interfaces.PartialConversionBlockI.png) [Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).PartialConversionBlock
===================================================================================================================================================================================

**Partial block defining the interface for conversion blocks**

Information
-----------

::

This block defines the interface of a conversion block that converts
from one unit into another one.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                  Nam Description
                                        e   
  ------------------------------------- --- ------------------------------
  input                                 u   Connector of Real input signal
  [RealInput](Modelica_Blocks_Interface     to be converted
  s.html#Modelica.Blocks.Interfaces.Rea     
  lInput)                                   

  output                                y   Connector of Real output
  [RealOutput](Modelica_Blocks_Interfac     signal containing input signal
  es.html#Modelica.Blocks.Interfaces.Re     u in another unit
  alOutput)                                 
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block PartialConversionBlock 
      "Partial block defining the interface for conversion blocks"

      RealInput u "Connector of Real input signal to be converted";
      RealOutput y 
        "Connector of Real output signal containing input signal u in another unit";

    end PartialConversionBlock;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:37 2010.
