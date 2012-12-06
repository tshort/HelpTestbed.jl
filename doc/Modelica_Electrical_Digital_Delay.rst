=================================
Modelica.Electrical.Digital.Delay
=================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Delay
---------------------------------------------------------------------------------------------------

**Delay blocks**

Information
~~~~~~~~~~~

::

The Delay package collects the delay blocks which are used in many
components. Both transport and inertial delay are offered for scalar
connectors. The most advanced component is the sensitive interial delay
the delay time of which is chosen in dependency of the signal values.
This component is also available for vector valued input.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                       | Description                                                                       |
+============================================================================================================================================================================================================+===================================================================================+
| `DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_                                                                                                      | Definition of delay parameters                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image4| `TransportDelay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.TransportDelay>`_                                                                                       | Transport delay with initial parameter                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image5| `InertialDelay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.InertialDelay>`_                                                                                         | Inertial delay with initial parameter                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image6| `InertialDelaySensitive <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.InertialDelaySensitive>`_                                                                       | Provide the input as output if it holds its value for a specific amount of time   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image7| `InertialDelaySensitiveVector <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVector>`_                                                           | Delay of a vector of digital signals                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+

--------------

`Modelica.Electrical.Digital.Delay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay>`_.DelayParams
---------------------------------------------------------------------------------------------------------------------------

**Definition of delay parameters**

Information
~~~~~~~~~~~

::

DelayParams is a partial model for providing delay times and inertial
values. It is used in components of the package Gates which need the
same parameters. The partial model does not have any behavior or
equations.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block DelayParams "Definition of delay parameters"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      parameter Modelica.SIunits.Time tLH(start=0) "Rise inertial delay";
      parameter Modelica.SIunits.Time tHL(start=0) "Fall inertial delay";
      parameter L y0=L.'U' "Initial value of output";
    end DelayParams;

--------------

|image8| `Modelica.Electrical.Digital.Delay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay>`_.TransportDelay
---------------------------------------------------------------------------------------------------------------------------------------

**Transport delay with initial parameter**

.. figure:: Modelica.Electrical.Digital.Delay.TransportDelayD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Delay.TransportDelay

   Modelica.Electrical.Digital.Delay.TransportDelay

Information
~~~~~~~~~~~

::

Provide the input as output exactly delayed by *Tdel*. If time less than
*Tdel* the initial value *initout* holds.

::

Extends from
`D.Interfaces.SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_
(Single input, single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------+
| Type                                                                                                  | Name        | Default   | Description               |
+=======================================================================================================+=============+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | delayTime   |           | delay time [s]            |
+-------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0          | L.'U'     | initial value of output   |
+-------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TransportDelay "Transport delay with initial parameter"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.SISO(x(start=L.'U',fixed=true));
      parameter Modelica.SIunits.Time delayTime(start=0) "delay time";
      parameter D.Interfaces.Logic y0=L.'U' "initial value of output";
    protected 
      D.Interfaces.Logic x_delayed;

    equation 
      x_delayed = integer(delay(x, delayTime));
      y = if delayTime > 0 then 
              (if time >= delayTime then x_delayed else y0) else 
                pre(x);
    end TransportDelay;

--------------

|image9| `Modelica.Electrical.Digital.Delay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay>`_.InertialDelay
--------------------------------------------------------------------------------------------------------------------------------------

**Inertial delay with initial parameter**

.. figure:: Modelica.Electrical.Digital.Delay.TransportDelayD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Delay.InertialDelay

   Modelica.Electrical.Digital.Delay.InertialDelay

Information
~~~~~~~~~~~

::

Provides the input as output delayed by *Tdel* if the input holds its
value for a longer time than *Tdel*. If time is less than *Tdel* the
initial value *initout* holds.

::

Extends from
`D.Interfaces.SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_
(Single input, single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+-------------+-----------+----------------------------------+
| Type                                                                                                  | Name        | Default   | Description                      |
+=======================================================================================================+=============+===========+==================================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | delayTime   |           | Minimum time to hold value [s]   |
+-------------------------------------------------------------------------------------------------------+-------------+-----------+----------------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0          | L.'U'     | Initial value of output y        |
+-------------------------------------------------------------------------------------------------------+-------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x      | Connector of Digital input signal    |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block InertialDelay "Inertial delay with initial parameter"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.SISO;
      parameter Modelica.SIunits.Time delayTime(start=0) 
        "Minimum time to hold value";
      parameter D.Interfaces.Logic y0=L.'U' "Initial value of output y";
    protected 
      D.Interfaces.Logic y_auxiliary(start=y0, fixed=true);
      D.Interfaces.Logic x_old(start=y0, fixed=true);
      discrete Modelica.SIunits.Time t_next(start=delayTime, fixed=true);

    algorithm 
      when delayTime > 0 and change(x) then
        x_old := x;
        t_next := time + delayTime;
      elsewhen time >= t_next then
        y_auxiliary := x;
      end when;
      y := if delayTime > 0 then y_auxiliary else x;
    end InertialDelay;

--------------

|image10| `Modelica.Electrical.Digital.Delay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay>`_.InertialDelaySensitive
------------------------------------------------------------------------------------------------------------------------------------------------

**Provide the input as output if it holds its value for a specific
amount of time**

.. figure:: Modelica.Electrical.Digital.Delay.TransportDelayD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Delay.InertialDelaySensitive

   Modelica.Electrical.Digital.Delay.InertialDelaySensitive

Information
~~~~~~~~~~~

::

Provides the input as output delayed by *Tdel* if the input holds its
value for a longer time than *Tdel*. If the time is less than *Tdel* the
initial value *initout* holds.
 The delay *Tdel* depends on the values of the signal change. To
calculate *Tdel*, the delaymap specified in Digital.Tables is used. If
the corresponding value is 1, then *tLH* is used, if it is -1, then
*tHL* is used, if it is zero, the input is not delayed.

::

Extends from
`D.Interfaces.SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_
(Single input, single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model InertialDelaySensitive 
      "Provide the input as output if it holds its value for a specific amount of time"

      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends D.Interfaces.SISO(x(start=L.'U',fixed=true));
      parameter Modelica.SIunits.Time tLH(start=0) "rise inertial delay";
      parameter Modelica.SIunits.Time tHL(start=0) "fall inertial delay";
      parameter D.Interfaces.Logic y0=L.'U' "initial value of output";
    protected 
      Integer delayTable[:,:]=Modelica.Electrical.Digital.Tables.DelayTable 
        "specification of delay according to signal change";
      Modelica.SIunits.Time delayTime;
      D.Interfaces.Logic y_auxiliary(start=y0, fixed=true);
      D.Interfaces.Logic y_old(start=y0, fixed=true);
      Integer lh;
      discrete Modelica.SIunits.Time t_next;

    algorithm 
      when {initial(),(tLH > 0 or tHL > 0) and change(x) and not initial()} then
        y_old := if initial() or pre(y) == 0 then y0 else pre(y);  //nicht pre(x), Bezugspunkt ist das aktuelle Ausgangssiganl (Donath, 08.09.09)
        lh := delayTable[y_old, x];
        delayTime := if (lh > 0) then tLH else (if (lh < 0) then tHL else 0);
        t_next := time + delayTime;
        if (lh == 0 or abs(delayTime) < Modelica.Constants.small) then
          y_auxiliary := x;
        end if;
     elsewhen time >= t_next then
        y_auxiliary := x;
     end when;
     y := if ((tLH > 0 or tHL > 0)) then y_auxiliary else x;
    end InertialDelaySensitive;

--------------

|image11| `Modelica.Electrical.Digital.Delay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay>`_.InertialDelaySensitiveVector
------------------------------------------------------------------------------------------------------------------------------------------------------

**Delay of a vector of digital signals**

.. figure:: Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVectorD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVector

   Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVector

Information
~~~~~~~~~~~

::

The delay element **Inertial Delay Sensitive** is applied to a vector of
n signals. The parameters *tLH* and *tHL* are valid for each of the n
signals.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                    | Name   | Default   | Description           |
+=========================================================+========+===========+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tHL    | 0         | High->Low delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tLH    | 0         | Low->High delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+
| Integer                                                 | n      | 1         | Data width            |
+---------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                         | Name   | Description   |
+==============================================================================================================================+========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model InertialDelaySensitiveVector 
      "Delay of a vector of digital signals"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      import S = Modelica.Electrical.Digital.Interfaces.Strength;
      import T = Modelica.Electrical.Digital.Tables;
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter Integer n(min=1) = 1 "Data width";
      D.Interfaces.DigitalInput x[n];
      D.Interfaces.DigitalOutput y[n];
      Digital.Delay.InertialDelaySensitive inertialDelaySensitive[n](each tLH=
            tLH, each tHL=tHL);
    equation 
      for i in 1:n loop
        connect(x[i], inertialDelaySensitive[i].x);
        connect(inertialDelaySensitive[i].y, y[i]);
      end for;
    end InertialDelaySensitiveVector;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:27
2010.

.. |Modelica.Electrical.Digital.Delay.TransportDelay| image:: Modelica.Electrical.Digital.Delay.TransportDelayS.png
.. |Modelica.Electrical.Digital.Delay.InertialDelay| image:: Modelica.Electrical.Digital.Delay.TransportDelayS.png
.. |Modelica.Electrical.Digital.Delay.InertialDelaySensitive| image:: Modelica.Electrical.Digital.Delay.TransportDelayS.png
.. |Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVector| image:: Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVectorS.png
.. |image4| image:: Modelica.Electrical.Digital.Delay.TransportDelayS.png
.. |image5| image:: Modelica.Electrical.Digital.Delay.TransportDelayS.png
.. |image6| image:: Modelica.Electrical.Digital.Delay.TransportDelayS.png
.. |image7| image:: Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVectorS.png
.. |image8| image:: Modelica.Electrical.Digital.Delay.TransportDelayI.png
.. |image9| image:: Modelica.Electrical.Digital.Delay.InertialDelayI.png
.. |image10| image:: Modelica.Electrical.Digital.Delay.InertialDelaySensitiveI.png
.. |image11| image:: Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVectorI.png
