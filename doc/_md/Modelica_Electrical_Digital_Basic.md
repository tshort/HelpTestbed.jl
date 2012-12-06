% Modelica.Electrical.Digital.Basic
% 
% 

[Modelica.Electrical.Digital](Modelica_Electrical_Digital.html#Modelica.Electrical.Digital).Basic
=================================================================================================

**Basic logic blocks without delays**

Information
-----------

::

Basic contains the basic gates according to standard logic. The
components of Basic calculate their results using the corresponding
truth tables. They do not contain any delay components.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image7](Modelica.Electrical.Digital.Basic.NotS. Not logic component
  png)                                              without delay
  [Not](Modelica_Electrical_Digital_Basic.html#Mode 
  lica.Electrical.Digital.Basic.Not)                

  ![image8](Modelica.Electrical.Digital.Basic.AndS. And logic component
  png)                                              with multiple input
  [And](Modelica_Electrical_Digital_Basic.html#Mode and one output
  lica.Electrical.Digital.Basic.And)                

  ![image9](Modelica.Electrical.Digital.Basic.NandS Nand logic component
  .png)                                             with multiple input
  [Nand](Modelica_Electrical_Digital_Basic.html#Mod and one output
  elica.Electrical.Digital.Basic.Nand)              

  ![image10](Modelica.Electrical.Digital.Basic.OrS. Or logic component
  png)                                              with multiple input
  [Or](Modelica_Electrical_Digital_Basic.html#Model and one output
  ica.Electrical.Digital.Basic.Or)                  

  ![image11](Modelica.Electrical.Digital.Basic.NorS Nor logic component
  .png)                                             with multiple input
  [Nor](Modelica_Electrical_Digital_Basic.html#Mode and one output
  lica.Electrical.Digital.Basic.Nor)                

  ![image12](Modelica.Electrical.Digital.Basic.XorS Xor logic component
  .png)                                             with multiple input
  [Xor](Modelica_Electrical_Digital_Basic.html#Mode and one output
  lica.Electrical.Digital.Basic.Xor)                

  ![image13](Modelica.Electrical.Digital.Basic.Xnor Xnor logic component
  S.png)                                            with multiple input
  [Xnor](Modelica_Electrical_Digital_Basic.html#Mod and one output
  elica.Electrical.Digital.Basic.Xnor)              
  ------------------------------------------------------------------------

* * * * *

![image14](Modelica.Electrical.Digital.Basic.NotI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).Not
========================================================================================================================================================================

**Not logic component without delay**

Information
-----------

::

Not component with 1 input value, without delay.

According to the standard logic not table (Tables.NotTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.SISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO)
(Single input, single output).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ----------------
  input                                                x   Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interface     Digital input
  s.html#Modelica.Electrical.Digital.Interfaces.Digita     signal
  lInput)                                                  

  output                                               y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interfac     Digital output
  es.html#Modelica.Electrical.Digital.Interfaces.Digit     signal
  alOutput)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Not "Not logic component without delay"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.SISO;
    protected 
      D.Interfaces.Logic auxiliary(start=L.'0', fixed=true);
    equation 
      auxiliary =Modelica.Electrical.Digital.Tables.NotTable[x];
      y = pre(auxiliary);
    end Not;

* * * * *

![image15](Modelica.Electrical.Digital.Basic.AndI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).And
========================================================================================================================================================================

**And logic component with multiple input and one output**

Information
-----------

::

And component with multiple input values and one output.

According to the standard logic and table (Tables.AndTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model And "And logic component with multiple input and one output"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'U', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] =Modelica.Electrical.Digital.Tables.AndTable[
      auxiliary[i], x[i + 1]];
      end for;
      y = pre(auxiliary[n]);
    end And;

* * * * *

![image16](Modelica.Electrical.Digital.Basic.NandI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).Nand
==========================================================================================================================================================================

**Nand logic component with multiple input and one output**

Information
-----------

::

Nand component with multiple input values and one output.

According to the standard logic and table (Tables.AndTable) an
intermediate value is calculated, to which the not table
(Tables.NotTable) is applied.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Nand "Nand logic component with multiple input and one output"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'U', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] =Modelica.Electrical.Digital.Tables.AndTable[
      auxiliary[i], x[i + 1]];
      end for;
      y = pre(Modelica.Electrical.Digital.Tables.NotTable[auxiliary[n]]);
    end Nand;

* * * * *

![image17](Modelica.Electrical.Digital.Basic.OrI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).Or
======================================================================================================================================================================

**Or logic component with multiple input and one output**

Information
-----------

::

Or component with multiple input values and one output.

According to the standard logic or table (Tables.OrTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Or "Or logic component with multiple input and one output"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'U', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] =Modelica.Electrical.Digital.Tables.OrTable[
      auxiliary[i], x[i + 1]];
      end for;
      y = pre(auxiliary[n]);
    end Or;

* * * * *

![image18](Modelica.Electrical.Digital.Basic.NorI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).Nor
========================================================================================================================================================================

**Nor logic component with multiple input and one output**

Information
-----------

::

Nor component with multiple input values and one output.

According to the standard logic or table (Tables.OrTable) an
intermediate value is calculated, to which the not table
(Tables.NotTable) is applied.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Nor "Nor logic component with multiple input and one output"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'U', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] =Modelica.Electrical.Digital.Tables.OrTable[
      auxiliary[i], x[i + 1]];
      end for;
      y = pre(Modelica.Electrical.Digital.Tables.NotTable[auxiliary[n]]);
    end Nor;

* * * * *

![image19](Modelica.Electrical.Digital.Basic.XorI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).Xor
========================================================================================================================================================================

**Xor logic component with multiple input and one output**

Information
-----------

::

Xor component with multiple input values and one output.

According to the standard logic xor table (Tables.XorTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Xor "Xor logic component with multiple input and one output"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'U', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] =Modelica.Electrical.Digital.Tables.XorTable[
      auxiliary[i], x[i + 1]];
      end for;
      y = pre(auxiliary[n]);
    end Xor;

* * * * *

![image20](Modelica.Electrical.Digital.Basic.XnorI.png) [Modelica.Electrical.Digital.Basic](Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic).Xnor
==========================================================================================================================================================================

**Xnor logic component with multiple input and one output**

Information
-----------

::

Xnor component with multiple input values and one output.

According to the standard logic xor table (Tables.XorTable)an
intermediate value is calculated, to which the not table
(Tables.NotTable) is applied.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Xnor "Xnor logic component with multiple input and one output"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'U', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] =Modelica.Electrical.Digital.Tables.XorTable[
      auxiliary[i], x[i + 1]];
      end for;
      y = pre(Modelica.Electrical.Digital.Tables.NotTable[auxiliary[n]]);
    end Xnor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:27 2010.
