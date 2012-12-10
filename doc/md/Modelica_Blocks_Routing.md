% Modelica.Blocks.Routing
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).Routing
===============================================================

**Library of blocks to combine and extract signals**

Information
-----------

::

This package contains blocks to combine and extract signals.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image16](Modelica.Blocks.Routing.Replicator Signal replicator
  S.png)                                        
  [Replicator](Modelica_Blocks_Routing.html#Mod 
  elica.Blocks.Routing.Replicator)              

  ![image17](Modelica.Blocks.Routing.ExtractSig Extract signals from an
  nalS.png)                                     input signal vector
  [ExtractSignal](Modelica_Blocks_Routing.html# 
  Modelica.Blocks.Routing.ExtractSignal)        

  ![image18](Modelica.Blocks.Routing.ExtractorS Extract scalar signal out
  .png)                                         of signal vector dependent
  [Extractor](Modelica_Blocks_Routing.html#Mode on IntegerRealInput index
  lica.Blocks.Routing.Extractor)                

  ![image19](Modelica.Blocks.Routing.Multiplex2 Multiplexer block for two
  S.png)                                        input connectors
  [Multiplex2](Modelica_Blocks_Routing.html#Mod 
  elica.Blocks.Routing.Multiplex2)              

  ![image20](Modelica.Blocks.Routing.Multiplex3 Multiplexer block for
  S.png)                                        three input connectors
  [Multiplex3](Modelica_Blocks_Routing.html#Mod 
  elica.Blocks.Routing.Multiplex3)              

  ![image21](Modelica.Blocks.Routing.Multiplex4 Multiplexer block for four
  S.png)                                        input connectors
  [Multiplex4](Modelica_Blocks_Routing.html#Mod 
  elica.Blocks.Routing.Multiplex4)              

  ![image22](Modelica.Blocks.Routing.Multiplex5 Multiplexer block for five
  S.png)                                        input connectors
  [Multiplex5](Modelica_Blocks_Routing.html#Mod 
  elica.Blocks.Routing.Multiplex5)              

  ![image23](Modelica.Blocks.Routing.Multiplex6 Multiplexer block for six
  S.png)                                        input connectors
  [Multiplex6](Modelica_Blocks_Routing.html#Mod 
  elica.Blocks.Routing.Multiplex6)              

  ![image24](Modelica.Blocks.Routing.DeMultiple DeMultiplexer block for
  x2S.png)                                      two output connectors
  [DeMultiplex2](Modelica_Blocks_Routing.html#M 
  odelica.Blocks.Routing.DeMultiplex2)          

  ![image25](Modelica.Blocks.Routing.DeMultiple DeMultiplexer block for
  x3S.png)                                      three output connectors
  [DeMultiplex3](Modelica_Blocks_Routing.html#M 
  odelica.Blocks.Routing.DeMultiplex3)          

  ![image26](Modelica.Blocks.Routing.DeMultiple DeMultiplexer block for
  x4S.png)                                      four output connectors
  [DeMultiplex4](Modelica_Blocks_Routing.html#M 
  odelica.Blocks.Routing.DeMultiplex4)          

  ![image27](Modelica.Blocks.Routing.DeMultiple DeMultiplexer block for
  x5S.png)                                      five output connectors
  [DeMultiplex5](Modelica_Blocks_Routing.html#M 
  odelica.Blocks.Routing.DeMultiplex5)          

  ![image28](Modelica.Blocks.Routing.DeMultiple DeMultiplexer block for
  x6S.png)                                      six output connectors
  [DeMultiplex6](Modelica_Blocks_Routing.html#M 
  odelica.Blocks.Routing.DeMultiplex6)          

  ![image29](Modelica.Blocks.Routing.RealPassTh Pass a Real signal through
  roughS.png)                                   without modification
  [RealPassThrough](Modelica_Blocks_Routing.htm 
  l#Modelica.Blocks.Routing.RealPassThrough)    

  ![image30](Modelica.Blocks.Routing.IntegerPas Pass a Integer signal
  sThroughS.png)                                through without
  [IntegerPassThrough](Modelica_Blocks_Routing. modification
  html#Modelica.Blocks.Routing.IntegerPassThrou 
  gh)                                           

  ![image31](Modelica.Blocks.Routing.BooleanPas Pass a Boolean signal
  sThroughS.png)                                through without
  [BooleanPassThrough](Modelica_Blocks_Routing. modification
  html#Modelica.Blocks.Routing.BooleanPassThrou 
  gh)                                           
  ------------------------------------------------------------------------

* * * * *

![image32](Modelica.Blocks.Routing.ReplicatorI.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Replicator
==============================================================================================================================================

**Signal replicator**

Information
-----------

::

This block replicates the input signal to an array of `nout` identical
output signals.

::

Extends from
[Modelica.Blocks.Interfaces.SIMO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SIMO)
(Single Input Multiple Output continuous control block).

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

    block Replicator "Signal replicator"
      extends Modelica.Blocks.Interfaces.SIMO;
    equation 
      y = fill(u, nout);
    end Replicator;

* * * * *

![image33](Modelica.Blocks.Routing.ExtractSignalI.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).ExtractSignal
====================================================================================================================================================

**Extract signals from an input signal vector**

Information
-----------

::

Extract signals from the input connector and transfer them to the output
connector.

The extracting scheme is given by the integer vector 'extract'. This
vector specifies, which input signals are taken and in which order they
are transfered to the output vector. Note, that the dimension of
'extract' has to match the number of outputs. Additionally, the
dimensions of the input connector signals and the output connector
signals have to be explicitly defined via the parameters 'nin' and
'nout'.

Example:

    nin = 7 "Number of inputs";
    nout = 4 "Number of outputs";
    extract[nout] = {6,3,3,2} "Extracting vector";

extracts four output signals (nout=4) from the seven elements of the
input vector (nin=7):

    output no. 1 is set equal to input no. 6
    output no. 2 is set equal to input no. 3
    output no. 3 is set equal to input no. 3
    output no. 4 is set equal to input no. 2

::

Extends from
[Modelica.Blocks.Interfaces.MIMO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO)
(Multiple Input Multiple Output continuous control block).

Parameters
----------

  Type         Name               Default      Description
  ------------ ------------------ ------------ ----------------------
  Integer      nin                1            Number of inputs
  Integer      nout               1            Number of outputs
  Integer      extract[nout]      1:nout       Extracting vector

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

    block ExtractSignal "Extract signals from an input signal vector"
      extends Modelica.Blocks.Interfaces.MIMO;
      parameter Integer extract[nout]=1:nout "Extracting vector";

    equation 
      for i in 1:nout loop
        y[i] = u[extract[i]];

      end for;
    end ExtractSignal;

* * * * *

![image34](Modelica.Blocks.Routing.ExtractorI.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Extractor
============================================================================================================================================

**Extract scalar signal out of signal vector dependent on
IntegerRealInput index**

Information
-----------

::

This block extracts a scalar output signal out the vector of input
signals dependent on the Integer value of the additional u index:

    y = u [ index ] ;

where index is an additional Integer input signal.

::

Extends from
[Modelica.Blocks.Interfaces.MISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MISO)
(Multiple Input Single Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type      Name             Default   Description
  --------- ---------------- --------- -----------------------------------
  Integer   nin              1         Number of inputs

  Boolean   allowOutOfRange  false     Index may be out of range

  Real      outOfRangeValue  1e10      Output signal if index is out of
                                       range
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- -----------------
  input                                            u[nin Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ]     input signals
  lica.Blocks.Interfaces.RealInput)                      

  output                                           y     Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod       output signal
  elica.Blocks.Interfaces.RealOutput)                    

  input                                            index 
  [IntegerInput](Modelica_Blocks_Interfaces.html#M       
  odelica.Blocks.Interfaces.IntegerInput)                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Extractor 
      "Extract scalar signal out of signal vector dependent on IntegerRealInput index"

      extends Modelica.Blocks.Interfaces.MISO;

      parameter Boolean allowOutOfRange=false "Index may be out of range";
      parameter Real outOfRangeValue=1e10 "Output signal if index is out of range";

      Modelica.Blocks.Interfaces.IntegerInput index;
    protected 
      Real k[nin];
    equation 

      when {initial(),change(index)} then

        for i in 1:nin loop
          k[i] = if index == i then 1 else 0;

        end for;

      end when;

      y = if not allowOutOfRange or index > 0 and index <= nin then 
                  k*u else outOfRangeValue;
    end Extractor;

* * * * *

![image35](Modelica.Blocks.Routing.Multiplex2I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Multiplex2
==============================================================================================================================================

**Multiplexer block for two input connectors**

Information
-----------

::

The output connector is the **concatenation** of the two input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1 and n2.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of input signal connector 1
  Integer     n2       1           dimension of input signal connector 2

Connectors
----------

  -------------------------------------------------------------------------
  Type                                           Name    Description
  ---------------------------------------------- ------- ------------------
  input                                          u1[n1]  Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mo         input signals 1
  delica.Blocks.Interfaces.RealInput)                    

  input                                          u2[n2]  Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mo         input signals 2
  delica.Blocks.Interfaces.RealInput)                    

  output                                         y[n1 +  Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#M n2]     output signals
  odelica.Blocks.Interfaces.RealOutput)                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Multiplex2 "Multiplexer block for two input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2];
    end Multiplex2;

* * * * *

![image36](Modelica.Blocks.Routing.Multiplex3I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Multiplex3
==============================================================================================================================================

**Multiplexer block for three input connectors**

Information
-----------

::

The output connector is the **concatenation** of the three input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2 and n3.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of input signal connector 1
  Integer     n2       1           dimension of input signal connector 2
  Integer     n3       1           dimension of input signal connector 3

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  input                                         u1[n1]    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#M           input signals 1
  odelica.Blocks.Interfaces.RealInput)                    

  input                                         u2[n2]    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#M           input signals 2
  odelica.Blocks.Interfaces.RealInput)                    

  input                                         u3[n3]    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#M           input signals 3
  odelica.Blocks.Interfaces.RealInput)                    

  output                                        y[n1 + n2 Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html# + n3]     output signals
  Modelica.Blocks.Interfaces.RealOutput)                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Multiplex3 "Multiplexer block for three input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3];
    end Multiplex3;

* * * * *

![image37](Modelica.Blocks.Routing.Multiplex4I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Multiplex4
==============================================================================================================================================

**Multiplexer block for four input connectors**

Information
-----------

::

The output connector is the **concatenation** of the four input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2, n3 and n4.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of input signal connector 1
  Integer     n2       1           dimension of input signal connector 2
  Integer     n3       1           dimension of input signal connector 3
  Integer     n4       1           dimension of input signal connector 4

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name        Description
  ------------------------------------------- ----------- -----------------
  input                                       u1[n1]      Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html             input signals 1
  #Modelica.Blocks.Interfaces.RealInput)                  

  input                                       u2[n2]      Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html             input signals 2
  #Modelica.Blocks.Interfaces.RealInput)                  

  input                                       u3[n3]      Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html             input signals 3
  #Modelica.Blocks.Interfaces.RealInput)                  

  input                                       u4[n4]      Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html             input signals 4
  #Modelica.Blocks.Interfaces.RealInput)                  

  output                                      y[n1 + n2 + Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.htm n3 + n4]    output signals
  l#Modelica.Blocks.Interfaces.RealOutput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Multiplex4 "Multiplexer block for four input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      parameter Integer n4=1 "dimension of input signal connector 4";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";
      Modelica.Blocks.Interfaces.RealInput u4[n4] 
        "Connector of Real input signals 4";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3; u4];
    end Multiplex4;

* * * * *

![image38](Modelica.Blocks.Routing.Multiplex5I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Multiplex5
==============================================================================================================================================

**Multiplexer block for five input connectors**

Information
-----------

::

The output connector is the **concatenation** of the five input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2, n3, n4 and n5.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of input signal connector 1
  Integer     n2       1           dimension of input signal connector 2
  Integer     n3       1           dimension of input signal connector 3
  Integer     n4       1           dimension of input signal connector 4
  Integer     n5       1           dimension of input signal connector 5

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name          Description
  ------------------------------------------ ------------- ----------------
  input                                      u1[n1]        Connector of
  [RealInput](Modelica_Blocks_Interfaces.htm               Real input
  l#Modelica.Blocks.Interfaces.RealInput)                  signals 1

  input                                      u2[n2]        Connector of
  [RealInput](Modelica_Blocks_Interfaces.htm               Real input
  l#Modelica.Blocks.Interfaces.RealInput)                  signals 2

  input                                      u3[n3]        Connector of
  [RealInput](Modelica_Blocks_Interfaces.htm               Real input
  l#Modelica.Blocks.Interfaces.RealInput)                  signals 3

  input                                      u4[n4]        Connector of
  [RealInput](Modelica_Blocks_Interfaces.htm               Real input
  l#Modelica.Blocks.Interfaces.RealInput)                  signals 4

  input                                      u5[n5]        Connector of
  [RealInput](Modelica_Blocks_Interfaces.htm               Real input
  l#Modelica.Blocks.Interfaces.RealInput)                  signals 5

  output                                     y[n1 + n2 +   Connector of
  [RealOutput](Modelica_Blocks_Interfaces.ht n3 + n4 + n5] Real output
  ml#Modelica.Blocks.Interfaces.RealOutput)                signals
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Multiplex5 "Multiplexer block for five input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      parameter Integer n4=1 "dimension of input signal connector 4";
      parameter Integer n5=1 "dimension of input signal connector 5";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";
      Modelica.Blocks.Interfaces.RealInput u4[n4] 
        "Connector of Real input signals 4";
      Modelica.Blocks.Interfaces.RealInput u5[n5] 
        "Connector of Real input signals 5";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4 + n5] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3; u4; u5];
    end Multiplex5;

* * * * *

![image39](Modelica.Blocks.Routing.Multiplex6I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).Multiplex6
==============================================================================================================================================

**Multiplexer block for six input connectors**

Information
-----------

::

The output connector is the **concatenation** of the six input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2, n3, n4, n5 and n6.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of input signal connector 1
  Integer     n2       1           dimension of input signal connector 2
  Integer     n3       1           dimension of input signal connector 3
  Integer     n4       1           dimension of input signal connector 4
  Integer     n5       1           dimension of input signal connector 5
  Integer     n6       1           dimension of input signal connector 6

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name           Description
  ----------------------------------------- -------------- ----------------
  input                                     u1[n1]         Connector of
  [RealInput](Modelica_Blocks_Interfaces.ht                Real input
  ml#Modelica.Blocks.Interfaces.RealInput)                 signals 1

  input                                     u2[n2]         Connector of
  [RealInput](Modelica_Blocks_Interfaces.ht                Real input
  ml#Modelica.Blocks.Interfaces.RealInput)                 signals 2

  input                                     u3[n3]         Connector of
  [RealInput](Modelica_Blocks_Interfaces.ht                Real input
  ml#Modelica.Blocks.Interfaces.RealInput)                 signals 3

  input                                     u4[n4]         Connector of
  [RealInput](Modelica_Blocks_Interfaces.ht                Real input
  ml#Modelica.Blocks.Interfaces.RealInput)                 signals 4

  input                                     u5[n5]         Connector of
  [RealInput](Modelica_Blocks_Interfaces.ht                Real input
  ml#Modelica.Blocks.Interfaces.RealInput)                 signals 5

  input                                     u6[n6]         Connector of
  [RealInput](Modelica_Blocks_Interfaces.ht                Real input
  ml#Modelica.Blocks.Interfaces.RealInput)                 signals 6

  output                                    y[n1 + n2 + n3 Connector of
  [RealOutput](Modelica_Blocks_Interfaces.h + n4 + n5 +    Real output
  tml#Modelica.Blocks.Interfaces.RealOutput n6]            signals
  )                                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Multiplex6 "Multiplexer block for six input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      parameter Integer n4=1 "dimension of input signal connector 4";
      parameter Integer n5=1 "dimension of input signal connector 5";
      parameter Integer n6=1 "dimension of input signal connector 6";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";

      Modelica.Blocks.Interfaces.RealInput u4[n4] 
        "Connector of Real input signals 4";
      Modelica.Blocks.Interfaces.RealInput u5[n5] 
        "Connector of Real input signals 5";
      Modelica.Blocks.Interfaces.RealInput u6[n6] 
        "Connector of Real input signals 6";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4 + n5 + n6] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3; u4; u5; u6];
    end Multiplex6;

* * * * *

![image40](Modelica.Blocks.Routing.DeMultiplex2I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).DeMultiplex2
==================================================================================================================================================

**DeMultiplexer block for two output connectors**

Information
-----------

::

The input connector is **splitted** up into two output connectors. Note,
that the dimensions of the output connector signals have to be
explicitly defined via parameters n1 and n2.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of output signal connector 1
  Integer     n2       1           dimension of output signal connector 2

Connectors
----------

  -------------------------------------------------------------------------
  Type                                           Name    Description
  ---------------------------------------------- ------- ------------------
  input                                          u[n1 +  Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mo n2]     input signals
  delica.Blocks.Interfaces.RealInput)                    

  output                                         y1[n1]  Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#M         output signals 1
  odelica.Blocks.Interfaces.RealOutput)                  

  output                                         y2[n2]  Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#M         output signals 2
  odelica.Blocks.Interfaces.RealOutput)                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block DeMultiplex2 "DeMultiplexer block for two output connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";

    equation 
      [u] = [y1; y2];
    end DeMultiplex2;

* * * * *

![image41](Modelica.Blocks.Routing.DeMultiplex3I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).DeMultiplex3
==================================================================================================================================================

**DeMultiplexer block for three output connectors**

Information
-----------

::

The input connector is **splitted** up into three output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2 and n3.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of output signal connector 1
  Integer     n2       1           dimension of output signal connector 2
  Integer     n3       1           dimension of output signal connector 3

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name      Description
  -------------------------------------------- --------- ------------------
  input                                        u[n1 + n2 Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html# + n3]     input signals
  Modelica.Blocks.Interfaces.RealInput)                  

  output                                       y1[n1]    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html           output signals 1
  #Modelica.Blocks.Interfaces.RealOutput)                

  output                                       y2[n2]    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html           output signals 2
  #Modelica.Blocks.Interfaces.RealOutput)                

  output                                       y3[n3]    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html           output signals 3
  #Modelica.Blocks.Interfaces.RealOutput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block DeMultiplex3 "DeMultiplexer block for three output connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";

    equation 
      [u] = [y1; y2; y3];
    end DeMultiplex3;

* * * * *

![image42](Modelica.Blocks.Routing.DeMultiplex4I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).DeMultiplex4
==================================================================================================================================================

**DeMultiplexer block for four output connectors**

Information
-----------

::

The input connector is **splitted** up into four output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3 and n4.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of output signal connector 1
  Integer     n2       1           dimension of output signal connector 2
  Integer     n3       1           dimension of output signal connector 3
  Integer     n4       1           dimension of output signal connector 4

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name        Description
  ------------------------------------------- ----------- -----------------
  input                                       u[n1 + n2 + Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html n3 + n4]    input signals
  #Modelica.Blocks.Interfaces.RealInput)                  

  output                                      y1[n1]      Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.htm             output signals 1
  l#Modelica.Blocks.Interfaces.RealOutput)                

  output                                      y2[n2]      Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.htm             output signals 2
  l#Modelica.Blocks.Interfaces.RealOutput)                

  output                                      y3[n3]      Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.htm             output signals 3
  l#Modelica.Blocks.Interfaces.RealOutput)                

  output                                      y4[n4]      Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.htm             output signals 4
  l#Modelica.Blocks.Interfaces.RealOutput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block DeMultiplex4 "DeMultiplexer block for four output connectors"

      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      parameter Integer n4=1 "dimension of output signal connector 4";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";
      Modelica.Blocks.Interfaces.RealOutput y4[n4] 
        "Connector of Real output signals 4";

    equation 
      [u] = [y1; y2; y3; y4];
    end DeMultiplex4;

* * * * *

![image43](Modelica.Blocks.Routing.DeMultiplex5I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).DeMultiplex5
==================================================================================================================================================

**DeMultiplexer block for five output connectors**

Information
-----------

::

The input connector is **splitted** up into five output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3, n4 and n5.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of output signal connector 1
  Integer     n2       1           dimension of output signal connector 2
  Integer     n3       1           dimension of output signal connector 3
  Integer     n4       1           dimension of output signal connector 4
  Integer     n5       1           dimension of output signal connector 5

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name          Description
  ------------------------------------------ ------------- ----------------
  input                                      u[n1 + n2 +   Connector of
  [RealInput](Modelica_Blocks_Interfaces.htm n3 + n4 + n5] Real input
  l#Modelica.Blocks.Interfaces.RealInput)                  signals

  output                                     y1[n1]        Connector of
  [RealOutput](Modelica_Blocks_Interfaces.ht               Real output
  ml#Modelica.Blocks.Interfaces.RealOutput)                signals 1

  output                                     y2[n2]        Connector of
  [RealOutput](Modelica_Blocks_Interfaces.ht               Real output
  ml#Modelica.Blocks.Interfaces.RealOutput)                signals 2

  output                                     y3[n3]        Connector of
  [RealOutput](Modelica_Blocks_Interfaces.ht               Real output
  ml#Modelica.Blocks.Interfaces.RealOutput)                signals 3

  output                                     y4[n4]        Connector of
  [RealOutput](Modelica_Blocks_Interfaces.ht               Real output
  ml#Modelica.Blocks.Interfaces.RealOutput)                signals 4

  output                                     y5[n5]        Connector of
  [RealOutput](Modelica_Blocks_Interfaces.ht               Real output
  ml#Modelica.Blocks.Interfaces.RealOutput)                signals 5
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block DeMultiplex5 "DeMultiplexer block for five output connectors"

      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      parameter Integer n4=1 "dimension of output signal connector 4";
      parameter Integer n5=1 "dimension of output signal connector 5";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4 + n5] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";
      Modelica.Blocks.Interfaces.RealOutput y4[n4] 
        "Connector of Real output signals 4";
      Modelica.Blocks.Interfaces.RealOutput y5[n5] 
        "Connector of Real output signals 5";

    equation 
      [u] = [y1; y2; y3; y4; y5];
    end DeMultiplex5;

* * * * *

![image44](Modelica.Blocks.Routing.DeMultiplex6I.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).DeMultiplex6
==================================================================================================================================================

**DeMultiplexer block for six output connectors**

Information
-----------

::

The input connector is **splitted** up into six output connectors. Note,
that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3, n4, n5 and n6.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n1       1           dimension of output signal connector 1
  Integer     n2       1           dimension of output signal connector 2
  Integer     n3       1           dimension of output signal connector 3
  Integer     n4       1           dimension of output signal connector 4
  Integer     n5       1           dimension of output signal connector 5
  Integer     n6       1           dimension of output signal connector 6

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name           Description
  ---------------------------------------- -------------- ----------------
  input                                    u[n1 + n2 + n3 Connector of
  [RealInput](Modelica_Blocks_Interfaces.h + n4 + n5 +    Real input
  tml#Modelica.Blocks.Interfaces.RealInput n6]            signals
  )                                                       

  output                                   y1[n1]         Connector of
  [RealOutput](Modelica_Blocks_Interfaces.                Real output
  html#Modelica.Blocks.Interfaces.RealOutp                signals 1
  ut)                                                     

  output                                   y2[n2]         Connector of
  [RealOutput](Modelica_Blocks_Interfaces.                Real output
  html#Modelica.Blocks.Interfaces.RealOutp                signals 2
  ut)                                                     

  output                                   y3[n3]         Connector of
  [RealOutput](Modelica_Blocks_Interfaces.                Real output
  html#Modelica.Blocks.Interfaces.RealOutp                signals 3
  ut)                                                     

  output                                   y4[n4]         Connector of
  [RealOutput](Modelica_Blocks_Interfaces.                Real output
  html#Modelica.Blocks.Interfaces.RealOutp                signals 4
  ut)                                                     

  output                                   y5[n5]         Connector of
  [RealOutput](Modelica_Blocks_Interfaces.                Real output
  html#Modelica.Blocks.Interfaces.RealOutp                signals 5
  ut)                                                     

  output                                   y6[n6]         Connector of
  [RealOutput](Modelica_Blocks_Interfaces.                Real output
  html#Modelica.Blocks.Interfaces.RealOutp                signals 6
  ut)                                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block DeMultiplex6 "DeMultiplexer block for six output connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      parameter Integer n4=1 "dimension of output signal connector 4";
      parameter Integer n5=1 "dimension of output signal connector 5";
      parameter Integer n6=1 "dimension of output signal connector 6";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4 + n5 + n6] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";
      Modelica.Blocks.Interfaces.RealOutput y4[n4] 
        "Connector of Real output signals 4";
      Modelica.Blocks.Interfaces.RealOutput y5[n5] 
        "Connector of Real output signals 5";
      Modelica.Blocks.Interfaces.RealOutput y6[n6] 
        "Connector of Real output signals 6";

    equation 
      [u] = [y1; y2; y3; y4; y5; y6];
    end DeMultiplex6;

* * * * *

![image45](Modelica.Blocks.Routing.RealPassThroughI.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).RealPassThrough
========================================================================================================================================================

**Pass a Real signal through without modification**

Information
-----------

::

Passes a Real signal through without modification. Enables signals to be
read out of one bus, have their name changed and be sent back to a bus.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                     Name  Descriptio
                                                                 n
  -------------------------------------------------------- ----- ----------
  input                                                    u     Input
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo       signal
  cks.Interfaces.RealInput)                                      

  output                                                   y     Output
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl       signal
  ocks.Interfaces.RealOutput)                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RealPassThrough 
      "Pass a Real signal through without modification"

      extends Modelica.Blocks.Interfaces.BlockIcon;

      Modelica.Blocks.Interfaces.RealInput u "Input signal";
      Modelica.Blocks.Interfaces.RealOutput y "Output signal";
    equation 
      y = u;
    end RealPassThrough;

* * * * *

![image46](Modelica.Blocks.Routing.IntegerPassThroughI.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).IntegerPassThrough
==============================================================================================================================================================

**Pass a Integer signal through without modification**

Information
-----------

::

Passes a Integer signal through without modification. Enables signals to
be read out of one bus, have their name changed and be sent back to a
bus.

::

Extends from
[Modelica.Blocks.Interfaces.IntegerBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerBlockIcon)
(Basic graphical layout of Integer block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  input                                                     u    Input
  [IntegerInput](Modelica_Blocks_Interfaces.html#Modelica.B      signal
  locks.Interfaces.IntegerInput)                                 

  output                                                    y    Output
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Modelica.      signal
  Blocks.Interfaces.IntegerOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IntegerPassThrough 
      "Pass a Integer signal through without modification"
      extends Modelica.Blocks.Interfaces.IntegerBlockIcon;

      Modelica.Blocks.Interfaces.IntegerInput u "Input signal";
      Modelica.Blocks.Interfaces.IntegerOutput y "Output signal";
    equation 
      y = u;

    end IntegerPassThrough;

* * * * *

![image47](Modelica.Blocks.Routing.BooleanPassThroughI.png) [Modelica.Blocks.Routing](Modelica_Blocks_Routing.html#Modelica.Blocks.Routing).BooleanPassThrough
==============================================================================================================================================================

**Pass a Boolean signal through without modification**

Information
-----------

::

Passes a Boolean signal through without modification. Enables signals to
be read out of one bus, have their name changed and be sent back to a
bus.

::

Extends from
[Modelica.Blocks.Interfaces.BooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon)
(Basic graphical layout of Boolean block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  input                                                     u    Input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.B      signal
  locks.Interfaces.BooleanInput)                                 

  output                                                    y    Output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.      signal
  Blocks.Interfaces.BooleanOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BooleanPassThrough 
      "Pass a Boolean signal through without modification"
      extends Modelica.Blocks.Interfaces.BooleanBlockIcon;

      Modelica.Blocks.Interfaces.BooleanInput u "Input signal";
      Modelica.Blocks.Interfaces.BooleanOutput y "Output signal";
    equation 
      y = u;
    end BooleanPassThrough;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:39 2010.
