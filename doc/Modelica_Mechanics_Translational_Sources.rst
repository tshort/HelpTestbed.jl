========================================
Modelica.Mechanics.Translational.Sources
========================================

`Modelica.Mechanics.Translational <Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational>`_.Sources
--------------------------------------------------------------------------------------------------------------------

**Sources to drive 1D translational mechanical components**

Information
~~~~~~~~~~~

::

This package contains ideal sources to drive 1D mechanical translational
drive trains.

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                            | Description                                                                             |
+=================================================================================================================================================================================================================================+=========================================================================================+
| |image11| `Position <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Position>`_                                                                                                         | Forced movement of a flange according to a reference position                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image12| `Speed <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Speed>`_                                                                                                               | Forced movement of a flange according to a reference speed                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image13| `Accelerate <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Accelerate>`_                                                                                                     | Forced movement of a flange according to an acceleration signal                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image14| `Move <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Move>`_                                                                                                                 | Forced movement of a flange according to a position, velocity and acceleration signal   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image15| `Force <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Force>`_                                                                                                               | External force acting on a drive train element as input signal                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image16| `Force2 <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Force2>`_                                                                                                             | Input signal acting as torque on two flanges                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image17| `LinearSpeedDependentForce <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForce>`_                                                                       | Linear dependency of force versus speed                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image18| `QuadraticSpeedDependentForce <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForce>`_                                                                 | Quadratic dependency of force versus speed                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image19| `ConstantForce <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.ConstantForce>`_                                                                                               | Constant force, not dependent on speed                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image20| `ConstantSpeed <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.ConstantSpeed>`_                                                                                               | Constant speed, not dependent on force                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| |image21| `ForceStep <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.ForceStep>`_                                                                                                       | Constant force, not dependent on speed                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------+

--------------

|image22| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.Position
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to a reference position**

.. figure:: Modelica.Mechanics.Translational.Sources.PositionD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.Position

   Modelica.Mechanics.Translational.Sources.Position

Information
~~~~~~~~~~~

::

The input signal **s\_ref** defines the **reference position** in [m].
Flange **flange\_b** is **forced** to move relative to the support
connector according to this reference motion. According to parameter
**exact** (default = **false**), this is done in the following way:

#. **exact=true**
    The reference position is treated **exactly**. This is only
   possible, if the input signal is defined by an analytical function
   which can be differentiated at least twice. If this prerequisite is
   fulfilled, the Modelica translator will differentiate the input
   signal twice in order to compute the reference acceleration of the
   flange.
#. **exact=false**
    The reference position is **filtered** and the second derivative of
   the filtered curve is used to compute the reference acceleration of
   the flange. This second derivative is **not** computed by numerical
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
`Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

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

+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------+
| Type                                                                                                                   | Name      | Description                                    |
+========================================================================================================================+===========+================================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component                            |
+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component                   |
+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | s\_ref    | Reference position of flange as input signal   |
+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Position 
      "Forced movement of a flange according to a reference position"
      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2
        ( s(stateSelect=if exact then StateSelect.default else StateSelect.prefer));
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Velocity v(start=0, stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "If exact=false, absolute velocity of flange_b else dummy";
      SI.Acceleration a(start=0) 
        "If exact=false, absolute acceleration of flange_b else dummy";
      Modelica.Blocks.Interfaces.RealInput s_ref 
        "Reference position of flange as input signal";
    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
      constant Real af=1.3617 "s coefficient of Bessel filter";
      constant Real bf=0.6180 "s*s coefficient of Bessel filter";

    initial equation 
      if not exact then
        s = s_ref;
      end if;
    equation 
      if exact then
        s = s_ref;
        v = 0;
        a = 0;
      else
        // Filter: a = s_ref*S^2/(1 + (af/w_crit)*S + (bf/w_crit^2)*S^2)
        v = der(s);
        a = der(v);
        a = ((s_ref - s)*w_crit - af*v)*(w_crit/bf);
      end if;
    end Position;

--------------

|image23| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.Speed
----------------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to a reference speed**

.. figure:: Modelica.Mechanics.Translational.Sources.SpeedD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.Speed

   Modelica.Mechanics.Translational.Sources.Speed

Information
~~~~~~~~~~~

::

The input signal **v\_ref** defines the **reference speed** in [m/s].
Flange **flange\_b** is **forced** to move relative to the support
connector according to this reference motion. According to parameter
**exact** (default = **false**), this is done in the following way:

#. **exact=true**
    The reference speed is treated **exactly**. This is only possible,
   if the input signal is defined by an analytical function which can be
   differentiated at least once. If this prerequisite is fulfilled, the
   Modelica translator will differentiate the input signal once in order
   to compute the reference acceleration of the flange.
#. **exact=false**
    The reference speed is **filtered** and the first derivative of the
   filtered curve is used to compute the reference acceleration of the
   flange. This first derivative is **not** computed by numerical
   differentiation but by an appropriate realization of the filter. For
   filtering, a first order filter is used. The critical frequency (also
   called cut-off frequency) of the filter is defined via parameter
   **f\_crit** in [Hz]. This value should be selected in such a way that
   it is higher as the essential low frequencies in the signal.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

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

+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------+
| Type                                                                                                                   | Name      | Description                                 |
+========================================================================================================================+===========+=============================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component                         |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component                |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | v\_ref    | Reference speed of flange as input signal   |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Speed 
      "Forced movement of a flange according to a reference speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2
        (       s(start=0, fixed=true, stateSelect=StateSelect.prefer));
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Velocity v(stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "Absolute velocity of flange_b";
      SI.Acceleration a 
        "If exact=false, absolute acceleration of flange_b else dummy";
      Modelica.Blocks.Interfaces.RealInput v_ref 
        "Reference speed of flange as input signal";

    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
    initial equation 
      if not exact then
        v = v_ref;
      end if;
    equation 
      v = der(s);
      if exact then
        v = v_ref;
        a = 0;
      else
        // Filter: a = v_ref/(1 + (1/w_crit)*s)
        a = der(v);
        a = (v_ref - v)*w_crit;
      end if;
    end Speed;

--------------

|image24| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.Accelerate
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to an acceleration signal**

.. figure:: Modelica.Mechanics.Translational.Sources.AccelerateD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.Accelerate

   Modelica.Mechanics.Translational.Sources.Accelerate

Information
~~~~~~~~~~~

::

The input signal **a** in [m/s2] moves the 1D translational flange
connector flange\_b with a predefined *acceleration*, i.e., the flange
is *forced* to move relative to the support connector with this
acceleration. The velocity and the position of the flange are also
predefined and are determined by integration of the acceleration.

The acceleration "a(t)" can be provided from one of the signal generator
blocks of the block library Modelica.Blocks.Source.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| Type                                                                                                                   | Name      | Description                                       |
+========================================================================================================================+===========+===================================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component                               |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component                      |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | a\_ref    | Absolute acceleration of flange as input signal   |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Accelerate 
      "Forced movement of a flange according to an acceleration signal"
       extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2
        (s(start=0, fixed=true, stateSelect=StateSelect.prefer));
      SI.Velocity v(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Absolute velocity of flange_b";
      SI.Acceleration a "Absolute acceleration of flange_b";

      Modelica.Blocks.Interfaces.RealInput a_ref 
        "Absolute acceleration of flange as input signal";

    equation 
      v = der(s);
      a = der(v);
      a = a_ref;
    end Accelerate;

--------------

|image25| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.Move
---------------------------------------------------------------------------------------------------------------------------------------------------

**Forced movement of a flange according to a position, velocity and
acceleration signal**

.. figure:: Modelica.Mechanics.Translational.Sources.MoveD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.Move

   Modelica.Mechanics.Translational.Sources.Move

Information
~~~~~~~~~~~

::

Flange **flange\_b** is **forced** to move relative to the support
connector with a predefined motion according to the input signals:

::

        u[1]: position of flange
        u[2]: velocity of flange
        u[3]: acceleration of flange

The user has to guarantee that the input signals are consistent to each
other, i.e., that u[2] is the derivative of u[1] and that u[3] is the
derivative of u. There are, however, also applications where by purpose
these conditions do not hold. For example, if only the position
dependent terms of a mechanical system shall be calculated, one may
provide position = position(t) and set the velocity and the acceleration
to zero.

The input signals can be provided from one of the signal generator
blocks of the block library Modelica.Blocks.Sources.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| Type                                                                                                                   | Name      | Description                                                      |
+========================================================================================================================+===========+==================================================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component                                              |
+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component                                     |
+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | u[3]      | Position, velocity and acceleration of flange as input signals   |
+------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Move 
      "Forced movement of a flange according to a position, velocity and acceleration signal"
       extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      Modelica.Blocks.Interfaces.RealInput u[3] 
        "Position, velocity and acceleration of flange as input signals";
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
      s = position(u,time);
    end Move;

--------------

|image26| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.Force
----------------------------------------------------------------------------------------------------------------------------------------------------

**External force acting on a drive train element as input signal**

.. figure:: Modelica.Mechanics.Translational.Sources.ForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.Force

   Modelica.Mechanics.Translational.Sources.Force

Information
~~~~~~~~~~~

::

The input signal "f" in [N] characterizes an *external force* which acts
(with positive sign) at a flange, i.e., the component connected to the
flange is driven by force f.

Input signal f can be provided from one of the signal generator blocks
of Modelica.Blocks.Source.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| Type                                                                                                                   | Name      | Description                     |
+========================================================================================================================+===========+=================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component             |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component    |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | f         | Driving force as input signal   |
+------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Force 
      "External force acting on a drive train element as input signal"
      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      Modelica.Blocks.Interfaces.RealInput f "Driving force as input signal";

    equation 
      flange.f = -f;
    end Force;

--------------

|image27| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.Force2
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Input signal acting as torque on two flanges**

.. figure:: Modelica.Mechanics.Translational.Sources.Force2D.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.Force2

   Modelica.Mechanics.Translational.Sources.Force2

Information
~~~~~~~~~~~

::

The input signal "f" in [N] characterizes an *external force* which acts
(with positive sign) at both flanges, i.e., the components connected to
these flanges are driven by force f.

Input signal s can be provided from one of the signal generator blocks
of Modelica.Blocks.Source.

::

Extends from
`Translational.Interfaces.PartialTwoFlanges <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges>`_
(Component with two translational 1D flanges ).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | f           | Driving force as input signal                                                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Force2 "Input signal acting as torque on two flanges"
      extends Translational.Interfaces.PartialTwoFlanges;
      Modelica.Blocks.Interfaces.RealInput f "Driving force as input signal";

    equation 
      flange_a.f =  f;
      flange_b.f = -f;
    end Force2;

--------------

|image28| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.LinearSpeedDependentForce
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linear dependency of force versus speed**

.. figure:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForce

   Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForce

Information
~~~~~~~~~~~

::

Model of force, linearly dependent on velocity of flange.
 Parameter ForceDirection chooses whether direction of force is the same
in both directions of movement or not.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialForce <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce>`_
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| Type                                                            | Name             | Default   | Description                                                        |
+=================================================================+==================+===========+====================================================================+
| Boolean                                                         | useSupport       | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_         | f\_nominal       |           | Nominal force (if negative, force is acting as load) [N]           |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| Boolean                                                         | ForceDirection   | true      | Same direction of force in both directions of movement             |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_nominal       |           | Nominal speed [m/s]                                                |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                                   | Name      | Description                    |
+========================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component            |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LinearSpeedDependentForce 
      "Linear dependency of force versus speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force f_nominal 
        "Nominal force (if negative, force is acting as load)";
      parameter Boolean ForceDirection=true 
        "Same direction of force in both directions of movement";
      parameter Modelica.SIunits.Velocity v_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.Velocity v 
        "Velocity of flange with respect to support (= der(s))";

    equation 
      v = der(s);
      if ForceDirection then
        f = -f_nominal*abs(v/v_nominal);
      else
        f = -f_nominal*(v/v_nominal);
      end if;
    end LinearSpeedDependentForce;

--------------

|image29| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.QuadraticSpeedDependentForce
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quadratic dependency of force versus speed**

.. figure:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForce

   Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForce

Information
~~~~~~~~~~~

::

Model of force, quadratic dependent on velocity of flange.
 Parameter ForceDirection chooses whether direction of force is the same
in both directions of movement or not.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialForce <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce>`_
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| Type                                                            | Name             | Default   | Description                                                        |
+=================================================================+==================+===========+====================================================================+
| Boolean                                                         | useSupport       | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_         | f\_nominal       |           | Nominal force (if negative, force is acting as load) [N]           |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| Boolean                                                         | ForceDirection   | true      | Same direction of force in both directions of movement             |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_nominal       |           | Nominal speed [m/s]                                                |
+-----------------------------------------------------------------+------------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                                   | Name      | Description                    |
+========================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component            |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model QuadraticSpeedDependentForce 
      "Quadratic dependency of force versus speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force f_nominal 
        "Nominal force (if negative, force is acting as load)";
      parameter Boolean ForceDirection=true 
        "Same direction of force in both directions of movement";
      parameter Modelica.SIunits.Velocity v_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.Velocity v 
        "Velocity of flange with respect to support (= der(s))";
    equation 
      v = der(s);
      if ForceDirection then
        f = -f_nominal*(v/v_nominal)^2;
      else
        f = -f_nominal*smooth(1, if v >= 0 then (v/v_nominal)^2 else -(v/v_nominal)^2);
      end if;
    end QuadraticSpeedDependentForce;

--------------

|image30| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.ConstantForce
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant force, not dependent on speed**

.. figure:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.ConstantForce

   Modelica.Mechanics.Translational.Sources.ConstantForce

Information
~~~~~~~~~~~

::

Model of constant force, not dependent on velocity of flange.
 Positive force acts accelerating.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialForce <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce>`_
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+
| Type                                                      | Name          | Default   | Description                                                        |
+===========================================================+===============+===========+====================================================================+
| Boolean                                                   | useSupport    | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_   | f\_constant   |           | Nominal force (if negative, force is acting as load) [N]           |
+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                                   | Name      | Description                    |
+========================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component            |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantForce "Constant force, not dependent on speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force f_constant 
        "Nominal force (if negative, force is acting as load)";
    equation 
      f = -f_constant;
    end ConstantForce;

--------------

|image31| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.ConstantSpeed
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant speed, not dependent on force**

.. figure:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.ConstantSpeed

   Modelica.Mechanics.Translational.Sources.ConstantSpeed

Information
~~~~~~~~~~~

::

Model of **fixed** verlocity of flange, not dependent on force.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialForce <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce>`_
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| Type                                                            | Name         | Default   | Description                                                        |
+=================================================================+==============+===========+====================================================================+
| Boolean                                                         | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_fixed     |           | Fixed speed (if negative, force is acting as load) [m/s]           |
+-----------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                                   | Name      | Description                    |
+========================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component            |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantSpeed "Constant speed, not dependent on force"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Velocity v_fixed 
        "Fixed speed (if negative, force is acting as load)";
      Modelica.SIunits.Velocity v 
        "Velocity of flange with respect to support (= der(s))";
    equation 
      v = der(s);
      v = v_fixed;
    end ConstantSpeed;

--------------

|image32| `Modelica.Mechanics.Translational.Sources <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources>`_.ForceStep
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant force, not dependent on speed**

.. figure:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sources.ForceStep

   Modelica.Mechanics.Translational.Sources.ForceStep

Information
~~~~~~~~~~~

::

Model of a force step at time .
 Positive force acts accelerating.

::

Extends from
`Modelica.Mechanics.Translational.Interfaces.PartialForce <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce>`_
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+
| Type                                                      | Name          | Default   | Description                                                        |
+===========================================================+===============+===========+====================================================================+
| Boolean                                                   | useSupport    | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_   | stepForce     |           | Height of force step (if negative, force is acting as load) [N]    |
+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_   | offsetForce   |           | Offset of force [N]                                                |
+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_     | startTime     | 0         | Force = offset for time < startTime [s]                            |
+-----------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                                   | Name      | Description                    |
+========================================================================================================================+===========+================================+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    | Flange of component            |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ForceStep "Constant force, not dependent on speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force stepForce(start=1) 
        "Height of force step (if negative, force is acting as load)";
      parameter Modelica.SIunits.Force offsetForce(start=0) "Offset of force";
      parameter Modelica.SIunits.Time startTime=0 
        "Force = offset for time < startTime";
    equation 
      f = -offsetForce - (if time < startTime then 0 else stepForce);
    end ForceStep;

--------------

`Modelica.Mechanics.Translational.Sources.Move <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Move>`_.position\_der
------------------------------------------------------------------------------------------------------------------------------------------------------------

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

`Modelica.Mechanics.Translational.Sources.Move <Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Move>`_.position\_der2
-------------------------------------------------------------------------------------------------------------------------------------------------------------

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

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:51
2010.

.. |Modelica.Mechanics.Translational.Sources.Position| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |Modelica.Mechanics.Translational.Sources.Speed| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |Modelica.Mechanics.Translational.Sources.Accelerate| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |Modelica.Mechanics.Translational.Sources.Move| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |Modelica.Mechanics.Translational.Sources.Force| image:: Modelica.Mechanics.Translational.Sources.ForceS.png
.. |Modelica.Mechanics.Translational.Sources.Force2| image:: Modelica.Mechanics.Translational.Sources.Force2S.png
.. |Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForce| image:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceS.png
.. |Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForce| image:: Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForceS.png
.. |Modelica.Mechanics.Translational.Sources.ConstantForce| image:: Modelica.Mechanics.Translational.Sources.ConstantForceS.png
.. |Modelica.Mechanics.Translational.Sources.ConstantSpeed| image:: Modelica.Mechanics.Translational.Sources.ConstantSpeedS.png
.. |Modelica.Mechanics.Translational.Sources.ForceStep| image:: Modelica.Mechanics.Translational.Sources.ForceStepS.png
.. |image11| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |image12| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |image13| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |image14| image:: Modelica.Mechanics.Translational.Sources.PositionS.png
.. |image15| image:: Modelica.Mechanics.Translational.Sources.ForceS.png
.. |image16| image:: Modelica.Mechanics.Translational.Sources.Force2S.png
.. |image17| image:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceS.png
.. |image18| image:: Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForceS.png
.. |image19| image:: Modelica.Mechanics.Translational.Sources.ConstantForceS.png
.. |image20| image:: Modelica.Mechanics.Translational.Sources.ConstantSpeedS.png
.. |image21| image:: Modelica.Mechanics.Translational.Sources.ForceStepS.png
.. |image22| image:: Modelica.Mechanics.Translational.Sources.PositionI.png
.. |image23| image:: Modelica.Mechanics.Translational.Sources.SpeedI.png
.. |image24| image:: Modelica.Mechanics.Translational.Sources.AccelerateI.png
.. |image25| image:: Modelica.Mechanics.Translational.Sources.MoveI.png
.. |image26| image:: Modelica.Mechanics.Translational.Sources.ForceI.png
.. |image27| image:: Modelica.Mechanics.Translational.Sources.Force2I.png
.. |image28| image:: Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceI.png
.. |image29| image:: Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForceI.png
.. |image30| image:: Modelica.Mechanics.Translational.Sources.ConstantForceI.png
.. |image31| image:: Modelica.Mechanics.Translational.Sources.ConstantSpeedI.png
.. |image32| image:: Modelica.Mechanics.Translational.Sources.ForceStepI.png
