============================================
Modelica.Magnetic.FundamentalWave.Components
============================================

`Modelica.Magnetic.FundamentalWave <Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave>`_.Components
--------------------------------------------------------------------------------------------------------------------------

**Basic fundamental wave components**

Information
~~~~~~~~~~~

::

Basic components of the FundamentalWave library for modeling magnetic
circuits. Machine specific components are located at
`Machines.Components <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components>`_.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                             | Description                                                |
+==================================================================================================================================================================================================================================================================+============================================================+
| |image7| `Ground <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Ground>`_                                                                                                                                       | Magnetic ground                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image8| `Reluctance <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Reluctance>`_                                                                                                                               | Salient reluctance                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image9| `EddyCurrent <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent>`_                                                                                                                             | Constant loss model under sinusoidal magnetic conditions   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image10| `SinglePhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter>`_                                                                            | Single phase electro magnetic converter                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image11| `MultiPhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter>`_                                                                              | Multi phase electro magnetic converter                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image12| `Idle <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Idle>`_                                                                                                                                          | Salient reluctance                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image13| `Short <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Short>`_                                                                                                                                        | Salient reluctance                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+

--------------

|image14| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.Ground
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Magnetic ground**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.GroundD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.Ground

   Modelica.Magnetic.FundamentalWave.Components.Ground

Information
~~~~~~~~~~~

::

Grounding of the complex magnetic potential. Each magnetic circuit has
to be grounded at least one point of the circuit.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------+
| Type                                                                                                                                            | Name      | Description             |
+=================================================================================================================================================+===========+=========================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Ground "Magnetic ground"

      Interfaces.PositiveMagneticPort port_p "Complex magnetic port";

    equation 
      port_p.V_m = Complex(0,0);
    end Ground;

--------------

|image15| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.Reluctance
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Salient reluctance**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.ReluctanceD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.Reluctance

   Modelica.Magnetic.FundamentalWave.Components.Reluctance

Information
~~~~~~~~~~~

::

The salient reluctance models the relationship between the complex
magnetic potential difference |image16| and the complex magnetic flux
|image17|,

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/reluctance.png
   :align: center
   :alt: 

which can also be expressed in terms complex phasors:

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/reluctance_alt.png
   :align: center
   :alt: 

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary>`_
(Two magnetic ports for textual modeling).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------------------+
| Type                                                                                                                            | Name   | Default   | Description                                 |
+=================================================================================================================================+========+===========+=============================================+
| `SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_   | R\_m   |           | Magnetic reluctance in d=re and q=im axis   |
+---------------------------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Reluctance "Salient reluctance"

      import Modelica.Constants.pi;

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;
      parameter Modelica.Magnetic.FundamentalWave.Types.SalientReluctance R_m(
        d(start=1), q(start=1)) "Magnetic reluctance in d=re and q=im axis";

    equation 
      (pi/2) * V_m.re = R_m.d * Phi.re;
      (pi/2) * V_m.im = R_m.q * Phi.im;
    end Reluctance;

--------------

|image18| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.EddyCurrent
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant loss model under sinusoidal magnetic conditions**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.EddyCurrentD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.EddyCurrent

   Modelica.Magnetic.FundamentalWave.Components.EddyCurrent

Information
~~~~~~~~~~~

::

The eddy current loss model with respect to fundamental wave effects is
designed in accordance to
`FluxTubes.Basic.EddyCurrent <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.EddyCurrent>`_.

|image19|.

Fig. 1: equivalent models of eddy current losses

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/eddycurrent_electric.png
   :align: center
   :alt: 

Due to the nature of eddy current losses, which can be represented by
symmetric conductors in an equivalent electric circuit (Fig. 1), the
respective number of phases |image20| has to be taken into account.
Assume that the |image21| conductances of the equivalent circuit are
|image22|, the conductance for the eddy current loss model is determined
by

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/GGc.png
   :align: center
   :alt: 

where |image23| is the number of turns of the symmetric electro magnetic
coupling.

For such an |image24| phase system the relationship between the voltage
and current `space
phasors <http://www.haumer.at/refimg/SpacePhasors.pdf>`_ and the
magnetic flux and magnetic potential difference phasor is

|image25|,
 |image26|,

where |image27| and |image28| are the phase voltages and currents,
respectively.

The dissipated loss power

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/lossPower.png
   :align: center
   :alt: 

can be determined for the `space
phasor <http://www.haumer.at/refimg/SpacePhasors.pdf>`_ relationship of
the voltage and current space phasor.

See also
^^^^^^^^

`FluxTubes.Basic.EddyCurrent <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.EddyCurrent>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary>`_
(Two magnetic ports for textual modeling),
`Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | G             |           | Eqivalent symmetric loss conductance [S]              |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if heatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 273.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+
| Type                                                                                                                                            | Name       | Description                                                                |
+=================================================================================================================================================+============+============================================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p    | Positive complex magnetic port                                             |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n    | Negative complex magnetic port                                             |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                              | heatPort   | Optional port to which dissipated losses are transported in form of heat   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model EddyCurrent 
      "Constant loss model under sinusoidal magnetic conditions"

      import Modelica.Constants.pi;

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;
      parameter Modelica.SIunits.Conductance G(min=0) 
        "Eqivalent symmetric loss conductance";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T = 273.15);

    equation 
      lossPower = (pi/2)*(V_m.re*der(Phi.re) + V_m.im*der(Phi.im));
      if G>0 then
        (pi/2) * V_m.re = G * der(Phi.re);
        (pi/2) * V_m.im = G * der(Phi.im);
      else
        V_m.re = 0;
        V_m.im = 0;
      end if;
    end EddyCurrent;

--------------

|image29| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.SinglePhaseElectroMagneticConverter
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Single phase electro magnetic converter**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter

   Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter

Information
~~~~~~~~~~~

::

The single phase winding has an effective number of turns, |image30| and
a respective orientation of the winding, |image31|. The current in
winding is |image32|.

The total complex magnetic potential difference of the single phase
winding is determined by:

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/singlephaseconverter_vm.png
   :align: center
   :alt: 

In this equation the magneto motive force is aligned with the
orientation of the winding.

The voltage |image33| induced in the winding depends on the cosine
between the orientation of the winding and the angle of the complex
magnetic flux. Additionally, the magnitudes of the induced voltages are
propotional to the respective number of turns. This relationship can be
modeled by means of

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/singlephaseconverter_phi.png
   :align: center
   :alt: 

The single phase electro magnetic converter is a special case of the
`MultiPhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter>`_

See also
^^^^^^^^

`MultiPhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter>`_

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------+
| Type                                                      | Name             | Default   | Description                                                       |
+===========================================================+==================+===========+===================================================================+
| Real                                                      | effectiveTurns   |           | Effective number of turns                                         |
+-----------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | orientation      |           | Orientation of the resulting fundamental wave V\_m phasor [rad]   |
+-----------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_                                   | pin\_p    | Positive pin                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                                   | pin\_n    | Negative pin                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SinglePhaseElectroMagneticConverter 
      "Single phase electro magnetic converter"

      import Modelica.Constants.pi;

      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n "Negative pin";

      Interfaces.PositiveMagneticPort port_p "Positive complex magnetic port";
      Interfaces.NegativeMagneticPort port_n "Negative complex magnetic port";

      parameter Real effectiveTurns "Effective number of turns";
      parameter Modelica.SIunits.Angle orientation 
        "Orientation of the resulting fundamental wave V_m phasor";

      // Local electric single phase quantities
      Modelica.SIunits.Voltage v "Voltage drop";
      Modelica.SIunits.Current i "Current";

      // Local electromagnetic fundamental wave quantities
      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

      final parameter Complex N=
        effectiveTurns * Modelica.ComplexMath.exp(Complex(0,orientation)) 
        "Complex number of turns";

    equation 
      // Magnetic flux and flux balance of the magnetic ports
      port_p.Phi = Phi;
      port_p.Phi + port_n.Phi = Complex(0,0);

      // Magnetic potential difference of the magnetic ports
      port_p.V_m - port_n.V_m = V_m;

      // Voltage drop between the electrical pins
      v = pin_p.v - pin_n.v;

      // Current and current balance of the electric pins
      i = pin_p.i;
      pin_p.i + pin_n.i = 0;

      // Complex magnetic potential difference is determined from currents, number
      // of turns and angles of orientation of winding
      // V_m.re = (2/pi) * effectiveTurns*cos(orientation)*i;
      // V_m.im = (2/pi) * effectiveTurns*sin(orientation)*i;
      V_m = (2.0/pi) * N * i;

      // Induced voltages is determined from complex magnetic flux, number of turns
      // and angles of orientation of winding
      // -v = effectiveTurns*cos(orientation)*der(Phi.re)
      //    + effectiveTurns*sin(orientation)*der(Phi.im);
      -v = Modelica.ComplexMath.real(Modelica.ComplexMath.conj(N)*Complex(der(Phi.re),der(Phi.im)));

    end SinglePhaseElectroMagneticConverter;

--------------

|image34| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.MultiPhaseElectroMagneticConverter
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multi phase electro magnetic converter**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverterD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter

   Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter

Information
~~~~~~~~~~~

::

Each phase |image35| of an |image36| phase winding has an effective
number of turns, |image37| and an respective winging angle |image38| and
a phase current |image39|.

The total complex magnetic potential difference of the mutli phase
winding is determined by:

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/multiphaseconverter_vm.png
   :align: center
   :alt: 

In this equation each contribution of a winding magneto motive force on
the total complex magnetic potential difference is aligned with the
respective orientation of the winding.

The voltages |image40| induced in each winding depend on the cosinus
between the orientation of the winding and the angle of the complex
magnetic flux. Additionally, the magnitudes of the induced voltages are
propotional to the respective number of turns. This relationship can be
modeled by means of

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/multiphaseconverter_phi.png
   :align: center
   :alt: 

for |image41| and is also illustrated by the following figure:

**Fig:** Orientation of winding and location of complex magnetic flux

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/Components/coupling.png
   :align: center
   :alt: 

See also
^^^^^^^^

`SinglePhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter>`_

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+---------------------+-----------+--------------------------------------------------------------------+
| Type                                                      | Name                | Default   | Description                                                        |
+===========================================================+=====================+===========+====================================================================+
| Integer                                                   | m                   | 3         | Number of phases                                                   |
+-----------------------------------------------------------+---------------------+-----------+--------------------------------------------------------------------+
| Real                                                      | effectiveTurns[m]   |           | Effective number of turns                                          |
+-----------------------------------------------------------+---------------------+-----------+--------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | orientation[m]      |           | Orientation of the resulting fundamental wave field phasor [rad]   |
+-----------------------------------------------------------+---------------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                         | plug\_p   | Positive plug                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                         | plug\_n   | Negative plug                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MultiPhaseElectroMagneticConverter 
      "Multi phase electro magnetic converter"

      import Modelica.Constants.pi;

      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(
        final m=m) "Positive plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(
        final m=m) "Negative plug";

      Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort port_p 
        "Positive complex magnetic port";
      Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort port_n 
        "Negative complex magnetic port";

      parameter Integer m = 3 "Number of phases";
      parameter Real effectiveTurns[m] "Effective number of turns";
      parameter Modelica.SIunits.Angle orientation[m] 
        "Orientation of the resulting fundamental wave field phasor";

      Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter
        singlePhaseElectroMagneticConverter[m](
          final effectiveTurns=effectiveTurns,
          final orientation=orientation);
    equation 
      connect(plug_p.pin, singlePhaseElectroMagneticConverter.pin_p);
      connect(singlePhaseElectroMagneticConverter.pin_n, plug_n.pin);
      connect(singlePhaseElectroMagneticConverter[1].port_p, port_p);
      for k in 2:m loop
        connect(singlePhaseElectroMagneticConverter[k-1].port_n,singlePhaseElectroMagneticConverter[k].port_p);
      end for;
      connect(singlePhaseElectroMagneticConverter[m].port_n, port_n);

    end MultiPhaseElectroMagneticConverter;

--------------

|image42| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.Idle
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Salient reluctance**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.IdleD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.Idle

   Modelica.Magnetic.FundamentalWave.Components.Idle

Information
~~~~~~~~~~~

::

This is a simple idle running branch.

See also
^^^^^^^^

`Short <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Short>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary>`_
(Two magnetic ports for textual modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Idle "Salient reluctance"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;
    equation 
      Phi = Complex(0,0);
    end Idle;

--------------

|image43| `Modelica.Magnetic.FundamentalWave.Components <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components>`_.Short
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Salient reluctance**

.. figure:: Modelica.Magnetic.FundamentalWave.Components.ShortD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Components.Short

   Modelica.Magnetic.FundamentalWave.Components.Short

Information
~~~~~~~~~~~

::

This is a simple short cut branch.

See also
^^^^^^^^

`Idle <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Idle>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Short "Salient reluctance"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

    equation 
      connect(port_p, port_n);
    end Short;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:58
2010.

.. |Modelica.Magnetic.FundamentalWave.Components.Ground| image:: Modelica.Magnetic.FundamentalWave.Components.GroundS.png
.. |Modelica.Magnetic.FundamentalWave.Components.Reluctance| image:: Modelica.Magnetic.FundamentalWave.Components.ReluctanceS.png
.. |Modelica.Magnetic.FundamentalWave.Components.EddyCurrent| image:: Modelica.Magnetic.FundamentalWave.Components.EddyCurrentS.png
.. |Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter| image:: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterS.png
.. |Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter| image:: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterS.png
.. |Modelica.Magnetic.FundamentalWave.Components.Idle| image:: Modelica.Magnetic.FundamentalWave.Components.IdleS.png
.. |Modelica.Magnetic.FundamentalWave.Components.Short| image:: Modelica.Magnetic.FundamentalWave.Components.ShortS.png
.. |image7| image:: Modelica.Magnetic.FundamentalWave.Components.GroundS.png
.. |image8| image:: Modelica.Magnetic.FundamentalWave.Components.ReluctanceS.png
.. |image9| image:: Modelica.Magnetic.FundamentalWave.Components.EddyCurrentS.png
.. |image10| image:: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterS.png
.. |image11| image:: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterS.png
.. |image12| image:: Modelica.Magnetic.FundamentalWave.Components.IdleS.png
.. |image13| image:: Modelica.Magnetic.FundamentalWave.Components.ShortS.png
.. |image14| image:: Modelica.Magnetic.FundamentalWave.Components.GroundI.png
.. |image15| image:: Modelica.Magnetic.FundamentalWave.Components.ReluctanceI.png
.. |image16| image:: ../Resources/Images/Magnetic/FundamentalWave/V_m.png
.. |image17| image:: ../Resources/Images/Magnetic/FundamentalWave/Phi.png
.. |image18| image:: Modelica.Magnetic.FundamentalWave.Components.EddyCurrentI.png
.. |image19| image:: ../Resources/Images/Magnetic/FundamentalWave/Components/eddycurrent.png
.. |image20| image:: ../Resources/Images/Magnetic/FundamentalWave/m.png
.. |image21| image:: ../Resources/Images/Magnetic/FundamentalWave/m.png
.. |image22| image:: ../Resources/Images/Magnetic/FundamentalWave/Components/Gc.png
.. |image23| image:: ../Resources/Images/Magnetic/FundamentalWave/N.png
.. |image24| image:: ../Resources/Images/Magnetic/FundamentalWave/m.png
.. |image25| image:: ../Resources/Images/Magnetic/FundamentalWave/Components/vPhi.png
.. |image26| image:: ../Resources/Images/Magnetic/FundamentalWave/Components/iV_m.png
.. |image27| image:: ../Resources/Images/Magnetic/FundamentalWave/v_k.png
.. |image28| image:: ../Resources/Images/Magnetic/FundamentalWave/i_k.png
.. |image29| image:: Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterI.png
.. |image30| image:: ../Resources/Images/Magnetic/FundamentalWave/effectiveTurns.png
.. |image31| image:: ../Resources/Images/Magnetic/FundamentalWave/orientation.png
.. |image32| image:: ../Resources/Images/Magnetic/FundamentalWave/i.png
.. |image33| image:: ../Resources/Images/Magnetic/FundamentalWave/v.png
.. |image34| image:: Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverterI.png
.. |image35| image:: ../Resources/Images/Magnetic/FundamentalWave/k.png
.. |image36| image:: ../Resources/Images/Magnetic/FundamentalWave/m.png
.. |image37| image:: ../Resources/Images/Magnetic/FundamentalWave/effectiveTurns_k.png
.. |image38| image:: ../Resources/Images/Magnetic/FundamentalWave/orientation_k.png
.. |image39| image:: ../Resources/Images/Magnetic/FundamentalWave/i_k.png
.. |image40| image:: ../Resources/Images/Magnetic/FundamentalWave/v_k.png
.. |image41| image:: ../Resources/Images/Magnetic/FundamentalWave/k_in_1_m.png
.. |image42| image:: Modelica.Magnetic.FundamentalWave.Components.IdleI.png
.. |image43| image:: Modelica.Magnetic.FundamentalWave.Components.ShortI.png
