=======================================================
Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics
=======================================================

`Modelica.Fluid.Machines.BaseClasses <Modelica_Fluid_Machines_BaseClasses.html#Modelica.Fluid.Machines.BaseClasses>`_.PumpCharacteristics
-----------------------------------------------------------------------------------------------------------------------------------------

**Functions for pump characteristics**

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| Name                                                                                                                                                                                                                                           | Description                                             |
+================================================================================================================================================================================================================================================+=========================================================+
| |image9| `baseFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow>`_                                                                                           | Base class for pump flow characteristics                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image10| `basePower <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.basePower>`_                                                                                        | Base class for pump power consumption characteristics   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image11| `baseEfficiency <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseEfficiency>`_                                                                              | Base class for efficiency characteristics               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image12| `linearFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.linearFlow>`_                                                                                      | Linear flow characteristic                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image13| `quadraticFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow>`_                                                                                | Quadratic flow characteristic                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image14| `polynomialFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.polynomialFlow>`_                                                                              | Polynomial flow characteristic                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image15| `constantEfficiency <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.constantEfficiency>`_                                                                      | Constant efficiency characteristic                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image16| `linearPower <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.linearPower>`_                                                                                    | Linear power consumption characteristic                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image17| `quadraticPower <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticPower>`_                                                                              | Quadratic power consumption characteristic              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+

--------------

|image18| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.baseFlow
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for pump flow characteristics**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------+-----------+-------------------------------+
| Type                                                                        | Name      | Default   | Description                   |
+=============================================================================+===========+===========+===============================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow   |           | Volumetric flow rate [m3/s]   |
+-----------------------------------------------------------------------------+-----------+-----------+-------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+--------+-----------------+
| Type                                                        | Name   | Description     |
+=============================================================+========+=================+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_   | head   | Pump head [m]   |
+-------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function baseFlow "Base class for pump flow characteristics"
      extends Modelica.Icons.Function;
      input SI.VolumeFlowRate V_flow "Volumetric flow rate";
      output SI.Height head "Pump head";
    end baseFlow;

--------------

|image19| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.basePower
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for pump power consumption characteristics**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------+-----------+-------------------------------+
| Type                                                                        | Name      | Default   | Description                   |
+=============================================================================+===========+===========+===============================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow   |           | Volumetric flow rate [m3/s]   |
+-----------------------------------------------------------------------------+-----------+-----------+-------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+---------------+-------------------------+
| Type                                                      | Name          | Description             |
+===========================================================+===============+=========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | consumption   | Power consumption [W]   |
+-----------------------------------------------------------+---------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function basePower 
      "Base class for pump power consumption characteristics"
      extends Modelica.Icons.Function;
      input SI.VolumeFlowRate V_flow "Volumetric flow rate";
      output SI.Power consumption "Power consumption";
    end basePower;

--------------

|image20| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.baseEfficiency
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for efficiency characteristics**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------+-----------+-------------------------------+
| Type                                                                        | Name      | Default   | Description                   |
+=============================================================================+===========+===========+===============================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow   |           | Volumetric flow rate [m3/s]   |
+-----------------------------------------------------------------------------+-----------+-----------+-------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | eta    | Efficiency    |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function baseEfficiency 
      "Base class for efficiency characteristics"
      extends Modelica.Icons.Function;
      input SI.VolumeFlowRate V_flow "Volumetric flow rate";
      output Real eta "Efficiency";
    end baseEfficiency;

--------------

|image21| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.linearFlow
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linear flow characteristic**

Information
~~~~~~~~~~~

Extends from
`baseFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow>`_
(Base class for pump flow characteristics).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+
| Type                                                                        | Name                  | Default   | Description                                                      |
+=============================================================================+=======================+===========+==================================================================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow               |           | Volumetric flow rate [m3/s]                                      |
+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow\_nominal[2]   |           | Volume flow rate for two operating points (single pump) [m3/s]   |
+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_                   | head\_nominal[2]      |           | Pump head for two operating points [m]                           |
+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+--------+-----------------+
| Type                                                        | Name   | Description     |
+=============================================================+========+=================+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_   | head   | Pump head [m]   |
+-------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function linearFlow "Linear flow characteristic"
      extends baseFlow;
      input SI.VolumeFlowRate V_flow_nominal[2] 
        "Volume flow rate for two operating points (single pump)";
      input SI.Height head_nominal[2] "Pump head for two operating points";
      /* Linear system to determine the coefficients:
      head_nominal[1] = c[1] + V_flow_nominal[1]*c[2];
      head_nominal[2] = c[1] + V_flow_nominal[2]*c[2];
      */
    protected 
      Real c[2] = Modelica.Math.Matrices.solve([ones(2),V_flow_nominal],head_nominal) 
        "Coefficients of linear head curve";
    algorithm 
      // Flow equation: head = q*c[1] + c[2];
      head := c[1] + V_flow*c[2];
    end linearFlow;

--------------

|image22| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.quadraticFlow
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quadratic flow characteristic**

Information
~~~~~~~~~~~

Extends from
`baseFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow>`_
(Base class for pump flow characteristics).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+
| Type                                                                        | Name                  | Default   | Description                                                        |
+=============================================================================+=======================+===========+====================================================================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow               |           | Volumetric flow rate [m3/s]                                        |
+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow\_nominal[3]   |           | Volume flow rate for three operating points (single pump) [m3/s]   |
+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_                   | head\_nominal[3]      |           | Pump head for three operating points [m]                           |
+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+--------+-----------------+
| Type                                                        | Name   | Description     |
+=============================================================+========+=================+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_   | head   | Pump head [m]   |
+-------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function quadraticFlow "Quadratic flow characteristic"
      extends baseFlow;
      input SI.VolumeFlowRate V_flow_nominal[3] 
        "Volume flow rate for three operating points (single pump)";
      input SI.Height head_nominal[3] "Pump head for three operating points";
    protected 
      Real V_flow_nominal2[3] = {V_flow_nominal[1]^2,V_flow_nominal[2]^2, V_flow_nominal[3]^2} 
        "Squared nominal flow rates";
      /* Linear system to determine the coefficients:
      head_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
      head_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
      head_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
      */
      Real c[3] = Modelica.Math.Matrices.solve([ones(3), V_flow_nominal, V_flow_nominal2],head_nominal) 
        "Coefficients of quadratic head curve";
    algorithm 
      // Flow equation: head  = c[1] + V_flow*c[2] + V_flow^2*c[3];
      head := c[1] + V_flow*c[2] + V_flow^2*c[3];
    end quadraticFlow;

--------------

|image23| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.polynomialFlow
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Polynomial flow characteristic**

Information
~~~~~~~~~~~

Extends from
`baseFlow <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow>`_
(Base class for pump flow characteristics).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------------------+-----------+----------------------------------------------------------------+
| Type                                                                        | Name                  | Default   | Description                                                    |
+=============================================================================+=======================+===========+================================================================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow               |           | Volumetric flow rate [m3/s]                                    |
+-----------------------------------------------------------------------------+-----------------------+-----------+----------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow\_nominal[:]   |           | Volume flow rate for N operating points (single pump) [m3/s]   |
+-----------------------------------------------------------------------------+-----------------------+-----------+----------------------------------------------------------------+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_                   | head\_nominal[:]      |           | Pump head for N operating points [m]                           |
+-----------------------------------------------------------------------------+-----------------------+-----------+----------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+--------+-----------------+
| Type                                                        | Name   | Description     |
+=============================================================+========+=================+
| `Height <Modelica_SIunits.html#Modelica.SIunits.Height>`_   | head   | Pump head [m]   |
+-------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function polynomialFlow "Polynomial flow characteristic"
      extends baseFlow;
      input SI.VolumeFlowRate V_flow_nominal[:] 
        "Volume flow rate for N operating points (single pump)";
      input SI.Height head_nominal[:] "Pump head for N operating points";
    protected 
      Integer N = size(V_flow_nominal,1) "Number of nominal operating points";
      Real V_flow_nominal_pow[N,N] = {{V_flow_nominal[i]^(j-1) for j in 1:N} for i in 1:N} 
        "Rows: different operating points; columns: increasing powers";
      /* Linear system to determine the coefficients (example N=3):
      head_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
      head_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
      head_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
      */
      Real c[N] = Modelica.Math.Matrices.solve(V_flow_nominal_pow,head_nominal) 
        "Coefficients of polynomial head curve";
    algorithm 
      // Flow equation (example N=3): head  = c[1] + V_flow*c[2] + V_flow^2*c[3];
      // Note: the implementation is numerically efficient only for low values of Na
      head := sum(V_flow^(i-1)*c[i] for i in 1:N);
    end polynomialFlow;

--------------

|image24| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.constantEfficiency
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant efficiency characteristic**

Information
~~~~~~~~~~~

Extends from
`baseEfficiency <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseEfficiency>`_
(Base class for efficiency characteristics).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+----------------+-----------+-------------------------------+
| Type                                                                        | Name           | Default   | Description                   |
+=============================================================================+================+===========+===============================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow        |           | Volumetric flow rate [m3/s]   |
+-----------------------------------------------------------------------------+----------------+-----------+-------------------------------+
| Real                                                                        | eta\_nominal   |           | Nominal efficiency            |
+-----------------------------------------------------------------------------+----------------+-----------+-------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | eta    | Efficiency    |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function constantEfficiency "Constant efficiency characteristic"
       extends baseEfficiency;
       input Real eta_nominal "Nominal efficiency";
    algorithm 
      eta := eta_nominal;
    end constantEfficiency;

--------------

|image25| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.linearPower
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linear power consumption characteristic**

Information
~~~~~~~~~~~

Extends from
`basePower <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.basePower>`_
(Base class for pump power consumption characteristics).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+
| Type                                                                        | Name                  | Default   | Description                                                      |
+=============================================================================+=======================+===========+==================================================================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow               |           | Volumetric flow rate [m3/s]                                      |
+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow\_nominal[2]   |           | Volume flow rate for two operating points (single pump) [m3/s]   |
+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_                     | W\_nominal[2]         |           | Power consumption for two operating points [W]                   |
+-----------------------------------------------------------------------------+-----------------------+-----------+------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+---------------+-------------------------+
| Type                                                      | Name          | Description             |
+===========================================================+===============+=========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | consumption   | Power consumption [W]   |
+-----------------------------------------------------------+---------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function linearPower "Linear power consumption characteristic"
      extends basePower;
      input SI.VolumeFlowRate V_flow_nominal[2] 
        "Volume flow rate for two operating points (single pump)";
      input SI.Power W_nominal[2] "Power consumption for two operating points";
      /* Linear system to determine the coefficients:
      W_nominal[1] = c[1] + V_flow_nominal[1]*c[2];
      W_nominal[2] = c[1] + V_flow_nominal[2]*c[2];
      */
    protected 
      Real c[2] = Modelica.Math.Matrices.solve([ones(3),V_flow_nominal],W_nominal) 
        "Coefficients of linear power consumption curve";
    algorithm 
      consumption := c[1] + V_flow*c[2];
    end linearPower;

--------------

|image26| `Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics>`_.quadraticPower
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quadratic power consumption characteristic**

Information
~~~~~~~~~~~

Extends from
`basePower <Modelica_Fluid_Machines_BaseClasses_PumpCharacteristics.html#Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.basePower>`_
(Base class for pump power consumption characteristics).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+
| Type                                                                        | Name                  | Default   | Description                                                        |
+=============================================================================+=======================+===========+====================================================================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow               |           | Volumetric flow rate [m3/s]                                        |
+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_   | V\_flow\_nominal[3]   |           | Volume flow rate for three operating points (single pump) [m3/s]   |
+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_                     | W\_nominal[3]         |           | Power consumption for three operating points [W]                   |
+-----------------------------------------------------------------------------+-----------------------+-----------+--------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+---------------+-------------------------+
| Type                                                      | Name          | Description             |
+===========================================================+===============+=========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | consumption   | Power consumption [W]   |
+-----------------------------------------------------------+---------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function quadraticPower "Quadratic power consumption characteristic"
      extends basePower;
      input SI.VolumeFlowRate V_flow_nominal[3] 
        "Volume flow rate for three operating points (single pump)";
      input SI.Power W_nominal[3] "Power consumption for three operating points";
    protected 
      Real V_flow_nominal2[3] = {V_flow_nominal[1]^2,V_flow_nominal[2]^2, V_flow_nominal[3]^2} 
        "Squared nominal flow rates";
      /* Linear system to determine the coefficients:
      W_nominal[1] = c[1] + V_flow_nominal[1]*c[2] + V_flow_nominal[1]^2*c[3];
      W_nominal[2] = c[1] + V_flow_nominal[2]*c[2] + V_flow_nominal[2]^2*c[3];
      W_nominal[3] = c[1] + V_flow_nominal[3]*c[2] + V_flow_nominal[3]^2*c[3];
      */
      Real c[3] = Modelica.Math.Matrices.solve([ones(3),V_flow_nominal,V_flow_nominal2],W_nominal) 
        "Coefficients of quadratic power consumption curve";
    algorithm 
      consumption := c[1] + V_flow*c[2] + V_flow^2*c[3];
    end quadraticPower;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:16
2010.

.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlow| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.basePower| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseEfficiency| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.linearFlow| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.polynomialFlow| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.constantEfficiency| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.linearPower| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticPower| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image9| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image10| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image11| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image12| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image13| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image14| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image15| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image16| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image17| image:: Modelica.Fluid.Machines.BaseClasses.assertPositiveDifferenceS.png
.. |image18| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image19| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image20| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image21| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image22| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image23| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image24| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image25| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
.. |image26| image:: Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.baseFlowI.png
