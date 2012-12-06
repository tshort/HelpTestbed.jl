=============================================
Modelica.Electrical.Spice3.Internal.SpiceRoot
=============================================

`Modelica.Electrical.Spice3.Internal <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal>`_.SpiceRoot
-------------------------------------------------------------------------------------------------------------------------------

**Basic records and functions**

Information
~~~~~~~~~~~

::

The package SpiceRoot contains basic records and functions that are
needed in SPICE3.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| Name                                                                                                                                                                                                                   | Description                           |
+========================================================================================================================================================================================================================+=======================================+
| |image4| `SpiceRoot <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot.SpiceRoot>`_                                                                                     | Data for insertion to matrices        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image5| `useInitialConditions <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditions>`_                                                               | Initial condition handling            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image6| `initJunctionVoltages <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot.initJunctionVoltages>`_                                                               | Choice of junction voltage handling   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image7| `limitJunctionVoltage <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot.limitJunctionVoltage>`_                                                               | Limitation of junction voltage        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+

--------------

`Modelica.Electrical.Spice3.Internal.SpiceRoot <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot>`_.SpiceRoot
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Data for insertion to matrices**

Information
~~~~~~~~~~~

::

This data are to collect intermediate results to be inserted into
SPICE-like matrices for linear ssystems of equations.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SpiceRoot "Data for insertion to matrices"

      Modelica.SIunits.Current[6] m_pCurrentValues(   start = zeros(6));
      Real[36] m_pResJacobi(      start = zeros(36));
      Real[36] m_pCapJacobi(      start = zeros(36));

    end SpiceRoot;

--------------

`Modelica.Electrical.Spice3.Internal.SpiceRoot <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot>`_.useInitialConditions
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Initial condition handling**

Information
~~~~~~~~~~~

::

This function useInitialConditions appoints wether the initial
conditions that are given in the description are used or not.

::

Outputs
~~~~~~~

+-----------+--------+---------------+
| Type      | Name   | Description   |
+===========+========+===============+
| Boolean   | ret    |               |
+-----------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function useInitialConditions "Initial condition handling"

      output Boolean ret;

    algorithm 
      ret := false;

    end useInitialConditions;

--------------

`Modelica.Electrical.Spice3.Internal.SpiceRoot <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot>`_.initJunctionVoltages
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Choice of junction voltage handling**

Information
~~~~~~~~~~~

::

This internal function is provided to choose the junction voltage
handling which is at the current library version fixed to false.

::

Outputs
~~~~~~~

+-----------+--------+---------------+
| Type      | Name   | Description   |
+===========+========+===============+
| Boolean   | ret    |               |
+-----------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function initJunctionVoltages "Choice of junction voltage handling"

      output Boolean ret;
    algorithm 

      ret := false;

    end initJunctionVoltages;

--------------

`Modelica.Electrical.Spice3.Internal.SpiceRoot <Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot>`_.limitJunctionVoltage
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Limitation of junction voltage**

Information
~~~~~~~~~~~

::

This internal function is provided to limit the junction voltage which
is at the current library version fixed to false.

::

Inputs
~~~~~~

+---------------------------------------------------------------+-----------+-----------+---------------------+
| Type                                                          | Name      | Default   | Description         |
+===============================================================+===========+===========+=====================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | voltage   |           | Input voltage [V]   |
+---------------------------------------------------------------+-----------+-----------+---------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+---------------+
| Type                                                          | Name   | Description   |
+===============================================================+========+===============+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | ret    | [V]           |
+---------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function limitJunctionVoltage "Limitation of junction voltage"

      input Modelica.SIunits.Voltage voltage "Input voltage";

      output Modelica.SIunits.Voltage ret;

    algorithm 
      ret := voltage;

    end limitJunctionVoltage;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:47
2010.

.. |Modelica.Electrical.Spice3.Internal.SpiceRoot.SpiceRoot| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.SpiceRootS.png
.. |Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditions| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditionsS.png
.. |Modelica.Electrical.Spice3.Internal.SpiceRoot.initJunctionVoltages| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditionsS.png
.. |Modelica.Electrical.Spice3.Internal.SpiceRoot.limitJunctionVoltage| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditionsS.png
.. |image4| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.SpiceRootS.png
.. |image5| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditionsS.png
.. |image6| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditionsS.png
.. |image7| image:: Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditionsS.png
