=======================================
Modelica.Magnetic.FundamentalWave.Types
=======================================

`Modelica.Magnetic.FundamentalWave <Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave>`_.Types
---------------------------------------------------------------------------------------------------------------------

**Definition of salient types**

Information
~~~~~~~~~~~

::

This package provides types for modeling anisotropic saliency effects in
electric machines. These saliencies are usually considered by a d-
(direct) and q-axis (quadrature) components in the respective axis (of
the rotor).

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| Name                                                                                                                                                                                        | Description                                      |
+=============================================================================================================================================================================================+==================================================+
| |image6| `Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_                                                                          | Base record of saliency with d and q component   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image7| `SalientCurrent <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent>`_                                                            | Salient current                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image8| `SalientVoltage <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage>`_                                                            | Salient voltage                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image9| `SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_                                                      | Salient inductance                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image10| `SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_                                                     | Salient reluctance                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+
| |image11| `SalientResistance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance>`_                                                     | Salient resistance                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------+

--------------

`Modelica.Magnetic.FundamentalWave.Types <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types>`_.Salient
-----------------------------------------------------------------------------------------------------------------------------------------

**Base record of saliency with d and q component**

Information
~~~~~~~~~~~

::

Definition of saliency with respect to the orthogonal d- and q-axis.
Saliency, however, refers to different properties in d- and q-axis and
thus considers the anisotropic behavior.

See also
^^^^^^^^

`SalientCurrent <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent>`_,
`SalientVoltage <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage>`_,
`SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_,
`SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_,
`SalientResistance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance>`_

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Salient "Base record of saliency with d and q component"
      Real d "Component of d (direct) axis, aligned to real part";
      Real q "Component of q (quadrature) axis, aligned to imaginary part";
    end Salient;

--------------

`Modelica.Magnetic.FundamentalWave.Types <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types>`_.SalientCurrent
------------------------------------------------------------------------------------------------------------------------------------------------

**Salient current**

Information
~~~~~~~~~~~

::

Type representing the d- and q-axis of a current phasor.

See also
^^^^^^^^

`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_,
`SalientVoltage <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage>`_,
`SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_,
`SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_,
`SalientResistance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance>`_

::

Extends from
`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_
(Base record of saliency with d and q component).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SalientCurrent = Salient (
      redeclare Modelica.SIunits.Current d,
      redeclare Modelica.SIunits.Current q) "Salient current";

--------------

`Modelica.Magnetic.FundamentalWave.Types <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types>`_.SalientVoltage
------------------------------------------------------------------------------------------------------------------------------------------------

**Salient voltage**

Information
~~~~~~~~~~~

::

Type representing the d- and q-axis of a voltage phasor.

See also
^^^^^^^^

`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_,
`SalientCurrent <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent>`_,
`SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_,
`SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_,
`SalientResistance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance>`_

::

Extends from
`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_
(Base record of saliency with d and q component).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SalientVoltage = Salient (
      redeclare Modelica.SIunits.Voltage d,
      redeclare Modelica.SIunits.Voltage q) "Salient voltage";

--------------

`Modelica.Magnetic.FundamentalWave.Types <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types>`_.SalientInductance
---------------------------------------------------------------------------------------------------------------------------------------------------

**Salient inductance**

Information
~~~~~~~~~~~

::

Type representing the d- and q-axis of an inductance with respect to the
fundamental wave.

See also
^^^^^^^^

`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_,
`SalientCurrent <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent>`_,
`SalientVoltage <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage>`_,
`SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_,
`SalientResistance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance>`_

::

Extends from
`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_
(Base record of saliency with d and q component).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SalientInductance = Salient (
      redeclare Modelica.SIunits.Inductance d,
      redeclare Modelica.SIunits.Inductance q) "Salient inductance";

--------------

`Modelica.Magnetic.FundamentalWave.Types <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types>`_.SalientReluctance
---------------------------------------------------------------------------------------------------------------------------------------------------

**Salient reluctance**

Information
~~~~~~~~~~~

::

Type representing the d- and q-axis of an reluctance with respect to the
fundamental wave.

See also
^^^^^^^^

`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_,
`SalientCurrent <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent>`_,
`SalientVoltage <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage>`_,
`SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_,
`SalientResistance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance>`_

::

Extends from
`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_
(Base record of saliency with d and q component).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SalientReluctance = Salient (
      redeclare Modelica.SIunits.Reluctance d,
      redeclare Modelica.SIunits.Reluctance q) "Salient reluctance";

--------------

`Modelica.Magnetic.FundamentalWave.Types <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types>`_.SalientResistance
---------------------------------------------------------------------------------------------------------------------------------------------------

**Salient resistance**

Information
~~~~~~~~~~~

::

Type representing the d- and q-axis of an resistance with respect to the
fundamental wave.

See also
^^^^^^^^

`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_,
`SalientCurrent <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent>`_,
`SalientVoltage <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage>`_,
`SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_,
`SalientReluctance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance>`_

::

Extends from
`Salient <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient>`_
(Base record of saliency with d and q component).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SalientResistance = Salient (
      redeclare Modelica.SIunits.Resistance d,
      redeclare Modelica.SIunits.Resistance q) "Salient resistance";

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:03
2010.

.. |Modelica.Magnetic.FundamentalWave.Types.Salient| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |Modelica.Magnetic.FundamentalWave.Types.SalientCurrent| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |Modelica.Magnetic.FundamentalWave.Types.SalientVoltage| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |Modelica.Magnetic.FundamentalWave.Types.SalientInductance| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |Modelica.Magnetic.FundamentalWave.Types.SalientReluctance| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |Modelica.Magnetic.FundamentalWave.Types.SalientResistance| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |image6| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |image7| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |image8| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |image9| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |image10| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
.. |image11| image:: Modelica.Magnetic.FundamentalWave.Types.SalientS.png
