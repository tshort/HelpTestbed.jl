% Modelica.Electrical.Digital.Gates
% 
% 

[Modelica.Electrical.Digital](Modelica_Electrical_Digital.html#Modelica.Electrical.Digital).Gates
=================================================================================================

**Logic gates including delays**

Information
-----------

::

Gates contains the basic gates according to standard logic as they are
provided in the Basic package. Additionally they contain an
InertialDelaySensitive component They are composed graphically, not
using any equations.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image8](Modelica.Electrical.Digital.Gates.In InvGate with 1 input
  vGateS.png)                                    value, composed by Not
  [InvGate](Modelica_Electrical_Digital_Gates.ht and sensitive intertial
  ml#Modelica.Electrical.Digital.Gates.InvGate)  delay

  ![image9](Modelica.Electrical.Digital.Gates.An AndGate with multiple
  dGateS.png)                                    input
  [AndGate](Modelica_Electrical_Digital_Gates.ht 
  ml#Modelica.Electrical.Digital.Gates.AndGate)  

  ![image10](Modelica.Electrical.Digital.Gates.N NandGate with multiple
  andGateS.png)                                  input
  [NandGate](Modelica_Electrical_Digital_Gates.h 
  tml#Modelica.Electrical.Digital.Gates.NandGate 
  )                                              

  ![image11](Modelica.Electrical.Digital.Gates.O OrGate with multiple
  rGateS.png)                                    input
  [OrGate](Modelica_Electrical_Digital_Gates.htm 
  l#Modelica.Electrical.Digital.Gates.OrGate)    

  ![image12](Modelica.Electrical.Digital.Gates.N NorGate with multiple
  orGateS.png)                                   input
  [NorGate](Modelica_Electrical_Digital_Gates.ht 
  ml#Modelica.Electrical.Digital.Gates.NorGate)  

  ![image13](Modelica.Electrical.Digital.Gates.X XorGate with multiple
  orGateS.png)                                   input
  [XorGate](Modelica_Electrical_Digital_Gates.ht 
  ml#Modelica.Electrical.Digital.Gates.XorGate)  

  ![image14](Modelica.Electrical.Digital.Gates.X XnorGate with multiple
  norGateS.png)                                  input
  [XnorGate](Modelica_Electrical_Digital_Gates.h 
  tml#Modelica.Electrical.Digital.Gates.XnorGate 
  )                                              

  ![image15](Modelica.Electrical.Digital.Gates.B BufGate with 1 input
  ufGateS.png)                                   value, composed by Not
  [BufGate](Modelica_Electrical_Digital_Gates.ht and sensitive intertial
  ml#Modelica.Electrical.Digital.Gates.BufGate)  delay
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Electrical.Digital.Gates.InvGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).InvGate
================================================================================================================================================================================

**InvGate with 1 input value, composed by Not and sensitive intertial
delay**

Information
-----------

::

The InvGate model has a single valued input, and a single valued output.
It is composed by a Basic Not and an InertialDelaySensitive. Its
parameters are the delay parameters (rise and fall intertial delay time,
and intitial value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.SISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO)
(Single input, single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           
  -------------------------------------------------------------------------

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

    model InvGate 
      "InvGate with 1 input value, composed by Not and sensitive intertial delay"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.SISO;
      D.Basic.Not G1;
      D.Delay.InertialDelaySensitive G2(tLH=tLH, tHL=tHL);
    equation 
      connect(G2.y, y);
      connect(G1.x, x);
      connect(G1.y, G2.x);
    end InvGate;

* * * * *

![image17](Modelica.Electrical.Digital.Gates.AndGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).AndGate
================================================================================================================================================================================

**AndGate with multiple input**

Information
-----------

::

The AndGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic And and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output),
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  Integer                                          n    2     Number of
                                                              inputs

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           
  -------------------------------------------------------------------------

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

    model AndGate "AndGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Interfaces.MISO;
      extends D.Delay.DelayParams;
      D.Basic.And G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(y, G2.y);
      connect(G1.y, G2.x);
    end AndGate;

* * * * *

![image18](Modelica.Electrical.Digital.Gates.NandGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).NandGate
==================================================================================================================================================================================

**NandGate with multiple input**

Information
-----------

::

The NandGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Nand and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           

  Integer                                          n    2     Number of
                                                              inputs
  -------------------------------------------------------------------------

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

    model NandGate "NandGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Nand G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(G1.y, G2.x);
      connect(G2.y, y);
    end NandGate;

* * * * *

![image19](Modelica.Electrical.Digital.Gates.OrGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).OrGate
==============================================================================================================================================================================

**OrGate with multiple input**

Information
-----------

::

The OrGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Or and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           

  Integer                                          n    2     Number of
                                                              inputs
  -------------------------------------------------------------------------

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

    model OrGate "OrGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Or G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(G1.y, G2.x);
      connect(x,G1. x);
      connect(y, G2.y);
    end OrGate;

* * * * *

![image20](Modelica.Electrical.Digital.Gates.NorGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).NorGate
================================================================================================================================================================================

**NorGate with multiple input**

Information
-----------

::

The NorGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Nor and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           

  Integer                                          n    2     Number of
                                                              inputs
  -------------------------------------------------------------------------

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

    model NorGate "NorGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Nor G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(G1.y, G2.x);
      connect(x, G1.x);
      connect(y, G2.y);
    end NorGate;

* * * * *

![image21](Modelica.Electrical.Digital.Gates.XorGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).XorGate
================================================================================================================================================================================

**XorGate with multiple input**

Information
-----------

::

The XorGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Xor and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           

  Integer                                          n    2     Number of
                                                              inputs
  -------------------------------------------------------------------------

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

    model XorGate "XorGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Xor G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(G1.y, G2.x);
      connect(G2.y, y);
    end XorGate;

* * * * *

![image22](Modelica.Electrical.Digital.Gates.XnorGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).XnorGate
==================================================================================================================================================================================

**XnorGate with multiple input**

Information
-----------

::

The XnorGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Xnor and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           

  Integer                                          n    2     Number of
                                                              inputs
  -------------------------------------------------------------------------

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

    model XnorGate "XnorGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Xnor G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(G2.y, y);
      connect(G1.y, G2.x);
    end XnorGate;

* * * * *

![image23](Modelica.Electrical.Digital.Gates.BufGateI.png) [Modelica.Electrical.Digital.Gates](Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates).BufGate
================================================================================================================================================================================

**BufGate with 1 input value, composed by Not and sensitive intertial
delay**

Information
-----------

::

The BufGate model has a single valued input, and a single valued output.
It consists of an InertialDelaySensitive only. Its parameters are the
delay parameters (rise and fall intertial delay time, and intitial
value).

::

Extends from
[D.Delay.DelayParams](Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams)
(Definition of delay parameters),
[D.Interfaces.SISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO)
(Single input, single output).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH        Rise inertial
  me)                                                         delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL        Fall inertial
  me)                                                         delay [s]

  [Logic](Modelica_Electrical_Digital_Interfaces.h y0   L.'U' Initial value
  tml#Modelica.Electrical.Digital.Interfaces.Logic            of output
  )                                                           
  -------------------------------------------------------------------------

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

    model BufGate 
      "BufGate with 1 input value, composed by Not and sensitive intertial delay"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.SISO;
      D.Delay.InertialDelaySensitive G1(tLH=tLH, tHL=tHL);
    equation 
      connect(G1.y, y);
      connect(G1.x, x);
    end BufGate;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:29 2010.
