=================================
Modelica.Magnetic.FluxTubes.Basic
=================================

`Modelica.Magnetic.FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_.Basic
---------------------------------------------------------------------------------------------------

**Basic elements of magnetic network models**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                           | Description                                                                                                         |
+================================================================================================================================================================================================+=====================================================================================================================+
| |image5| `Ground <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.Ground>`_                                                                                           | Zero magnetic potential                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| |image6| `ElectroMagneticConverter <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverter>`_                                                       | Electro-magnetic energy conversion                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| |image7| `ConstantReluctance <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.ConstantReluctance>`_                                                                   | Constant reluctance                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| |image8| `LeakageWithCoefficient <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.LeakageWithCoefficient>`_                                                           | Leakage reluctance with respect to the reluctance of a useful flux path (not for dynamic simulation of actuators)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| |image9| `EddyCurrent <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.EddyCurrent>`_                                                                                 | For modelling of eddy current in a conductive magnetic flux tube                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+

--------------

|image10| `Modelica.Magnetic.FluxTubes.Basic <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic>`_.Ground
--------------------------------------------------------------------------------------------------------------------------------

**Zero magnetic potential**

.. figure:: Modelica.Magnetic.FluxTubes.Basic.GroundD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Basic.Ground

   Modelica.Magnetic.FluxTubes.Basic.Ground

Information
~~~~~~~~~~~

::

The magnetic potential at the magnetic ground node is zero. Every
magnetic network model must contain at least one magnetic ground object.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                                | Name   | Description   |
+=====================================================================================================================================+========+===============+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port   |               |
+-------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Ground "Zero magnetic potential"

      Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort port;
    equation 
      port.V_m = 0;
    end Ground;

--------------

|image11| `Modelica.Magnetic.FluxTubes.Basic <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic>`_.ElectroMagneticConverter
--------------------------------------------------------------------------------------------------------------------------------------------------

**Electro-magnetic energy conversion**

.. figure:: Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverterD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverter

   Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverter

Information
~~~~~~~~~~~

::

The electro-magnetic energy conversion is given by *Ampere*'s law and
*Faraday*'s law respectively:

::

        V_m = i * N
        N * dΦ/dt = -v

V\_m is the magnetomotive force that is supplied to the connected
magnetic circuit, Φ is the magnetic flux through the associated branch
of this magnetic circuit. The negative sign of the induced voltage v is
due to *Lenz*'s law.

The flux linkage Ψ and the static inductance L\_stat = \|Ψ/i\| are
calculated for information only. Note that L\_stat is set to \|Ψ/eps\|
if \|i\| < eps (= 100\*Modelica.Constants.eps).

::

Parameters
~~~~~~~~~~

+--------+--------+-----------+-------------------+
| Type   | Name   | Default   | Description       |
+========+========+===========+===================+
| Real   | N      |           | Number of turns   |
+--------+--------+-----------+-------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_                       | p         | Positive electric pin    |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                       | n         | Negative electric pin    |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ElectroMagneticConverter "Electro-magnetic energy conversion"

      Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort port_p 
        "Positive magnetic port";
      Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort port_n 
        "Negative magnetic port";
      Modelica.Electrical.Analog.Interfaces.PositivePin p "Positive electric pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n "Negative electric pin";
      SI.Voltage v "Voltage";
      SI.Current i(start = 0, stateSelect=StateSelect.prefer) "Current";
      SI.MagneticPotentialDifference V_m "Magnetic potential difference";
      SI.MagneticFlux Phi "Magnetic flux coupled into magnetic circuit";

      parameter Real N(start = 1) "Number of turns";

      //for information only:
      SI.MagneticFlux Psi "Flux linkage for information only";
      SI.Inductance L_stat "Static inductance abs(Psi/i) for information only";

    protected 
      Real eps = 100*Modelica.Constants.eps;
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;

      V_m = port_p.V_m - port_n.V_m;
      0 = port_p.Phi + port_n.Phi;
      Phi = port_p.Phi;

      //converter equations:
      V_m = i * N;   // Ampere's law
      N * der(Phi) = -v;   // Faraday's law

      //for information only:
      Psi = N * Phi;
      //use of abs() for positive results; due to Modelica sign conventions for flow into connectors:
      L_stat = noEvent(if abs(i) > eps then abs(Psi/i) else abs(Psi/eps));

    end ElectroMagneticConverter;

--------------

|image12| `Modelica.Magnetic.FluxTubes.Basic <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic>`_.ConstantReluctance
--------------------------------------------------------------------------------------------------------------------------------------------

**Constant reluctance**

.. figure:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctance

   Modelica.Magnetic.FluxTubes.Basic.ConstantReluctance

Information
~~~~~~~~~~~

::

This constant reluctance is provided for test purposes and simple
magnetic network models. The reluctance is not calculated from geometry
and permeability of a flux tube, but is provided as a parameter.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts>`_
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+-----------------------------+
| Type                                                                | Name   | Default   | Description                 |
+=====================================================================+========+===========+=============================+
| `Reluctance <Modelica_SIunits.html#Modelica.SIunits.Reluctance>`_   | R\_m   |           | Magnetic reluctance [H-1]   |
+---------------------------------------------------------------------+--------+-----------+-----------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantReluctance "Constant reluctance"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      parameter SI.Reluctance R_m(start = 1) "Magnetic reluctance";

    equation 
      V_m = Phi * R_m;

    end ConstantReluctance;

--------------

|image13| `Modelica.Magnetic.FluxTubes.Basic <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic>`_.LeakageWithCoefficient
------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage reluctance with respect to the reluctance of a useful flux
path (not for dynamic simulation of actuators)**

.. figure:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Basic.LeakageWithCoefficient

   Modelica.Magnetic.FluxTubes.Basic.LeakageWithCoefficient

Information
~~~~~~~~~~~

::

Differently from the flux tube elements of package
`Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
that are calculated from their geometry, this leakage reluctance is
calculated with reference to the total reluctance of a useful flux path.
Please refer to the **Parameters** section for an illustration of the
resulting magnetic network. Exploiting *Kirchhoff*'s generalized current
law, the leakage reluctance is calculated by means of a coupling
coefficient c\_usefulFlux.

Attention:
^^^^^^^^^^

This element must **not** be used **for dynamic simulation of**
electro-magneto-mechanical **actuators**, where the shape of at least
one flux tube element with reluctance force generation in the useful
flux path changes with armature motion (e.g., air gap). This change
results in a non-zero derivative dG\_m/dx of those elements permeance
G\_m with respect to armature position x, which in turn will lead to a
non-zero derivative of the leakage permeance with respect to armature
position. This would generate a reluctance force in the leakage element
that is not accounted for properly.
`Shapes.Force.LeakageAroundPoles <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles>`_
provides a simple leakage reluctance with force generation.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------------------+
| Type                                                                                  | Name            | Default   | Description                                                                   |
+=======================================================================================+=================+===========+===============================================================================+
| `CouplingCoefficient <Modelica_SIunits.html#Modelica.SIunits.CouplingCoefficient>`_   | c\_usefulFlux   |           | Ratio useful flux/(leakage flux + useful flux) = useful flux/total flux [1]   |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------------------+
| Reference reluctance                                                                  |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------------------+
| `Reluctance <Modelica_SIunits.html#Modelica.SIunits.Reluctance>`_                     | R\_mUsefulTot   |           | Total reluctance of useful flux path as reference [H-1]                       |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------------------+
| |image15|                                                                             |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LeakageWithCoefficient 
      "Leakage reluctance with respect to the reluctance of a useful flux path (not for dynamic simulation of actuators)"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.CouplingCoefficient c_usefulFlux( start = 0.7) 
        "Ratio useful flux/(leakage flux + useful flux) = useful flux/total flux";

      input SI.Reluctance R_mUsefulTot 
        "Total reluctance of useful flux path as reference";
    equation 
      (1 - c_usefulFlux) * R_m = c_usefulFlux * R_mUsefulTot;   // Generalized Kirchhoff's current law

    end LeakageWithCoefficient;

--------------

|image16| `Modelica.Magnetic.FluxTubes.Basic <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic>`_.EddyCurrent
-------------------------------------------------------------------------------------------------------------------------------------

**For modelling of eddy current in a conductive magnetic flux tube**

.. figure:: Modelica.Magnetic.FluxTubes.Basic.EddyCurrentD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Basic.EddyCurrent

   Modelica.Magnetic.FluxTubes.Basic.EddyCurrent

Information
~~~~~~~~~~~

::

Eddy currents are induced in a conductive magnetic flux tube when the
flux changes with time. This causes a magnetic voltage drop in addition
to the voltage drop that is due to the reluctance of this flux tube. The
eddy current component can be thought of as a short-circuited secundary
winding of a transformer with only one turn. Its resistance is
calculated from the geometry and resistivity of the eddy current path.

Partitioning of a solid conductive cylinder or prism into several hollow
cylinders or separate nested prisms and modelling of each of these flux
tubes connected in parallel with a series connection of a reluctance
element and an eddy current component can model the delayed buildup of
the magnetic field in the complete flux tube from the outer to the inner
sections. Please refer to
`[Ka08] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for an illustration.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts>`_
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                                           |
+=======================================================================+===============+===========+=======================================================================+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                                         |
+-----------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 273.15    | Fixed device temperature if useHeatPort = false [K]                   |
+-----------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------+
| `Resistivity <Modelica_SIunits.html#Modelica.SIunits.Resistivity>`_   | rho           |           | Resistivity of flux tube material (default: Iron at 20degC) [Ohm.m]   |
+-----------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_             | l             |           | Average length of eddy current path [m]                               |
+-----------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                 | A             |           | Cross sectional area of eddy current path [m2]                        |
+-----------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------+
| Type                                                                                                                                | Name       | Description              |
+=====================================================================================================================================+============+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p    | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n    | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                  | heatPort   |                          |
+-------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model EddyCurrent 
      "For modelling of eddy current in a conductive magnetic flux tube"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T = 273.15);

      parameter SI.Resistivity rho( start = 0.098e-6) 
        "Resistivity of flux tube material (default: Iron at 20degC)";
      parameter SI.Length l(start = 1) "Average length of eddy current path";
      parameter SI.Area A(start = 1) "Cross sectional area of eddy current path";

      final parameter SI.Resistance R = rho * l /A 
        "Electrical resistance of eddy current path";

    equation 
      LossPower = V_m*der(Phi);
      V_m = 1/R * der(Phi); //Magnetic voltage drop in magnetic network due to eddy current
    end EddyCurrent;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:51
2010.

.. |Modelica.Magnetic.FluxTubes.Basic.Ground| image:: Modelica.Magnetic.FluxTubes.Basic.GroundS.png
.. |Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverter| image:: Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverterS.png
.. |Modelica.Magnetic.FluxTubes.Basic.ConstantReluctance| image:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceS.png
.. |Modelica.Magnetic.FluxTubes.Basic.LeakageWithCoefficient| image:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceS.png
.. |Modelica.Magnetic.FluxTubes.Basic.EddyCurrent| image:: Modelica.Magnetic.FluxTubes.Basic.EddyCurrentS.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Basic.GroundS.png
.. |image6| image:: Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverterS.png
.. |image7| image:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceS.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceS.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Basic.EddyCurrentS.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Basic.GroundI.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverterI.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceI.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Basic.ConstantReluctanceI.png
.. |image14| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Basic/LeakageWithCoefficient.png
.. |image15| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Basic/LeakageWithCoefficient.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Basic.EddyCurrentI.png
