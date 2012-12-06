======================================
Modelica.Electrical.MultiPhase.Sources
======================================

`Modelica.Electrical.MultiPhase <Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase>`_.Sources
--------------------------------------------------------------------------------------------------------------

**Multiphase voltage and current sources**

Information
~~~~~~~~~~~

::

This package contains time-dependend and controlled multiphase voltage
and current sources:

-  SignalVoltage: fed by Modelica.Blocks.Sources arbitrary waveforms of
   voltages are possible
-  SineVoltage : phase shift between consecutive voltages by default
   ``= pi/m``
-  SignalCurrent: fed by Modelica.Blocks.Sources arbitrary waveforms of
   currents are possible
-  SineCurrent : phase shift between consecutive currents by default
   ``= pi/m``

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| Name                                                                                                                                                                               | Description                          |
+====================================================================================================================================================================================+======================================+
| |image6| `SignalVoltage <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources.SignalVoltage>`_                                                       | Multiphase signal voltage source     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image7| `ConstantVoltage <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources.ConstantVoltage>`_                                                   | Multiphase constant voltage source   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image8| `SineVoltage <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources.SineVoltage>`_                                                           | Multiphase sine voltage source       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image9| `SignalCurrent <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources.SignalCurrent>`_                                                       | Multiphase sine current source       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image10| `ConstantCurrent <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources.ConstantCurrent>`_                                                  | Multiphase constant current source   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image11| `SineCurrent <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources.SineCurrent>`_                                                          | Multiphase sine current source       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+

--------------

|image12| `Modelica.Electrical.MultiPhase.Sources <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources>`_.SignalVoltage
------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase signal voltage source**

.. figure:: Modelica.Electrical.MultiPhase.Sources.SignalVoltageD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Sources.SignalVoltage

   Modelica.Electrical.MultiPhase.Sources.SignalVoltage

Information
~~~~~~~~~~~

::

Contains m signal controlled voltage sources
(Modelica.Electrical.Analog.Sources.SignalVoltage)

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------+
| Type                                                                                                                      | Name      | Description                                                 |
+===========================================================================================================================+===========+=============================================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                 | v[m]      | Voltage between pin p and n (= p.v - n.v) as input signal   |
+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalVoltage "Multiphase signal voltage source"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.Current i[m] = plug_p.pin.i 
        "Currents flowing into positive plugs";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Blocks.Interfaces.RealInput v[m] 
        "Voltage between pin p and n (= p.v - n.v) as input signal";
      Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage[m];
    equation 
      connect(signalVoltage.p, plug_p.pin);
      connect(signalVoltage.n, plug_n.pin);
      connect(v, signalVoltage.v);
    end SignalVoltage;

--------------

|image13| `Modelica.Electrical.MultiPhase.Sources <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources>`_.ConstantVoltage
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase constant voltage source**

.. figure:: Modelica.Electrical.MultiPhase.Sources.ConstantVoltageD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Sources.ConstantVoltage

   Modelica.Electrical.MultiPhase.Sources.ConstantVoltage

Information
~~~~~~~~~~~

::

Contains m constant voltage sources
(Modelica.Electrical.Analog.Sources.ConstantVoltage)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                          | Name   | Default   | Description                     |
+===============================================================+========+===========+=================================+
| Integer                                                       | m      | 3         | Number of phases                |
+---------------------------------------------------------------+--------+-----------+---------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V[m]   |           | Value of constant voltage [V]   |
+---------------------------------------------------------------+--------+-----------+---------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantVoltage "Multiphase constant voltage source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Voltage V[m](start=fill(1, m)) 
        "Value of constant voltage";
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage[m](
        final V=V);
    equation 
      connect(constantVoltage.p, plug_p.pin);
      connect(constantVoltage.n, plug_n.pin);
    end ConstantVoltage;

--------------

|image14| `Modelica.Electrical.MultiPhase.Sources <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources>`_.SineVoltage
----------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase sine voltage source**

.. figure:: Modelica.Electrical.MultiPhase.Sources.SineVoltageD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Sources.SineVoltage

   Modelica.Electrical.MultiPhase.Sources.SineVoltage

Information
~~~~~~~~~~~

::

Contains m sine voltage sources
(Modelica.Electrical.Analog.Sources.SineVoltage) with a default phase
shift of -(j-1)/m \* 2\*pi for j in 1:m.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| Type                                                              | Name           | Default                             | Description                      |
+===================================================================+================+=====================================+==================================+
| Integer                                                           | m              | 3                                   | Number of phases                 |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | V[m]           |                                     | Amplitudes of sine waves [V]     |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase[m]       | -{(j - 1)/m\*2\*Modelica.Const...   | Phases of sine waves [rad]       |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz[m]      |                                     | Frequencies of sine waves [Hz]   |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | offset[m]      | zeros(m)                            | Voltage offsets [V]              |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime[m]   | zeros(m)                            | Time offsets [s]                 |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SineVoltage "Multiphase sine voltage source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Voltage V[m](start=fill(1, m)) 
        "Amplitudes of sine waves";
      parameter Modelica.SIunits.Angle phase[m]=-{(j - 1)/m*2*Modelica.
          Constants.pi for j in 1:m} "Phases of sine waves";
      parameter Modelica.SIunits.Frequency freqHz[m](start=fill(1, m)) 
        "Frequencies of sine waves";
      parameter Modelica.SIunits.Voltage offset[m]=zeros(m) "Voltage offsets";
      parameter Modelica.SIunits.Time startTime[m]=zeros(m) "Time offsets";
      Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage[m](
        final V=V,
        final phase=phase,
        final freqHz=freqHz,
        final offset=offset,
        final startTime=startTime);
    equation 
      connect(sineVoltage.p, plug_p.pin);
      connect(sineVoltage.n, plug_n.pin);
    end SineVoltage;

--------------

|image15| `Modelica.Electrical.MultiPhase.Sources <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources>`_.SignalCurrent
------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase sine current source**

.. figure:: Modelica.Electrical.MultiPhase.Sources.SignalCurrentD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Sources.SignalCurrent

   Modelica.Electrical.MultiPhase.Sources.SignalCurrent

Information
~~~~~~~~~~~

::

Contains m signal controlled current sources
(Modelica.Electrical.Analog.Sources.SignalCurrent)

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------+
| Type                                                                                                                      | Name      | Description                                           |
+===========================================================================================================================+===========+=======================================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                 | i[m]      | Current flowing from pin p to pin n as input signal   |
+---------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalCurrent "Multiphase sine current source"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.Voltage v[m] = plug_p.pin.v - plug_n.pin.v 
        "Voltage drops between the two plugs";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Blocks.Interfaces.RealInput i[m] 
        "Current flowing from pin p to pin n as input signal";
      Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent[m];
    equation 
      connect(signalCurrent.p, plug_p.pin);
      connect(signalCurrent.n, plug_n.pin);
      connect(i, signalCurrent.i);
    end SignalCurrent;

--------------

|image16| `Modelica.Electrical.MultiPhase.Sources <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources>`_.ConstantCurrent
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase constant current source**

.. figure:: Modelica.Electrical.MultiPhase.Sources.ConstantCurrentD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Sources.ConstantCurrent

   Modelica.Electrical.MultiPhase.Sources.ConstantCurrent

Information
~~~~~~~~~~~

::

Contains m constant current sources
(Modelica.Electrical.Analog.Sources.ConstantCurrent)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                          | Name   | Default   | Description                     |
+===============================================================+========+===========+=================================+
| Integer                                                       | m      | 3         | Number of phases                |
+---------------------------------------------------------------+--------+-----------+---------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I[m]   |           | Value of constant current [A]   |
+---------------------------------------------------------------+--------+-----------+---------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantCurrent "Multiphase constant current source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Current I[m](start=fill(1, m)) 
        "Value of constant current";
      Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent[m](
        final I=I);
    equation 
      connect(constantCurrent.p, plug_p.pin);
      connect(constantCurrent.n, plug_n.pin);
    end ConstantCurrent;

--------------

|image17| `Modelica.Electrical.MultiPhase.Sources <Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources>`_.SineCurrent
----------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase sine current source**

.. figure:: Modelica.Electrical.MultiPhase.Sources.SineCurrentD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Sources.SineCurrent

   Modelica.Electrical.MultiPhase.Sources.SineCurrent

Information
~~~~~~~~~~~

::

Contains m sine current sources
(Modelica.Electrical.Analog.Sources.SineCurrent) with a default phase
shift of -(j-1)/m \* 2\*pi for j in 1:m.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| Type                                                              | Name           | Default                             | Description                      |
+===================================================================+================+=====================================+==================================+
| Integer                                                           | m              | 3                                   | Number of phases                 |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | I[m]           |                                     | Amplitudes of sine waves [A]     |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase[m]       | -{(j - 1)/m\*2\*Modelica.Const...   | Phases of sine waves [rad]       |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz[m]      |                                     | Frequencies of sine waves [Hz]   |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | offset[m]      | zeros(m)                            | Current offsets [A]              |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime[m]   | zeros(m)                            | Time offsets [s]                 |
+-------------------------------------------------------------------+----------------+-------------------------------------+----------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SineCurrent "Multiphase sine current source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Current I[m](start=fill(1, m)) 
        "Amplitudes of sine waves";
      parameter Modelica.SIunits.Angle phase[m]=-{(j - 1)/m*2*Modelica.
          Constants.pi for j in 1:m} "Phases of sine waves";
      parameter Modelica.SIunits.Frequency freqHz[m](start=fill(1, m)) 
        "Frequencies of sine waves";
      parameter Modelica.SIunits.Current offset[m]=zeros(m) "Current offsets";
      parameter Modelica.SIunits.Time startTime[m]=zeros(m) "Time offsets";
      Modelica.Electrical.Analog.Sources.SineCurrent sineCurrent[m](
        final I=I,
        final phase=phase,
        final freqHz=freqHz,
        final offset=offset,
        final startTime=startTime);
    equation 
      connect(sineCurrent.p, plug_p.pin);
      connect(sineCurrent.n, plug_n.pin);
    end SineCurrent;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:22
2010.

.. |Modelica.Electrical.MultiPhase.Sources.SignalVoltage| image:: Modelica.Electrical.MultiPhase.Sources.SignalVoltageS.png
.. |Modelica.Electrical.MultiPhase.Sources.ConstantVoltage| image:: Modelica.Electrical.MultiPhase.Sources.ConstantVoltageS.png
.. |Modelica.Electrical.MultiPhase.Sources.SineVoltage| image:: Modelica.Electrical.MultiPhase.Sources.SineVoltageS.png
.. |Modelica.Electrical.MultiPhase.Sources.SignalCurrent| image:: Modelica.Electrical.MultiPhase.Sources.SignalCurrentS.png
.. |Modelica.Electrical.MultiPhase.Sources.ConstantCurrent| image:: Modelica.Electrical.MultiPhase.Sources.ConstantCurrentS.png
.. |Modelica.Electrical.MultiPhase.Sources.SineCurrent| image:: Modelica.Electrical.MultiPhase.Sources.SineCurrentS.png
.. |image6| image:: Modelica.Electrical.MultiPhase.Sources.SignalVoltageS.png
.. |image7| image:: Modelica.Electrical.MultiPhase.Sources.ConstantVoltageS.png
.. |image8| image:: Modelica.Electrical.MultiPhase.Sources.SineVoltageS.png
.. |image9| image:: Modelica.Electrical.MultiPhase.Sources.SignalCurrentS.png
.. |image10| image:: Modelica.Electrical.MultiPhase.Sources.ConstantCurrentS.png
.. |image11| image:: Modelica.Electrical.MultiPhase.Sources.SineCurrentS.png
.. |image12| image:: Modelica.Electrical.MultiPhase.Sources.SignalVoltageI.png
.. |image13| image:: Modelica.Electrical.MultiPhase.Sources.ConstantVoltageI.png
.. |image14| image:: Modelica.Electrical.MultiPhase.Sources.SineVoltageI.png
.. |image15| image:: Modelica.Electrical.MultiPhase.Sources.SignalCurrentI.png
.. |image16| image:: Modelica.Electrical.MultiPhase.Sources.ConstantCurrentI.png
.. |image17| image:: Modelica.Electrical.MultiPhase.Sources.SineCurrentI.png
