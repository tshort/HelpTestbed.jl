=========================================
Modelica.Magnetic.FundamentalWave.Sources
=========================================

`Modelica.Magnetic.FundamentalWave <Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave>`_.Sources
-----------------------------------------------------------------------------------------------------------------------

**Sources**

Information
~~~~~~~~~~~

::

This package provides sources of magnetic potential difference and
magnetic flux.

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                    | Description                                                 |
+=========================================================================================================================================================================================================================================================+=============================================================+
| |image4| `ConstantMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference>`_                                                                          | Source with constant magnetic potential difference          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image5| `SignalMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference>`_                                                                              | Source of magnetic potential difference with signal input   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image6| `ConstantFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux>`_                                                                                                                        | Source of constant magnetic flux                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image7| `SignalFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux>`_                                                                                                                            | Source of constant magnetic flux                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+

--------------

|image8| `Modelica.Magnetic.FundamentalWave.Sources <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources>`_.ConstantMagneticPotentialDifference
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Source with constant magnetic potential difference**

.. figure:: Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifferenceD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference

   Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference

Information
~~~~~~~~~~~

::

Source of constant magneto motive force.

See also
^^^^^^^^

`SignalMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference>`_,
`ConstantFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux>`_,
`SignalFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------+-----------------------------------------+
| Type                                                                                                                | Name   | Default               | Description                             |
+=====================================================================================================================+========+=======================+=========================================+
| `ComplexMagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticPotentialDifference>`_   | V\_m   | Complex(re=1, im=0)   | Complex magnetic potential difference   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------+-----------------------------------------+

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

    model ConstantMagneticPotentialDifference 
      "Source with constant magnetic potential difference"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;
      parameter Modelica.SIunits.ComplexMagneticPotentialDifference  V_m=
            Complex(re=1, im=0) "Complex magnetic potential difference";

      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end ConstantMagneticPotentialDifference;

--------------

|image9| `Modelica.Magnetic.FundamentalWave.Sources <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources>`_.SignalMagneticPotentialDifference
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Source of magnetic potential difference with signal input**

.. figure:: Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifferenceD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference

   Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference

Information
~~~~~~~~~~~

::

Source of magneto motive force with complex signal input.

See also
^^^^^^^^

`ConstantMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference>`_,
`ConstantFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux>`_,
`SignalFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------+
| Type                                                                                                                                            | Name      | Description                                             |
+=================================================================================================================================================+===========+=========================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                   | V\_m      | Complex signal input of magnetic potential difference   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalMagneticPotentialDifference 
      "Source of magnetic potential difference with signal input"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.ComplexBlocks.Interfaces.ComplexInput V_m 
        "Complex signal input of magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end SignalMagneticPotentialDifference;

--------------

|image10| `Modelica.Magnetic.FundamentalWave.Sources <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources>`_.ConstantFlux
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Source of constant magnetic flux**

.. figure:: Modelica.Magnetic.FundamentalWave.Sources.ConstantFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux

   Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux

Information
~~~~~~~~~~~

::

Source of constant magnetic flux.

See also
^^^^^^^^

`ConstantMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference>`_,
`SignalMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference>`_,
`SignalFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------+--------+-----------------------+-------------------------+
| Type                                                                                  | Name   | Default               | Description             |
+=======================================================================================+========+=======================+=========================+
| `ComplexMagneticFlux <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticFlux>`_   | Phi    | Complex(re=1, im=0)   | Complex magnetic flux   |
+---------------------------------------------------------------------------------------+--------+-----------------------+-------------------------+

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

    model ConstantFlux "Source of constant magnetic flux"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      parameter Modelica.SIunits.ComplexMagneticFlux  Phi=
        Complex(re=1, im=0) "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end ConstantFlux;

--------------

|image11| `Modelica.Magnetic.FundamentalWave.Sources <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources>`_.SignalFlux
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Source of constant magnetic flux**

.. figure:: Modelica.Magnetic.FundamentalWave.Sources.SignalFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sources.SignalFlux

   Modelica.Magnetic.FundamentalWave.Sources.SignalFlux

Information
~~~~~~~~~~~

::

Source of magnetic flux with complex signal input.

See also
^^^^^^^^

`ConstantMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference>`_,
`SignalMagneticPotentialDifference <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference>`_,
`ConstantFlux <Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux>`_,

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| Type                                                                                                                                            | Name      | Description                             |
+=================================================================================================================================================+===========+=========================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                   | Phi       | Complex signal input of magnetic flux   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalFlux "Source of constant magnetic flux"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.ComplexBlocks.Interfaces.ComplexInput Phi 
        "Complex signal input of magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end SignalFlux;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:02
2010.

.. |Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference| image:: Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifferenceS.png
.. |Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference| image:: Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifferenceS.png
.. |Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux| image:: Modelica.Magnetic.FundamentalWave.Sources.ConstantFluxS.png
.. |Modelica.Magnetic.FundamentalWave.Sources.SignalFlux| image:: Modelica.Magnetic.FundamentalWave.Sources.SignalFluxS.png
.. |image4| image:: Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifferenceS.png
.. |image5| image:: Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifferenceS.png
.. |image6| image:: Modelica.Magnetic.FundamentalWave.Sources.ConstantFluxS.png
.. |image7| image:: Modelica.Magnetic.FundamentalWave.Sources.SignalFluxS.png
.. |image8| image:: Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifferenceI.png
.. |image9| image:: Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifferenceI.png
.. |image10| image:: Modelica.Magnetic.FundamentalWave.Sources.ConstantFluxI.png
.. |image11| image:: Modelica.Magnetic.FundamentalWave.Sources.SignalFluxI.png
