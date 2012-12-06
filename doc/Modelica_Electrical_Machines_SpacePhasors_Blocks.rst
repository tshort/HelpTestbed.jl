================================================
Modelica.Electrical.Machines.SpacePhasors.Blocks
================================================

`Modelica.Electrical.Machines.SpacePhasors <Modelica_Electrical_Machines_SpacePhasors.html#Modelica.Electrical.Machines.SpacePhasors>`_.Blocks
----------------------------------------------------------------------------------------------------------------------------------------------

**Blocks for space phasor transformation**

Information
~~~~~~~~~~~

::

This package contains space phasor transformation blocks for use in
controllers:

-  ToSpacePhasor: transforms a set of threephase values to space phasor
   and zero sequence system
-  FromSpacePhasor: transforms a space phasor and zero sequence system
   to a set of threephase values
-  Rotator: rotates a space phasor (from one coordinate system into
   another)
-  ToPolar: Converts a space phasor from rectangular coordinates to
   polar coordinates
-  FromPolar: Converts a space phasor from polar coordinates to
   rectangular coordinates

Space phasors are defined as vectors of length = 2, the first element
representing the real part and the second element representing the
imaginary part of the space phasor.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| Name                                                                                                                                                                                                             | Description                                      |
+==================================================================================================================================================================================================================+==================================================+
| |image5| `ToSpacePhasor <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasor>`_                                                                 | Conversion: three phase -> space phasor          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image6| `FromSpacePhasor <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasor>`_                                                             | Conversion: space phasor -> three phase          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image7| `Rotator <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.Rotator>`_                                                                             | Rotates space phasor                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image8| `ToPolar <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar>`_                                                                             | Converts a space phasor to polar coordinates     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image9| `FromPolar <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar>`_                                                                         | Converts a space phasor from polar coordinates   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+

--------------

|image10| `Modelica.Electrical.Machines.SpacePhasors.Blocks <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks>`_.ToSpacePhasor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion: three phase -> space phasor**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasor

   Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasor

Information
~~~~~~~~~~~

::

Transformation of threephase values (voltages or currents) to space
phasor and zero sequence value.

::

Extends from
`Modelica.Blocks.Interfaces.MIMO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO>`_
(Multiple Input Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+---------------------+
| Type      | Name   | Default   | Description         |
+===========+========+===========+=====================+
| Integer   | nin    | m         | Number of inputs    |
+-----------+--------+-----------+---------------------+
| Integer   | nout   | 2         | Number of outputs   |
+-----------+--------+-----------+---------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[nin]    | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | zero      |                                    |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ToSpacePhasor "Conversion: three phase -> space phasor"
      extends Modelica.Blocks.Interfaces.MIMO(final nin=m, final nout=2);
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
    protected 
      parameter Real TransformationMatrix[ 2, m]=2/m*
        {{cos(+(k - 1)/m*2*pi) for k in 1:m}, {+sin(+(k - 1)/m*2*pi) for k in 1:m}};
      parameter Real InverseTransformation[m, 2]=
        {{cos(-(k - 1)/m*2*pi), -sin(-(k - 1)/m*2*pi)} for k in 1:m};
    public 
      Modelica.Blocks.Interfaces.RealOutput zero;

    equation 
      m*zero = sum(u);
      y = TransformationMatrix *u;
    //u = fill(zero,m) + InverseTransformation*y;
    end ToSpacePhasor;

--------------

|image11| `Modelica.Electrical.Machines.SpacePhasors.Blocks <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks>`_.FromSpacePhasor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion: space phasor -> three phase**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasor

   Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasor

Information
~~~~~~~~~~~

::

Transformation of space phasor and zero sequence value to threephase
values (voltages or currents).

::

Extends from
`Modelica.Blocks.Interfaces.MIMO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO>`_
(Multiple Input Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+---------------------+
| Type      | Name   | Default   | Description         |
+===========+========+===========+=====================+
| Integer   | nin    | 2         | Number of inputs    |
+-----------+--------+-----------+---------------------+
| Integer   | nout   | m         | Number of outputs   |
+-----------+--------+-----------+---------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[nin]    | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | zero      |                                    |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block FromSpacePhasor "Conversion: space phasor -> three phase"
      extends Modelica.Blocks.Interfaces.MIMO(final nin=2, final nout=m);
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
    protected 
      parameter Real TransformationMatrix[ 2, m]=2/m*
        {{cos(+(k - 1)/m*2*pi) for k in 1:m}, {+sin(+(k - 1)/m*2*pi) for k in 1:m}};
      parameter Real InverseTransformation[m, 2]=
        {{cos(-(k - 1)/m*2*pi), -sin(-(k - 1)/m*2*pi)} for k in 1:m};
    public 
      Modelica.Blocks.Interfaces.RealInput zero;
    equation 
      y = fill(zero,m) + InverseTransformation*u;
    //m*zero = sum(y);
    //u = TransformationMatrix *y;
    end FromSpacePhasor;

--------------

|image12| `Modelica.Electrical.Machines.SpacePhasors.Blocks <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks>`_.Rotator
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Rotates space phasor**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Blocks.RotatorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Blocks.Rotator

   Modelica.Electrical.Machines.SpacePhasors.Blocks.Rotator

Information
~~~~~~~~~~~

::

Rotates a space phasor (voltage or current) by the angle provided by the
input signal "angle" from one coordinate system into another.

::

Extends from
`Modelica.Blocks.Interfaces.MIMOs <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs>`_
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 2         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+---------+------------------------------------+
| Type                                                                                           | Name    | Description                        |
+================================================================================================+=========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n]    | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+---------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n]    | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+---------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | angle   |                                    |
+------------------------------------------------------------------------------------------------+---------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Rotator "Rotates space phasor"
      extends Modelica.Blocks.Interfaces.MIMOs(final n=2);
    protected 
      Real RotationMatrix[2,2] = {{+cos(-angle),-sin(-angle)},{+sin(-angle),+cos(-angle)}};
    //Real InverseRotator[2,2] = {{+cos(+angle),-sin(+angle)},{+sin(+angle),+cos(+angle)}};
    public 
      Modelica.Blocks.Interfaces.RealInput angle;
    equation 
      y = RotationMatrix*u;
    //u = InverseRotator*y;
    end Rotator;

--------------

|image13| `Modelica.Electrical.Machines.SpacePhasors.Blocks <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks>`_.ToPolar
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Converts a space phasor to polar coordinates**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolarD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar

   Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar

Information
~~~~~~~~~~~

::

Converts a space phasor from rectangular coordinates to polar
coordinates.

::

Extends from
`Modelica.Blocks.Interfaces.MIMOs <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs>`_
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 2         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n]   | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ToPolar "Converts a space phasor to polar coordinates"
      extends Modelica.Blocks.Interfaces.MIMOs(final n=2);
      constant Real small=Modelica.Constants.small;
    equation 
      y[1] = sqrt(u[1]^2 + u[2]^2);
      y[2] = if noEvent(y[1] <= small) then 0 else Modelica.Math.atan2(u[2], u[1]);
    /*
      if y[1] <= small then
        y[2] = 0;
      else
        if u[2] >= 0 then
          y[2] =  Modelica.Math.acos(u[1]/y[1]);
        else
          y[2] = -Modelica.Math.acos(u[1]/y[1]);
        end if;
      end if;
    */
    end ToPolar;

--------------

|image14| `Modelica.Electrical.Machines.SpacePhasors.Blocks <Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks>`_.FromPolar
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Converts a space phasor from polar coordinates**

.. figure:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolarD.png
   :align: center
   :alt: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar

   Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar

Information
~~~~~~~~~~~

::

Converts a space phasor from polar coordinates to rectangular
coordinates.

::

Extends from
`Modelica.Blocks.Interfaces.MIMOs <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs>`_
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 2         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n]   | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block FromPolar "Converts a space phasor from polar coordinates"
      extends Modelica.Blocks.Interfaces.MIMOs(final n=2);
    equation 
      y = u[1]*{cos(u[2]),sin(u[2])};
    end FromPolar;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:03
2010.

.. |Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasor| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasorS.png
.. |Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasor| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasorS.png
.. |Modelica.Electrical.Machines.SpacePhasors.Blocks.Rotator| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.RotatorS.png
.. |Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolar| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolarS.png
.. |Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolarS.png
.. |image5| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasorS.png
.. |image6| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasorS.png
.. |image7| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.RotatorS.png
.. |image8| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolarS.png
.. |image9| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolarS.png
.. |image10| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasorI.png
.. |image11| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasorI.png
.. |image12| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.RotatorI.png
.. |image13| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolarI.png
.. |image14| image:: Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolarI.png
