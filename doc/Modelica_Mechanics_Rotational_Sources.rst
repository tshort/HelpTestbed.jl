=====================================
Modelica.Mechanics.Rotational.Sources
=====================================

`Modelica.Mechanics.Rotational <Modelica_Mechanics_Rotational.html#Modelica.Mechanics.Rotational>`_.Sources
-----------------------------------------------------------------------------------------------------------

**Sources to drive 1D rotational mechanical components**

Information
~~~~~~~~~~~

::

This package contains ideal sources to drive 1D mechanical rotational
drive trains.

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                      | Description                                                                                |
+===========================================================================================================================================================================================================================+============================================================================================+
| |image11| `Position <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Position>`_                                                                                                         | Forced movement of a flange according to a reference angle signal                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image12| `Speed <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Speed>`_                                                                                                               | Forced movement of a flange according to a reference angular velocity signal               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image13| `Accelerate <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Accelerate>`_                                                                                                     | Forced movement of a flange according to an acceleration signal                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image14| `Move <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Move>`_                                                                                                                 | Forced movement of a flange according to an angle, speed and angular acceleration signal   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image15| `Torque <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Torque>`_                                                                                                             | Input signal acting as external torque on a flange                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image16| `Torque2 <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Torque2>`_                                                                                                           | Input signal acting as torque on two flanges                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image17| `LinearSpeedDependentTorque <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorque>`_                                                                     | Linear dependency of torque versus speed                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image18| `QuadraticSpeedDependentTorque <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque>`_                                                               | Quadratic dependency of torque versus speed                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image19| `ConstantTorque <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.ConstantTorque>`_                                                                                             | Constant torque, not dependent on speed                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image20| `ConstantSpeed <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.ConstantSpeed>`_                                                                                               | Constant speed, not dependent on torque                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image21| `TorqueStep <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.TorqueStep>`_                                                                                                     | Constant torque, not dependent on speed                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+

--------------

|image22| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.Position
----------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to a reference angle signal**

.. figure:: Modelica.Mechanics.Rotational.Sources.PositionD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.Position

   Modelica.Mechanics.Rotational.Sources.Position

Information
~~~~~~~~~~~

::

The input signal **phi\_ref** defines the **reference angle** in [rad].
Flange **flange** is **forced** to move according to this reference
motion relative to flange support. According to parameter **exact**
(default = **false**), this is done in the following way:

#. **exact=true**
    The reference angle is treated **exactly**. This is only possible,
   if the input signal is defined by an analytical function which can be
   differentiated at least twice. If this prerequisite is fulfilled, the
   Modelica translator will differentiate the input signal twice in
   order to compute the reference acceleration of the flange.
#. **exact=false**
    The reference angle is **filtered** and the second derivative of the
   filtered curve is used to compute the reference acceleration of the
   flange. This second derivative is **not** computed by numerical
   differentiation but by an appropriate realization of the filter. For
   filtering, a second order Bessel filter is used. The critical
   frequency (also called cut-off frequency) of the filter is defined
   via parameter **f\_crit** in [Hz]. This value should be selected in
   such a way that it is higher as the essential low frequencies in the
   signal.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+
| Type                                                              | Name         | Default   | Description                                                                |
+===================================================================+==============+===========+============================================================================+
| Boolean                                                           | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded           |
+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                           | exact        | false     | true/false exact treatment/filtering the input signal                      |
+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_crit      | 50        | if exact=false, critical frequency of filter to filter input signal [Hz]   |
+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------+
| Type                                                                                                             | Name       | Description                                                               |
+==================================================================================================================+============+===========================================================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange     | Flange of shaft                                                           |
+------------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support    | Support/housing of component                                              |
+------------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                        | phi\_ref   | Reference angle of flange with respect to support as input signal [rad]   |
+------------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Position 
      "Forced movement of a flange according to a reference angle signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Angle phi(stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "Rotation angle of flange with respect to support";
      SI.AngularVelocity w(start=0,stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "If exact=false, Angular velocity of flange with respect to support else dummy";
      SI.AngularAcceleration a(start=0) 
        "If exact=false, Angular acceleration of flange with respect to support else dummy";
      Modelica.Blocks.Interfaces.RealInput phi_ref(final quantity="Angle", final unit="rad", displayUnit="deg") 
        "Reference angle of flange with respect to support as input signal";

    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
      constant Real af=1.3617 "s coefficient of Bessel filter";
      constant Real bf=0.6180 "s*s coefficient of Bessel filter";
    initial equation 
      if not exact then
        phi = phi_ref;
      end if;
    equation 
      phi = flange.phi - phi_support;
      if exact then
        phi = phi_ref;
        w = 0;
        a = 0;
      else
        // Filter: a = phi_ref*s^2/(1 + (af/w_crit)*s + (bf/w_crit^2)*s^2)
        w = der(phi);
        a = der(w);
        a = ((phi_ref - phi)*w_crit - af*w)*(w_crit/bf);
      end if;
    end Position;

--------------

|image23| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.Speed
-------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to a reference angular velocity
signal**

.. figure:: Modelica.Mechanics.Rotational.Sources.SpeedD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.Speed

   Modelica.Mechanics.Rotational.Sources.Speed

Information
~~~~~~~~~~~

::

The input signal **w\_ref** defines the **reference speed** in [rad/s].
Flange **flange** is **forced** to move relative to flange support
according to this reference motion. According to parameter **exact**
(default = **false**), this is done in the following way:

#. **exact=true**
    The reference speed is treated **exactly**. This is only possible,
   if the input signal is defined by an analytical function which can be
   differentiated at least once. If this prerequisite is fulfilled, the
   Modelica translator will differentiate the input signal once in order
   to compute the reference acceleration of the flange.
#. **exact=false**
    The reference angle is **filtered** and the second derivative of the
   filtered curve is used to compute the reference acceleration of the
   flange. This second derivative is **not** computed by numerical
   differentiation but by an appropriate realization of the filter. For
   filtering, a first order filter is used. The critical frequency (also
   called cut-off frequency) of the filter is defined via parameter
   **f\_crit** in [Hz]. This value should be selected in such a way that
   it is higher as the essential low frequencies in the signal.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+
| Type                                                              | Name         | Default   | Description                                                                |
+===================================================================+==============+===========+============================================================================+
| Boolean                                                           | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded           |
+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                           | exact        | false     | true/false exact treatment/filtering the input signal                      |
+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_crit      | 50        | if exact=false, critical frequency of filter to filter input signal [Hz]   |
+-------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+
| Type                                                                                                             | Name      | Description                                                                    |
+==================================================================================================================+===========+================================================================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                                                                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component                                                   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                        | w\_ref    | Reference angular velocity of flange with respect to support as input signal   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Speed 
      "Forced movement of a flange according to a reference angular velocity signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Angle phi(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Rotation angle of flange with respect to support";
      SI.AngularVelocity w(stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "Angular velocity of flange with respect to support";
      SI.AngularAcceleration a 
        "If exact=false, angular acceleration of flange with respect to support else dummy";
      Modelica.Blocks.Interfaces.RealInput w_ref 
        "Reference angular velocity of flange with respect to support as input signal";

    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
    initial equation 
      if not exact then
        w = w_ref;
      end if;
    equation 
      phi = flange.phi - phi_support;
      w = der(phi);
      if exact then
        w = w_ref;
        a = 0;
      else
        // Filter: a = w_ref/(1 + (1/w_crit)*s)
        a = der(w);
        a = (w_ref - w)*w_crit;
      end if;
    end Speed;

--------------

|image24| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.Accelerate
------------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to an acceleration signal**

.. figure:: Modelica.Mechanics.Rotational.Sources.AccelerateD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.Accelerate

   Modelica.Mechanics.Rotational.Sources.Accelerate

Information
~~~~~~~~~~~

::

The input signal **a** defines an **angular acceleration** in [rad/s2].
Flange **flange** is **forced** to move relative to flange support with
this acceleration. The angular velocity **w** and the rotation angle
**phi** of the flange are automatically determined by integration of the
acceleration.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------+
| Type                                                                                                             | Name      | Description                                                                       |
+==================================================================================================================+===========+===================================================================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                                                                   |
+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component                                                      |
+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                        | a\_ref    | Absolute angular acceleration of flange with respect to support as input signal   |
+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Accelerate 
      "Forced movement of a flange according to an acceleration signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      SI.Angle phi(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Rotation angle of flange with respect to support";
      SI.AngularVelocity w(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Angular velocity of flange with respect to support";
      SI.AngularAcceleration a 
        "Angular acceleration of flange with respect to support";

      Modelica.Blocks.Interfaces.RealInput a_ref 
        "Absolute angular acceleration of flange with respect to support as input signal";

    equation 
      phi = flange.phi - phi_support;
      w = der(phi);
      a = der(w);
      a = a_ref;
    end Accelerate;

--------------

|image25| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.Move
------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to an angle, speed and angular
acceleration signal**

.. figure:: Modelica.Mechanics.Rotational.Sources.MoveD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.Move

   Modelica.Mechanics.Rotational.Sources.Move

Information
~~~~~~~~~~~

::

Flange **flange** is **forced** to move relative to flange support with
a predefined motion according to the input signals:

::

        u[1]: angle of flange
        u[2]: angular velocity of flange
        u[3]: angular acceleration of flange

The user has to guarantee that the input signals are consistent to each
other, i.e., that u[2] is the derivative of u[1] and that u[3] is the
derivative of u[2]. There are, however, also applications where by
purpose these conditions do not hold. For example, if only the position
dependent terms of a mechanical system shall be calculated, one may
provide angle = angle(t) and set the angular velocity and the angular
acceleration to zero.

The input signals can be provided from one of the signal generator
blocks of the block library Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------------------------------------+
| Type                                                                                                             | Name      | Description                                                                                           |
+==================================================================================================================+===========+=======================================================================================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                                                                                       |
+------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component                                                                          |
+------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                        | u[3]      | Angle, angular velocity and angular acceleration of flange with respect to support as input signals   |
+------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Move 
      "Forced movement of a flange according to an angle, speed and angular acceleration signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;

      Modelica.SIunits.Angle phi "Rotation angle of flange with respect to support";
      Modelica.Blocks.Interfaces.RealInput u[3] 
        "Angle, angular velocity and angular acceleration of flange with respect to support as input signals";
        
    protected 
      function position
      annotation(derivative=position_der);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         output Real q;
      algorithm 
        q :=q_qd_qdd[1];
      end position;

      function position_der
      annotation(derivative=position_der2);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         output Real qd;
      algorithm 
        qd :=q_qd_qdd[2];
      end position_der;

      function position_der2
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         input Real dummy_der2;
         output Real qdd;
      algorithm 
        qdd :=q_qd_qdd[3];
      end position_der2;
    equation 
      phi = flange.phi - phi_support;
      phi = position(u,time);
    end Move;

--------------

|image26| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.Torque
--------------------------------------------------------------------------------------------------------------------------------------------

**Input signal acting as external torque on a flange**

.. figure:: Modelica.Mechanics.Rotational.Sources.TorqueD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.Torque

   Modelica.Mechanics.Rotational.Sources.Torque

Information
~~~~~~~~~~~

::

The input signal **tau** defines an external torque in [Nm] which acts
(with negative sign) at a flange connector, i.e., the component
connected to this flange is driven by torque **tau**.

The input signal can be provided from one of the signal generator blocks
of Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| Type                                                                                                             | Name      | Description                                            |
+==================================================================================================================+===========+========================================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                                        |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component                           |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                        | tau       | Accelerating torque acting at flange (= -flange.tau)   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Torque "Input signal acting as external torque on a flange"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      Modelica.Blocks.Interfaces.RealInput tau 
        "Accelerating torque acting at flange (= -flange.tau)";

    equation 
      flange.tau = -tau;
    end Torque;

--------------

|image27| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.Torque2
---------------------------------------------------------------------------------------------------------------------------------------------

**Input signal acting as torque on two flanges**

.. figure:: Modelica.Mechanics.Rotational.Sources.Torque2D.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.Torque2

   Modelica.Mechanics.Rotational.Sources.Torque2

Information
~~~~~~~~~~~

::

The input signal **tau** defines an external torque in [Nm] which acts
at both flange connectors, i.e., the components connected to these
flanges are driven by torque **tau**.

The input signal can be provided from one of the signal generator blocks
of Modelica.Blocks.Sources.

::

Extends from
`Rotational.Interfaces.PartialTwoFlanges <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges>`_
(Partial model for a component with two rotational 1-dim. shaft
flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                                |
+==================================================================================================================+=============+============================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Flange of left shaft                                                       |
+------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Flange of right shaft                                                      |
+------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                        | tau         | Torque driving the two flanges (a positive value accelerates the flange)   |
+------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Torque2 "Input signal acting as torque on two flanges"
      extends Rotational.Interfaces.PartialTwoFlanges;

      Modelica.Blocks.Interfaces.RealInput tau 
        "Torque driving the two flanges (a positive value accelerates the flange)";

    equation 
      flange_a.tau =  tau;
      flange_b.tau = -tau;
    end Torque2;

--------------

|image28| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.LinearSpeedDependentTorque
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linear dependency of torque versus speed**

.. figure:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorque

   Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorque

Information
~~~~~~~~~~~

::

Model of torque, linearly dependent on angular velocity of flange.
 Parameter TorqueDirection chooses whether direction of torque is the
same in both directions of rotation or not.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialTorque <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque>`_
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| Type                                                                          | Name              | Default   | Description                                                        |
+===============================================================================+===================+===========+====================================================================+
| Boolean                                                                       | useSupport        | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_                     | tau\_nominal      |           | Nominal torque (if negative, torque is acting as load) [N.m]       |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| Boolean                                                                       | TorqueDirection   | true      | Same direction of torque in both directions of rotation            |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w\_nominal        |           | Nominal speed [rad/s]                                              |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                             | Name      | Description                    |
+==================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LinearSpeedDependentTorque 
      "Linear dependency of torque versus speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque tau_nominal 
        "Nominal torque (if negative, torque is acting as load)";
      parameter Boolean TorqueDirection=true 
        "Same direction of torque in both directions of rotation";
      parameter Modelica.SIunits.AngularVelocity w_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.AngularVelocity w 
        "Angular velocity of flange with respect to support (= der(phi))";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";
    equation 
      w = der(phi);
      tau = -flange.tau;
      if TorqueDirection then
        tau = tau_nominal*abs(w/w_nominal);
      else
        tau = tau_nominal*(w/w_nominal);
      end if;
    end LinearSpeedDependentTorque;

--------------

|image29| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.QuadraticSpeedDependentTorque
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quadratic dependency of torque versus speed**

.. figure:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque

   Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque

Information
~~~~~~~~~~~

::

Model of torque, quadratic dependent on angular velocity of flange.
 Parameter TorqueDirection chooses whether direction of torque is the
same in both directions of rotation or not.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialTorque <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque>`_
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| Type                                                                          | Name              | Default   | Description                                                        |
+===============================================================================+===================+===========+====================================================================+
| Boolean                                                                       | useSupport        | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_                     | tau\_nominal      |           | Nominal torque (if negative, torque is acting as load) [N.m]       |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| Boolean                                                                       | TorqueDirection   | true      | Same direction of torque in both directions of rotation            |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w\_nominal        |           | Nominal speed [rad/s]                                              |
+-------------------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                             | Name      | Description                    |
+==================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model QuadraticSpeedDependentTorque 
      "Quadratic dependency of torque versus speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque tau_nominal 
        "Nominal torque (if negative, torque is acting as load)";
      parameter Boolean TorqueDirection=true 
        "Same direction of torque in both directions of rotation";
      parameter Modelica.SIunits.AngularVelocity w_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.AngularVelocity w 
        "Angular velocity of flange with respect to support (= der(phi))";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";
    equation 
      w = der(phi);
      tau = -flange.tau;
      if TorqueDirection then
        tau = tau_nominal*(w/w_nominal)^2;
      else
        tau = tau_nominal*smooth(1,if w >= 0 then (w/w_nominal)^2 else -(w/w_nominal)^2);
      end if;
    end QuadraticSpeedDependentTorque;

--------------

|image30| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.ConstantTorque
----------------------------------------------------------------------------------------------------------------------------------------------------

**Constant torque, not dependent on speed**

.. figure:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.ConstantTorque

   Modelica.Mechanics.Rotational.Sources.ConstantTorque

Information
~~~~~~~~~~~

::

Model of constant torque, not dependent on angular velocity of flange.
 Positive torque acts accelerating.

::

Extends from
`Rotational.Interfaces.PartialTorque <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque>`_
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+-----------------+-----------+--------------------------------------------------------------------+
| Type                                                        | Name            | Default   | Description                                                        |
+=============================================================+=================+===========+====================================================================+
| Boolean                                                     | useSupport      | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-------------------------------------------------------------+-----------------+-----------+--------------------------------------------------------------------+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_   | tau\_constant   |           | Constant torque (if negative, torque is acting as load) [N.m]      |
+-------------------------------------------------------------+-----------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                             | Name      | Description                    |
+==================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantTorque "Constant torque, not dependent on speed"
      extends Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque tau_constant 
        "Constant torque (if negative, torque is acting as load)";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";
    equation 
      tau = -flange.tau;
      tau = tau_constant;
    end ConstantTorque;

--------------

|image31| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.ConstantSpeed
---------------------------------------------------------------------------------------------------------------------------------------------------

**Constant speed, not dependent on torque**

.. figure:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.ConstantSpeed

   Modelica.Mechanics.Rotational.Sources.ConstantSpeed

Information
~~~~~~~~~~~

::

Model of **fixed** angular verlocity of flange, not dependent on torque.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialTorque <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque>`_
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| Type                                                                          | Name         | Default   | Description                                                        |
+===============================================================================+==============+===========+====================================================================+
| Boolean                                                                       | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w\_fixed     |           | Fixed speed [rad/s]                                                |
+-------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                             | Name      | Description                    |
+==================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantSpeed "Constant speed, not dependent on torque"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      Modelica.SIunits.AngularVelocity w 
        "Angular velocity of flange with respect to support (= der(phi))";
      parameter Modelica.SIunits.AngularVelocity w_fixed "Fixed speed";
    equation 
      w = der(phi);
      w = w_fixed;
    end ConstantSpeed;

--------------

|image32| `Modelica.Mechanics.Rotational.Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_.TorqueStep
------------------------------------------------------------------------------------------------------------------------------------------------

**Constant torque, not dependent on speed**

.. figure:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sources.TorqueStep

   Modelica.Mechanics.Rotational.Sources.TorqueStep

Information
~~~~~~~~~~~

::

Model of a torque step at time .
 Positive torque acts accelerating.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialTorque <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque>`_
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+
| Type                                                        | Name           | Default   | Description                                                           |
+=============================================================+================+===========+=======================================================================+
| Boolean                                                     | useSupport     | false     | = true, if support flange enabled, otherwise implicitly grounded      |
+-------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_   | stepTorque     |           | Height of torque step (if negative, torque is acting as load) [N.m]   |
+-------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_   | offsetTorque   |           | Offset of torque [N.m]                                                |
+-------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_       | startTime      | 0         | Torque = offset for time < startTime [s]                              |
+-------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                             | Name      | Description                    |
+==================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    | Flange of shaft                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TorqueStep "Constant torque, not dependent on speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque stepTorque(start=1) 
        "Height of torque step (if negative, torque is acting as load)";
      parameter Modelica.SIunits.Torque offsetTorque(start=0) "Offset of torque";
      parameter Modelica.SIunits.Time startTime=0 
        "Torque = offset for time < startTime";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";

    equation 
      tau = -flange.tau;
      tau = offsetTorque + (if time < startTime then 0 else stepTorque);
    end TorqueStep;

--------------

`Modelica.Mechanics.Rotational.Sources.Move <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Move>`_.position\_der
---------------------------------------------------------------------------------------------------------------------------------------------------

Inputs
~~~~~~

+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Type   | Name            | Default   | Description                                                                                                                 |
+========+=================+===========+=============================================================================================================================+
| Real   | q\_qd\_qdd[3]   |           | Required values for position, speed, acceleration                                                                           |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy           |           | Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)   |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy\_der      |           |                                                                                                                             |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | qd     |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function position_der
      annotation(derivative=position_der2);
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       output Real qd;
    algorithm 
      qd :=q_qd_qdd[2];
    end position_der;

--------------

`Modelica.Mechanics.Rotational.Sources.Move <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Move>`_.position\_der2
----------------------------------------------------------------------------------------------------------------------------------------------------

Inputs
~~~~~~

+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Type   | Name            | Default   | Description                                                                                                                 |
+========+=================+===========+=============================================================================================================================+
| Real   | q\_qd\_qdd[3]   |           | Required values for position, speed, acceleration                                                                           |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy           |           | Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)   |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy\_der      |           |                                                                                                                             |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy\_der2     |           |                                                                                                                             |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | qdd    |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function position_der2
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       input Real dummy_der2;
       output Real qdd;
    algorithm 
      qdd :=q_qd_qdd[3];
    end position_der2;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:46
2010.

.. |Modelica.Mechanics.Rotational.Sources.Position| image:: Modelica.Mechanics.Rotational.Sources.PositionS.png
.. |Modelica.Mechanics.Rotational.Sources.Speed| image:: Modelica.Mechanics.Rotational.Sources.PositionS.png
.. |Modelica.Mechanics.Rotational.Sources.Accelerate| image:: Modelica.Mechanics.Rotational.Sources.PositionS.png
.. |Modelica.Mechanics.Rotational.Sources.Move| image:: Modelica.Mechanics.Rotational.Sources.MoveS.png
.. |Modelica.Mechanics.Rotational.Sources.Torque| image:: Modelica.Mechanics.Rotational.Sources.TorqueS.png
.. |Modelica.Mechanics.Rotational.Sources.Torque2| image:: Modelica.Mechanics.Rotational.Sources.Torque2S.png
.. |Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorque| image:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueS.png
.. |Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque| image:: Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorqueS.png
.. |Modelica.Mechanics.Rotational.Sources.ConstantTorque| image:: Modelica.Mechanics.Rotational.Sources.ConstantTorqueS.png
.. |Modelica.Mechanics.Rotational.Sources.ConstantSpeed| image:: Modelica.Mechanics.Rotational.Sources.ConstantSpeedS.png
.. |Modelica.Mechanics.Rotational.Sources.TorqueStep| image:: Modelica.Mechanics.Rotational.Sources.TorqueStepS.png
.. |image11| image:: Modelica.Mechanics.Rotational.Sources.PositionS.png
.. |image12| image:: Modelica.Mechanics.Rotational.Sources.PositionS.png
.. |image13| image:: Modelica.Mechanics.Rotational.Sources.PositionS.png
.. |image14| image:: Modelica.Mechanics.Rotational.Sources.MoveS.png
.. |image15| image:: Modelica.Mechanics.Rotational.Sources.TorqueS.png
.. |image16| image:: Modelica.Mechanics.Rotational.Sources.Torque2S.png
.. |image17| image:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueS.png
.. |image18| image:: Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorqueS.png
.. |image19| image:: Modelica.Mechanics.Rotational.Sources.ConstantTorqueS.png
.. |image20| image:: Modelica.Mechanics.Rotational.Sources.ConstantSpeedS.png
.. |image21| image:: Modelica.Mechanics.Rotational.Sources.TorqueStepS.png
.. |image22| image:: Modelica.Mechanics.Rotational.Sources.PositionI.png
.. |image23| image:: Modelica.Mechanics.Rotational.Sources.SpeedI.png
.. |image24| image:: Modelica.Mechanics.Rotational.Sources.AccelerateI.png
.. |image25| image:: Modelica.Mechanics.Rotational.Sources.MoveI.png
.. |image26| image:: Modelica.Mechanics.Rotational.Sources.TorqueI.png
.. |image27| image:: Modelica.Mechanics.Rotational.Sources.Torque2I.png
.. |image28| image:: Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueI.png
.. |image29| image:: Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorqueI.png
.. |image30| image:: Modelica.Mechanics.Rotational.Sources.ConstantTorqueI.png
.. |image31| image:: Modelica.Mechanics.Rotational.Sources.ConstantSpeedI.png
.. |image32| image:: Modelica.Mechanics.Rotational.Sources.TorqueStepI.png
