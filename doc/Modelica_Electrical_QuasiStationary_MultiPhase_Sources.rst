======================================================
Modelica.Electrical.QuasiStationary.MultiPhase.Sources
======================================================

`Modelica.Electrical.QuasiStationary.MultiPhase <Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase>`_.Sources
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**AC multiphase sources**

Information
~~~~~~~~~~~

::

This package hosts sources for quasi stationary multiphase circuits.
Quasi stationary theory can be found in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`SinglePhase.Sources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources>`_

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| Name                                                                                                                                                                                                                                                 | Description                      |
+======================================================================================================================================================================================================================================================+==================================+
| |image4| `VoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource>`_                                                                                         | Constant multiphase AC voltage   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image5| `VariableVoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource>`_                                                                         | Variable multiphase AC voltage   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image6| `CurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource>`_                                                                                         | Constant multiphase AC current   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image7| `VariableCurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource>`_                                                                         | Variable multiphase AC current   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+

--------------

|image8| `Modelica.Electrical.QuasiStationary.MultiPhase.Sources <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources>`_.VoltageSource
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant multiphase AC voltage**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource

   Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource

Information
~~~~~~~~~~~

::

This model describes *m* constant voltage sources, specifying the
complex voltages by the RMS voltages and the phase shifts. *m* `single
phase
VoltageSources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_
are used.

See also
^^^^^^^^

`SinglePhase.VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource>`_

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source>`_
(Partial voltage / current source).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| Type                                                              | Name     | Default                             | Description                       |
+===================================================================+==========+=====================================+===================================+
| Integer                                                           | m        | 3                                   | Number of phases                  |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f        |                                     | Frequency of the source [Hz]      |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | V[m]     |                                     | RMS voltage of the source [V]     |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phi[m]   | {0 - (j - 1)\*2\*pi/m for j in...   | Phase shift of the source [rad]   |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VoltageSource "Constant multiphase AC voltage"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "Frequency of the source";
      parameter Modelica.SIunits.Voltage V[m](start=fill(1,m)) 
        "RMS voltage of the source";
      parameter Modelica.SIunits.Angle phi[m]={0 - (j-1)*2*pi/m for j in 1:m} 
        "Phase shift of the source";
      QuasiStationary.SinglePhase.Sources.VoltageSource voltageSource[
                                                      m](
        each final f=f,
        final V=V,
        final phi=phi);
    equation 
      connect(plugToPins_p.pin_p, voltageSource.pin_p);
      connect(voltageSource.pin_n, plugToPins_n.pin_n);
    end VoltageSource;

--------------

|image9| `Modelica.Electrical.QuasiStationary.MultiPhase.Sources <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources>`_.VariableVoltageSource
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable multiphase AC voltage**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource

   Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource

Information
~~~~~~~~~~~

::

This model describes *m* variable voltage sources, with *m* complex
signal inputs, specifying the complex voltages by the complex RMS
voltage components. Additionally, the frequency of the voltage source is
defined by a real signal input. *m* `single phase
VariableVoltageSources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource>`_
are used.

See also
^^^^^^^^

`SinglePhase.VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`VoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource>`_

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source>`_
(Partial voltage / current source).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | f         |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                             | V[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableVoltageSource "Variable multiphase AC voltage"
      extends Interfaces.Source;
      QuasiStationary.SinglePhase.Sources.VariableVoltageSource
        variableVoltageSource[m];
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput V[m];
    equation 
      for j in 1:m loop
        connect(f, variableVoltageSource[j].f);
      end for;
      connect(plugToPins_p.pin_p, variableVoltageSource.pin_p);
      connect(variableVoltageSource.pin_n, plugToPins_n.pin_n);
      connect(V, variableVoltageSource.V);
    end VariableVoltageSource;

--------------

|image10| `Modelica.Electrical.QuasiStationary.MultiPhase.Sources <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources>`_.CurrentSource
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant multiphase AC current**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource

   Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource

Information
~~~~~~~~~~~

::

This model describes *m* constant current sources, specifying the
complex currents by the RMS currents and the phase shifts. *m* `single
phase
CurrentSources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_
are used.

See also
^^^^^^^^

`SinglePhase.CurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_,
`VoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource>`_

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source>`_
(Partial voltage / current source).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| Type                                                              | Name     | Default                             | Description                       |
+===================================================================+==========+=====================================+===================================+
| Integer                                                           | m        | 3                                   | Number of phases                  |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f        |                                     | Frequency of the source [Hz]      |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | I[m]     |                                     | RMS current of the source [A]     |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phi[m]   | {0 - (j - 1)\*2\*pi/m for j in...   | Phase shift of the source [rad]   |
+-------------------------------------------------------------------+----------+-------------------------------------+-----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CurrentSource "Constant multiphase AC current"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "Frequency of the source";
      parameter Modelica.SIunits.Current I[m](start=fill(1,m)) 
        "RMS current of the source";
      parameter Modelica.SIunits.Angle phi[m]={0 - (j-1)*2*pi/m for j in 1:m} 
        "Phase shift of the source";
      QuasiStationary.SinglePhase.Sources.CurrentSource currentSource[
                                                      m](
        each final f=f,
        final phi=phi,
        final I=I);
    equation 
      connect(plugToPins_p.pin_p,currentSource. pin_p);
      connect(currentSource.pin_n, plugToPins_n.pin_n);
    end CurrentSource;

--------------

|image11| `Modelica.Electrical.QuasiStationary.MultiPhase.Sources <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources>`_.VariableCurrentSource
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable multiphase AC current**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource

   Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource

Information
~~~~~~~~~~~

::

This model describes *m* variable current sources, with *m* complex
signal inputs, specifying the complex current by the complex RMS voltage
components. Additionally, the frequency of the current source is defined
by a real signal input. *m* `single phase
VariableCurrentSources <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource>`_
are used.

See also
^^^^^^^^

`SinglePhase.VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`VoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource>`_.

::

Extends from
`Interfaces.Source <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source>`_
(Partial voltage / current source).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | f         |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                             | I[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableCurrentSource "Variable multiphase AC current"
      extends Interfaces.Source;
      QuasiStationary.SinglePhase.Sources.VariableCurrentSource
        variableCurrentSource[m];
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput I[m];
    equation 
      for j in 1:m loop
        connect(f, variableCurrentSource[j].f);
      end for;
      connect(plugToPins_p.pin_p, variableCurrentSource.pin_p);
      connect(variableCurrentSource.pin_n, plugToPins_n.pin_n);
      connect(I, variableCurrentSource.I);
    end VariableCurrentSource;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:44
2010.

.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSourceS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSourceS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSourceS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSourceS.png
.. |image4| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSourceS.png
.. |image5| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSourceS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSourceS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSourceS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSourceI.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSourceI.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSourceI.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSourceI.png
