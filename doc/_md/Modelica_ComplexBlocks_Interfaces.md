% Modelica.ComplexBlocks.Interfaces
% 
% 

[Modelica.ComplexBlocks](Modelica_ComplexBlocks.html#Modelica.ComplexBlocks).Interfaces
=======================================================================================

**Library of connectors and partial models for input/output blocks**

Information
-----------

::

This library defines Complex input and output signals, as well as
partial blocks.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image12](Modelica.ComplexBlocks.Interfaces.C 'input Complex' as
  omplexInputS.png)                              connector
  [ComplexInput](Modelica_ComplexBlocks_Interfac 
  es.html#Modelica.ComplexBlocks.Interfaces.Comp 
  lexInput)                                      

  ![image13](Modelica.ComplexBlocks.Interfaces.C 'output Complex' as
  omplexOutputS.png)                             connector
  [ComplexOutput](Modelica_ComplexBlocks_Interfa 
  ces.html#Modelica.ComplexBlocks.Interfaces.Com 
  plexOutput)                                    

  ![image14](Modelica.ComplexBlocks.Interfaces.C Single Output continuous
  omplexSOS.png)                                 control block
  [ComplexSO](Modelica_ComplexBlocks_Interfaces. 
  html#Modelica.ComplexBlocks.Interfaces.Complex 
  SO)                                            

  ![image15](Modelica.ComplexBlocks.Interfaces.C Multiple Output
  omplexSOS.png)                                 continuous control block
  [ComplexMO](Modelica_ComplexBlocks_Interfaces. 
  html#Modelica.ComplexBlocks.Interfaces.Complex 
  MO)                                            

  ![image16](Modelica.ComplexBlocks.Interfaces.C Single Input Single
  omplexSISOS.png)                               Output continuous control
  [ComplexSISO](Modelica_ComplexBlocks_Interface block
  s.html#Modelica.ComplexBlocks.Interfaces.Compl 
  exSISO)                                        

  ![image17](Modelica.ComplexBlocks.Interfaces.C 2 Single Input / 1 Single
  omplexSI2SOS.png)                              Output continuous control
  [ComplexSI2SO](Modelica_ComplexBlocks_Interfac block
  es.html#Modelica.ComplexBlocks.Interfaces.Comp 
  lexSI2SO)                                      

  ![image18](Modelica.ComplexBlocks.Interfaces.C Single Input Multiple
  omplexSIMOS.png)                               Output continuous control
  [ComplexSIMO](Modelica_ComplexBlocks_Interface block
  s.html#Modelica.ComplexBlocks.Interfaces.Compl 
  exSIMO)                                        

  ![image19](Modelica.ComplexBlocks.Interfaces.C Multiple Input Single
  omplexSIMOS.png)                               Output continuous control
  [ComplexMISO](Modelica_ComplexBlocks_Interface block
  s.html#Modelica.ComplexBlocks.Interfaces.Compl 
  exMISO)                                        

  ![image20](Modelica.ComplexBlocks.Interfaces.C Multiple Input Multiple
  omplexSIMOS.png)                               Output continuous control
  [ComplexMIMO](Modelica_ComplexBlocks_Interface block
  s.html#Modelica.ComplexBlocks.Interfaces.Compl 
  exMIMO)                                        

  ![image21](Modelica.ComplexBlocks.Interfaces.C Multiple Input Multiple
  omplexSIMOS.png)                               Output continuous control
  [ComplexMIMOs](Modelica_ComplexBlocks_Interfac block with same number of
  es.html#Modelica.ComplexBlocks.Interfaces.Comp inputs and outputs
  lexMIMOs)                                      

  ![image22](Modelica.ComplexBlocks.Interfaces.C 2 Multiple Input /
  omplexMI2MOS.png)                              Multiple Output
  [ComplexMI2MO](Modelica_ComplexBlocks_Interfac continuous control block
  es.html#Modelica.ComplexBlocks.Interfaces.Comp 
  lexMI2MO)                                      

  ![image23](Modelica.ComplexBlocks.Interfaces.C Base class for continuous
  omplexSignalSourceS.png)                       signal source
  [ComplexSignalSource](Modelica_ComplexBlocks_I 
  nterfaces.html#Modelica.ComplexBlocks.Interfac 
  es.ComplexSignalSource)                        
  ------------------------------------------------------------------------

* * * * *

![image24](Modelica.ComplexBlocks.Interfaces.ComplexInputI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexInput
==========================================================================================================================================================================================

**'input Complex' as connector**

Information
-----------

::

Connector with one input signal of type Complex.

::

Extends from
[Complex](../../../Modelica/Library/help/Complex.html#Complex) (Complex
number with overloaded operators).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -------------------------------------
  Real      re                     Real part of complex number
  Real      im                     Imaginary part of complex number

Contents
--------

  Type      Name      Description
  --------- --------- -------------------------------------
  Real      re        Real part of complex number
  Real      im        Imaginary part of complex number

Modelica definition
-------------------

    connector ComplexInput = input Complex "'input Complex' as connector";

* * * * *

![image25](Modelica.ComplexBlocks.Interfaces.ComplexOutputI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexOutput
============================================================================================================================================================================================

**'output Complex' as connector**

Information
-----------

::

Connector with one output signal of type Complex.

::

Extends from
[Complex](../../../Modelica/Library/help/Complex.html#Complex) (Complex
number with overloaded operators).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -------------------------------------
  Real      re                     Real part of complex number
  Real      im                     Imaginary part of complex number

Contents
--------

  Type      Name      Description
  --------- --------- -------------------------------------
  Real      re        Real part of complex number
  Real      im        Imaginary part of complex number

Modelica definition
-------------------

    connector ComplexOutput = output Complex "'output Complex' as connector";

* * * * *

![image26](Modelica.ComplexBlocks.Interfaces.ComplexSOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexSO
====================================================================================================================================================================================

**Single Output continuous control block**

Information
-----------

::

Block has one continuous Complex output signal.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexSO "Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      ComplexOutput y "Connector of Complex output signal";
    end ComplexSO;

* * * * *

![image27](Modelica.ComplexBlocks.Interfaces.ComplexSOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexMO
====================================================================================================================================================================================

**Multiple Output continuous control block**

Information
-----------

::

Block has one continuous Complex output signal vector.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nout      1            Number of outputs

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  output                                            y[nou Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces t]    Complex output
  .html#Modelica.ComplexBlocks.Interfaces.ComplexOu       signals
  tput)                                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexMO "Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nout(min=1) = 1 "Number of outputs";
      ComplexOutput y[nout] "Connector of Complex output signals";
    end ComplexMO;

* * * * *

![image28](Modelica.ComplexBlocks.Interfaces.ComplexSISOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexSISO
========================================================================================================================================================================================

**Single Input Single Output continuous control block**

Information
-----------

::

Block has one continuous Complex input and one continuous Complex output
signal.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexSISO 
      "Single Input Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      ComplexInput u "Connector of Complex input signal";
      ComplexOutput y "Connector of Complex output signal";
    end ComplexSISO;

* * * * *

![image29](Modelica.ComplexBlocks.Interfaces.ComplexSI2SOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexSI2SO
==========================================================================================================================================================================================

**2 Single Input / 1 Single Output continuous control block**

Information
-----------

::

Block has two continuous Complex input signals u1 and u2 and one
continuous Complex output signal y.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              u1  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 1
  )                                                      

  input                                              u2  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 2
  )                                                      

  output                                             y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.     Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp     signal
  ut)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexSI2SO 
      "2 Single Input / 1 Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      ComplexInput u1 "Connector of Complex input signal 1";
      ComplexInput u2 "Connector of Complex input signal 2";
      ComplexOutput y "Connector of Complex output signal";
    end ComplexSI2SO;

* * * * *

![image30](Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexSIMO
========================================================================================================================================================================================

**Single Input Multiple Output continuous control block**

Information
-----------

::

Block has one continuous Complex input signal and a vector of continuous
Complex output signals.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nout      1            Number of outputs

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  input                                             u     Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.       Complex input
  html#Modelica.ComplexBlocks.Interfaces.ComplexInp       signal
  ut)                                                     

  output                                            y[nou Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces t]    Complex output
  .html#Modelica.ComplexBlocks.Interfaces.ComplexOu       signals
  tput)                                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexSIMO 
      "Single Input Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nout=1 "Number of outputs";
      ComplexInput u "Connector of Complex input signal";
      ComplexOutput y[nout] "Connector of Complex output signals";
    end ComplexSIMO;

* * * * *

![image31](Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexMISO
========================================================================================================================================================================================

**Multiple Input Single Output continuous control block**

Information
-----------

::

Block has a vector of continuous Complex input signals and one
continuous Complex output signal.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      nin       1            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Name Description
  -------------------------------------------------- ---- ----------------
  input                                              u[ni Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h n]   Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput      signals
  )                                                       

  output                                             y    Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.      Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp      signal
  ut)                                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexMISO 
      "Multiple Input Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nin=1 "Number of inputs";
      ComplexInput u[nin] "Connector of Complex input signals";
      ComplexOutput y "Connector of Complex output signal";
    end ComplexMISO;

* * * * *

![image32](Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexMIMO
========================================================================================================================================================================================

**Multiple Input Multiple Output continuous control block**

Information
-----------

::

Block has a continuous Complex input vector and a continuous Complex
output signal vector. The signal sizes of the input and output vector
may be different.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nin       1            Number of inputs
  Integer      nout      1            Number of outputs

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  input                                             u[nin Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces. ]     Complex input
  html#Modelica.ComplexBlocks.Interfaces.ComplexInp       signals
  ut)                                                     

  output                                            y[nou Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces t]    Complex output
  .html#Modelica.ComplexBlocks.Interfaces.ComplexOu       signals
  tput)                                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexMIMO 
      "Multiple Input Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nin=1 "Number of inputs";
      parameter Integer nout=1 "Number of outputs";
      ComplexInput u[nin] "Connector of Complex input signals";
      ComplexOutput y[nout] "Connector of Complex output signals";
    end ComplexMIMO;

* * * * *

![image33](Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexMIMOs
=========================================================================================================================================================================================

**Multiple Input Multiple Output continuous control block with same
number of inputs and outputs**

Information
-----------

::

Block has a continuous Complex input vector and a continuous Complex
output signal vector where the signal sizes of the input and output
vector are identical.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              u[n Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h ]   Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signals
  )                                                      

  output                                             y[n Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces. ]   Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp     signals
  ut)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexMIMOs 
      "Multiple Input Multiple Output continuous control block with same number of inputs and outputs"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      ComplexInput u[n] "Connector of Complex input signals";
      ComplexOutput y[n] "Connector of Complex output signals";
    end ComplexMIMOs;

* * * * *

![image34](Modelica.ComplexBlocks.Interfaces.ComplexMI2MOI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexMI2MO
==========================================================================================================================================================================================

**2 Multiple Input / Multiple Output continuous control block**

Information
-----------

::

Block has two continuous Complex input vectors u1 and u2 and one
continuous Complex output vector y. All vectors have the same number of
elements.

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Dimension of input and output vectors.

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Name Description
  -------------------------------------------------- ---- -----------------
  input                                              u1[n Connector 1 of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h ]    Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput      signals
  )                                                       

  input                                              u2[n Connector 2 of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h ]    Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput      signals
  )                                                       

  output                                             y[n] Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.      Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp      signals
  ut)                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexMI2MO 
      "2 Multiple Input / Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer n=1 "Dimension of input and output vectors.";
      ComplexInput u1[n] "Connector 1 of Complex input signals";
      ComplexInput u2[n] "Connector 2 of Complex input signals";
      ComplexOutput y[n] "Connector of Complex output signals";
    end ComplexMI2MO;

* * * * *

![image35](Modelica.ComplexBlocks.Interfaces.ComplexSignalSourceI.png) [Modelica.ComplexBlocks.Interfaces](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces).ComplexSignalSource
========================================================================================================================================================================================================

**Base class for continuous signal source**

Information
-----------

::

Basic block for Complex sources. This component has one continuous
Complex output signal y and two parameters (offset, startTime) to shift
the generated signal.

::

Extends from
[ComplexBlocks.Interfaces.ComplexSO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Default Description
  ---------------------------------- ------ ------- -----------------------
  [Complex](../../../Modelica/Librar offset Complex Offset of output signal
  y/help/Complex.html#Complex)              (0)     y

  [Time](Modelica_SIunits.html#Model startT 0       Output y = offset for
  ica.SIunits.Time)                  ime            time < startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block ComplexSignalSource 
      "Base class for continuous signal source"
      extends ComplexBlocks.Interfaces.ComplexSO;
      parameter Complex offset=Complex(0) "Offset of output signal y";
      parameter SIunits.Time startTime=0 "Output y = offset for time < startTime";
    end ComplexSignalSource;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:40 2010.
