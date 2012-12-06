=======================================================
Modelica.Electrical.QuasiStationary.SinglePhase.Sources
=======================================================

`Modelica.Electrical.QuasiStationary.SinglePhase <Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase>`_.Sources
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**AC singlephase sources**

Information
~~~~~~~~~~~

::

This package hosts sources for quasi stationary single phase circuits.
Quasi stationary theory for single phase circuits can be found in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`MultiPhase.Sources <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources>`_

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| Name                                                                                                                                                                                                                                                    | Description           |
+=========================================================================================================================================================================================================================================================+=======================+
| |image4| `VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_                                                                                          | Constant AC voltage   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| |image5| `VariableVoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource>`_                                                                          | Variable AC voltage   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| |image6| `CurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_                                                                                          | Constant AC current   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+
| |image7| `VariableCurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource>`_                                                                          | Variable AC current   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+

--------------

|image8| `Modelica.Electrical.QuasiStationary.SinglePhase.Sources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources>`_.VoltageSource
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant AC voltage**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource

   Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource

Information
~~~~~~~~~~~

::

This is a constant voltage source, specifying the complex voltage by the
RMS voltage and the phase shift.

See also
^^^^^^^^

`VariableVoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource>`_

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source>`_
(Partial voltage / current source).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                              | Name   | Default   | Description                       |
+===================================================================+========+===========+===================================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | frequency of the source [Hz]      |
+-------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | V      |           | RMS voltage of the source [V]     |
+-------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phi    |           | phase shift of the source [rad]   |
+-------------------------------------------------------------------+--------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VoltageSource "Constant AC voltage"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "frequency of the source";
      parameter Modelica.SIunits.Voltage V(start=1) "RMS voltage of the source";
      parameter Modelica.SIunits.Angle phi(start=0) "phase shift of the source";
    equation 
      omega = 2*Modelica.Constants.pi*f;
      v = Complex(V*cos(phi), V*sin(phi));
    end VoltageSource;

--------------

|image9| `Modelica.Electrical.QuasiStationary.SinglePhase.Sources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources>`_.VariableVoltageSource
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable AC voltage**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource

   Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource

Information
~~~~~~~~~~~

::

This is a voltage source with a complex signal input, specifying the
complex voltage by the complex RMS voltage components. Additionally, the
frequency of the voltage source is defined by a real signal input.

See also
^^^^^^^^

`VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource>`_

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source>`_
(Partial voltage / current source).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | f        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                             | V        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableVoltageSource "Variable AC voltage"
      extends Interfaces.Source;
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput V;
    equation 
      omega = 2*Modelica.Constants.pi*f;
      v = V;
    end VariableVoltageSource;

--------------

|image10| `Modelica.Electrical.QuasiStationary.SinglePhase.Sources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources>`_.CurrentSource
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant AC current**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource

   Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource

Information
~~~~~~~~~~~

::

This is a constant current source, specifying the complex current by the
RMS current and the phase shift.

See also
^^^^^^^^

`VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource>`_

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source>`_
(Partial voltage / current source).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                              | Name   | Default   | Description                       |
+===================================================================+========+===========+===================================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | frequency of the source [Hz]      |
+-------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | I      |           | RMS current of the source [A]     |
+-------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phi    |           | phase shift of the source [rad]   |
+-------------------------------------------------------------------+--------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CurrentSource "Constant AC current"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "frequency of the source";
      parameter Modelica.SIunits.Current I(start=1) "RMS current of the source";
      parameter Modelica.SIunits.Angle phi(start=0) "phase shift of the source";
    equation 
      omega = 2*Modelica.Constants.pi*f;
      i = Complex(I*cos(phi), I*sin(phi));
    end CurrentSource;

--------------

|image11| `Modelica.Electrical.QuasiStationary.SinglePhase.Sources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources>`_.VariableCurrentSource
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable AC current**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource

   Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource

Information
~~~~~~~~~~~

::

This is a current source with a complex signal input, specifying the
complex current by the complex RMS current components. Additionally, the
frequency of the voltage source is defined by a real signal input.

See also
^^^^^^^^

`VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_,

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source>`_
(Partial voltage / current source).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | f        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                             | I        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableCurrentSource "Variable AC current"
      extends Interfaces.Source;
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput I;
    equation 
      omega = 2*Modelica.Constants.pi*f;
      i = I;
    end VariableCurrentSource;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:24
2010.

.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSourceS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSourceS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSourceS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSourceS.png
.. |image4| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSourceS.png
.. |image5| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSourceS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSourceS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSourceS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSourceI.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSourceI.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSourceI.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSourceI.png
