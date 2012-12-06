====================================================
Modelica.Electrical.Machines.SpacePhasors.Components
====================================================

`Modelica.Electrical.Machines.SpacePhasors <Modelica_Electrical_Machines_SpacePhasors.html#Modelica.Electrical.Machines.SpacePhasors>`_.Components
--------------------------------------------------------------------------------------------------------------------------------------------------

**Basic space phasor models**

Information
~~~~~~~~~~~

::

This package contains basic space phasor models.
 Real and imaginary part of voltage space phasor are the potentials
v\_[2] of the space phasor connector; (implicit grounded).
 Real and imaginary part of current space phasor are the currents i\_[2]
at the space phasor connector; a ground has to be used where necessary
for currents flowing back.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| Name                                                                                                                                                                                                             | Description                                              |
+==================================================================================================================================================================================================================+==========================================================+
| |image2| `SpacePhasor <Modelica_Electrical_Machines_SpacePhasors_Components.html#Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor>`_                                                             | Physical transformation: three phase <-> space phasors   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| |image3| `Rotator <Modelica_Electrical_Machines_SpacePhasors_Components.html#Modelica.Electrical.Machines.SpacePhasors.Components.Rotator>`_                                                                     | Rotates space phasor                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+

--------------

|image4| `Modelica.Electrical.Machines.SpacePhasors.Components <Modelica_Electrical_Machines_SpacePhasors_Components.html#Modelica.Electrical.Machines.SpacePhasors.Components>`_.SpacePhasor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Physical transformation: three phase <-> space phasors**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor

   Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor

Information
~~~~~~~~~~~

::

Physical transformation of voltages and currents: three phases <-> space
phasors:
 x[k] = X0 + {cos(-(k - 1)/m\*2\*pi),-sin(-(k - 1)/m\*2\*pi)}\*X[Re,Im]
 and vice versa:
 X0 = sum(x[k])/m
 X[Re,Im] = sum(2/m\*{cos((k - 1)/m\*2\*pi),sin((k -
1)/m\*2\*pi)}\*x[k])
 were x designates three phase values, X[Re,Im] designates the space
phasor and X0 designates the zero sequence system.
 *Physcial transformation* means that both voltages and currents are
transformed in both directions.
 Zero-sequence voltage and current are present at pin zero. An
additional zero-sequence impedance could be connected between pin zero
and pin ground.

::

Parameters
~~~~~~~~~~

+--------+--------------+-----------+---------------+
| Type   | Name         | Default   | Description   |
+========+==============+===========+===============+
| Real   | turnsRatio   | 1         | Turns ratio   |
+--------+--------------+-----------+---------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                      | Name          | Description   |
+===========================================================================================================================+===============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p       |               |
+---------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n       |               |
+---------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_             | zero          |               |
+---------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_             | ground        |               |
+---------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_         | spacePhasor   |               |
+---------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpacePhasor 
      "Physical transformation: three phase <-> space phasors"
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
      parameter Real turnsRatio=1 "Turns ratio";
      Modelica.SIunits.Voltage v[m] "Instantaneous phase voltages";
      Modelica.SIunits.Current i[m] "Instantaneous phase currents";
    protected 
      parameter Real TransformationMatrix[ 2, m]=2/m*
        {{cos(+(k - 1)/m*2*pi) for k in 1:m}, {+sin(+(k - 1)/m*2*pi) for k in 1:m}};
      parameter Real InverseTransformation[m, 2]=
        {{cos(-(k - 1)/m*2*pi), -sin(-(k - 1)/m*2*pi)} for k in 1:m};
    public 
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.Analog.Interfaces.PositivePin zero;
      Modelica.Electrical.Analog.Interfaces.NegativePin ground;
      Machines.Interfaces.SpacePhasor spacePhasor;
    equation 
      v/turnsRatio = plug_p.pin.v - plug_n.pin.v;
      i*turnsRatio = +plug_p.pin.i;
      i*turnsRatio = -plug_n.pin.i;
      m*zero.v = sum(v);
      spacePhasor.v_ = TransformationMatrix *v;
    //v  = fill(zero.v,m) + InverseTransformation*spacePhasor.v_;
      -m*zero.i = sum(i);
      -spacePhasor.i_ = TransformationMatrix *i;
    //-i  = fill(zero.i,m) + InverseTransformation*spacePhasor.i_;
      ground.v = 0;
    end SpacePhasor;

--------------

|image5| `Modelica.Electrical.Machines.SpacePhasors.Components <Modelica_Electrical_Machines_SpacePhasors_Components.html#Modelica.Electrical.Machines.SpacePhasors.Components>`_.Rotator
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Rotates space phasor**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Components.RotatorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Components.Rotator

   Modelica.Electrical.Machines.SpacePhasors.Components.Rotator

Information
~~~~~~~~~~~

::

Rotates space phasors of left connector to right connector by the angle
provided by the input signal "angle" from one coordinate system into
another.

::

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                | Name             | Description   |
+=====================================================================================================================+==================+===============+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_a   |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_b   |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                           | angle            |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Rotator "Rotates space phasor"
      constant Real pi=Modelica.Constants.pi;
    protected 
      Real RotationMatrix[2,2] = {{+cos(-angle),-sin(-angle)},{+sin(-angle),+cos(-angle)}};
    //Real InverseRotator[2,2] = {{+cos(+angle),-sin(+angle)},{+sin(+angle),+cos(+angle)}};
    public 
      Machines.Interfaces.SpacePhasor spacePhasor_a;
      Machines.Interfaces.SpacePhasor spacePhasor_b;
      Modelica.Blocks.Interfaces.RealInput angle;
    equation 
      spacePhasor_b.v_ = RotationMatrix*spacePhasor_a.v_;
    //spacePhasor_a.v_ = InverseRotator*spacePhasor_b.v_;
      spacePhasor_b.i_ + RotationMatrix*spacePhasor_a.i_ = zeros(2);
    //spacePhasor_a.i_ + InverseRotator*spacePhasor_b.i_ = zeros(2);
    end Rotator;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:03
2010.

.. |Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor| image:: Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasorS.png
.. |Modelica.Electrical.Machines.SpacePhasors.Components.Rotator| image:: Modelica.Electrical.Machines.SpacePhasors.Components.RotatorS.png
.. |image2| image:: Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasorS.png
.. |image3| image:: Modelica.Electrical.Machines.SpacePhasors.Components.RotatorS.png
.. |image4| image:: Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasorI.png
.. |image5| image:: Modelica.Electrical.Machines.SpacePhasors.Components.RotatorI.png
