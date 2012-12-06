=================================
Modelica.Electrical.Digital.Basic
=================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Basic
---------------------------------------------------------------------------------------------------

**Basic logic blocks without delays**

Information
~~~~~~~~~~~

::

Basic contains the basic gates according to standard logic. The
components of Basic calculate their results using the corresponding
truth tables. They do not contain any delay components.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| Name                                                                                                                               | Description                                               |
+====================================================================================================================================+===========================================================+
| |image7| `Not <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.Not>`_                                     | Not logic component without delay                         |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image8| `And <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.And>`_                                     | And logic component with multiple input and one output    |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image9| `Nand <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.Nand>`_                                   | Nand logic component with multiple input and one output   |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image10| `Or <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.Or>`_                                      | Or logic component with multiple input and one output     |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image11| `Nor <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.Nor>`_                                    | Nor logic component with multiple input and one output    |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image12| `Xor <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.Xor>`_                                    | Xor logic component with multiple input and one output    |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image13| `Xnor <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic.Xnor>`_                                  | Xnor logic component with multiple input and one output   |
+------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+

--------------

|image14| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.Not
-----------------------------------------------------------------------------------------------------------------------------

**Not logic component without delay**

.. figure:: Modelica.Electrical.Digital.Basic.NotD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.Not

   Modelica.Electrical.Digital.Basic.Not

Information
~~~~~~~~~~~

::

Not component with 1 input value, without delay.

According to the standard logic not table (Tables.NotTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_
(Single input, single output).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x      | Connector of Digital input signal    |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image15| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.And
-----------------------------------------------------------------------------------------------------------------------------

**And logic component with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Basic.AndD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.And

   Modelica.Electrical.Digital.Basic.And

Information
~~~~~~~~~~~

::

And component with multiple input values and one output.

According to the standard logic and table (Tables.AndTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image16| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.Nand
------------------------------------------------------------------------------------------------------------------------------

**Nand logic component with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Basic.AndD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.Nand

   Modelica.Electrical.Digital.Basic.Nand

Information
~~~~~~~~~~~

::

Nand component with multiple input values and one output.

According to the standard logic and table (Tables.AndTable) an
intermediate value is calculated, to which the not table
(Tables.NotTable) is applied.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image17| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.Or
----------------------------------------------------------------------------------------------------------------------------

**Or logic component with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Basic.AndD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.Or

   Modelica.Electrical.Digital.Basic.Or

Information
~~~~~~~~~~~

::

Or component with multiple input values and one output.

According to the standard logic or table (Tables.OrTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image18| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.Nor
-----------------------------------------------------------------------------------------------------------------------------

**Nor logic component with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Basic.AndD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.Nor

   Modelica.Electrical.Digital.Basic.Nor

Information
~~~~~~~~~~~

::

Nor component with multiple input values and one output.

According to the standard logic or table (Tables.OrTable) an
intermediate value is calculated, to which the not table
(Tables.NotTable) is applied.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image19| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.Xor
-----------------------------------------------------------------------------------------------------------------------------

**Xor logic component with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Basic.AndD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.Xor

   Modelica.Electrical.Digital.Basic.Xor

Information
~~~~~~~~~~~

::

Xor component with multiple input values and one output.

According to the standard logic xor table (Tables.XorTable) the output
value is calculated.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image20| `Modelica.Electrical.Digital.Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_.Xnor
------------------------------------------------------------------------------------------------------------------------------

**Xnor logic component with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Basic.AndD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Basic.Xnor

   Modelica.Electrical.Digital.Basic.Xnor

Information
~~~~~~~~~~~

::

Xnor component with multiple input values and one output.

According to the standard logic xor table (Tables.XorTable)an
intermediate value is calculated, to which the not table
(Tables.NotTable) is applied.

To avoid loops in the numerical treatment, the pre operator is applied
to the output.

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:27
2010.

.. |Modelica.Electrical.Digital.Basic.Not| image:: Modelica.Electrical.Digital.Basic.NotS.png
.. |Modelica.Electrical.Digital.Basic.And| image:: Modelica.Electrical.Digital.Basic.AndS.png
.. |Modelica.Electrical.Digital.Basic.Nand| image:: Modelica.Electrical.Digital.Basic.NandS.png
.. |Modelica.Electrical.Digital.Basic.Or| image:: Modelica.Electrical.Digital.Basic.OrS.png
.. |Modelica.Electrical.Digital.Basic.Nor| image:: Modelica.Electrical.Digital.Basic.NorS.png
.. |Modelica.Electrical.Digital.Basic.Xor| image:: Modelica.Electrical.Digital.Basic.XorS.png
.. |Modelica.Electrical.Digital.Basic.Xnor| image:: Modelica.Electrical.Digital.Basic.XnorS.png
.. |image7| image:: Modelica.Electrical.Digital.Basic.NotS.png
.. |image8| image:: Modelica.Electrical.Digital.Basic.AndS.png
.. |image9| image:: Modelica.Electrical.Digital.Basic.NandS.png
.. |image10| image:: Modelica.Electrical.Digital.Basic.OrS.png
.. |image11| image:: Modelica.Electrical.Digital.Basic.NorS.png
.. |image12| image:: Modelica.Electrical.Digital.Basic.XorS.png
.. |image13| image:: Modelica.Electrical.Digital.Basic.XnorS.png
.. |image14| image:: Modelica.Electrical.Digital.Basic.NotI.png
.. |image15| image:: Modelica.Electrical.Digital.Basic.AndI.png
.. |image16| image:: Modelica.Electrical.Digital.Basic.NandI.png
.. |image17| image:: Modelica.Electrical.Digital.Basic.OrI.png
.. |image18| image:: Modelica.Electrical.Digital.Basic.NorI.png
.. |image19| image:: Modelica.Electrical.Digital.Basic.XorI.png
.. |image20| image:: Modelica.Electrical.Digital.Basic.XnorI.png
