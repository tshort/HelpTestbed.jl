===========================================
Modelica.Mechanics.Translational.Interfaces
===========================================

`Modelica.Mechanics.Translational <Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational>`_.Interfaces
-----------------------------------------------------------------------------------------------------------------------

**Interfaces for 1-dim. translational mechanical components**

Information
~~~~~~~~~~~

::

This package contains connectors and partial models for 1-dim.
translational mechanical components. The components of this package can
only be used as basic building elements for models.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                               | Description                                                                                                                                                                                    |
+====================================================================================================================================================================================================================================================================================+================================================================================================================================================================================================+
| |image18| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_                                                                                                                                                     | (left) 1D translational flange (flange axis directed INTO cut plane, e. g. from left to right)                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image19| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_                                                                                                                                                     | (right) 1D translational flange (flange axis directed OUT OF cut plane)                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image20| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_                                                                                                                                                        | Support/housing 1D translational flange                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image21| `InternalSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.InternalSupport>`_                                                                                                                                        | Adapter model to utilize conditional support connector                                                                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image22| `PartialTwoFlanges <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges>`_                                                                                                                                    | Component with two translational 1D flanges                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image23| `PartialOneFlangeAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport>`_                                                                                                                  | Partial model for a component with one translational 1-dim. shaft flange and a support used for graphical modeling, i.e., the model is build up by drag-and-drop from elementary components    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image24| `PartialTwoFlangesAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport>`_                                                                                                                | Partial model for a component with two translational 1-dim. shaft flanges and a support used for graphical modeling, i.e., the model is build up by drag-and-drop from elementary components   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image25| `PartialRigid <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRigid>`_                                                                                                                                              | Rigid connection of two translational 1D flanges                                                                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image26| `PartialCompliant <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialCompliant>`_                                                                                                                                      | Compliant connection of two translational 1D flanges                                                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image27| `PartialCompliantWithRelativeStates <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates>`_                                                                                                  | Base model for the compliant connection of two translational 1-dim. shaft flanges where the relative position and relative velocities are used as states                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image28| `PartialElementaryOneFlangeAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport>`_                                                                                              | Obsolete partial model. Use PartialElementaryOneFlangeAndSupport2.                                                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image29| `PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_                                                                                            | Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image30| `PartialElementaryTwoFlangesAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport>`_                                                                                            | Obsolete partial model. Use PartialElementaryTwoFlangesAndSupport2.                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image31| `PartialElementaryTwoFlangesAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2>`_                                                                                          | Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image32| `PartialElementaryRotationalToTranslational <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational>`_                                                                                  | Partial model to transform rotational into translational motion                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image33| `PartialForce <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce>`_                                                                                                                                              | Partial model of a force acting at the flange (accelerates the flange)                                                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image34| `PartialAbsoluteSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor>`_                                                                                                                            | Device to measure a single absolute flange variable                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image35| `PartialRelativeSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor>`_                                                                                                                            | Device to measure a single relative variable between two flanges                                                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `PartialFriction <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialFriction>`_                                                                                                                                                  | Base model of Coulomb friction elements                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image36| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.Flange\_a
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**(left) 1D translational flange (flange axis directed INTO cut plane,
e. g. from left to right)**

.. figure:: Modelica.Mechanics.Translational.Interfaces.Flange_aD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.Flange\_a

   Modelica.Mechanics.Translational.Interfaces.Flange\_a

Information
~~~~~~~~~~~

::

This is a flange for 1D translational mechanical systems. In the cut
plane of the flange a unit vector n, called flange axis, is defined
which is directed INTO the cut plane, i. e. from left to right. All
vectors in the cut plane are resolved with respect to this unit vector.
E.g. force f characterizes a vector which is directed in the direction
of n with value equal to f. When this flange is connected to other 1D
translational flanges, this means that the axes vectors of the connected
flanges are identical.

The following variables are transported through this connector:

::

      s: Absolute position of the flange in [m]. A positive translation
         means that the flange is translated along the flange axis.
      f: Cut-force in direction of the flange axis in [N].

::

Contents
~~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------------+
| Type                                                            | Name   | Description                          |
+=================================================================+========+======================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | s      | Absolute position of flange [m]      |
+-----------------------------------------------------------------+--------+--------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_    | f      | Cut force directed into flange [N]   |
+-----------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Flange_a 
      "(left) 1D translational flange (flange axis directed INTO cut plane, e. g. from left to right)"

      SI.Position s "Absolute position of flange";
      flow SI.Force f "Cut force directed into flange";
    end Flange_a;

--------------

|image37| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.Flange\_b
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**(right) 1D translational flange (flange axis directed OUT OF cut
plane)**

.. figure:: Modelica.Mechanics.Translational.Interfaces.Flange_bD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.Flange\_b

   Modelica.Mechanics.Translational.Interfaces.Flange\_b

Information
~~~~~~~~~~~

::

This is a flange for 1D translational mechanical systems. In the cut
plane of the flange a unit vector n, called flange axis, is defined
which is directed OUT OF the cut plane. All vectors in the cut plane are
resolved with respect to this unit vector. E.g. force f characterizes a
vector which is directed in the direction of n with value equal to f.
When this flange is connected to other 1D translational flanges, this
means that the axes vectors of the connected flanges are identical.

The following variables are transported through this connector:

::

      s: Absolute position of the flange in [m]. A positive translation
         means that the flange is translated along the flange axis.
      f: Cut-force in direction of the flange axis in [N].

::

Contents
~~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------------+
| Type                                                            | Name   | Description                          |
+=================================================================+========+======================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | s      | Absolute position of flange [m]      |
+-----------------------------------------------------------------+--------+--------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_    | f      | Cut force directed into flange [N]   |
+-----------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Flange_b 
      "(right) 1D translational flange (flange axis directed OUT OF cut plane)"

      SI.Position s "Absolute position of flange";
      flow SI.Force f "Cut force directed into flange";
    end Flange_b;

--------------

|image38| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.Support
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Support/housing 1D translational flange**

.. figure:: Modelica.Mechanics.Translational.Interfaces.SupportD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.Support

   Modelica.Mechanics.Translational.Interfaces.Support

Information
~~~~~~~~~~~

::

This is a connector for 1-dim. rotational mechanical systems and models
the support or housing of a shaft. The following variables are defined
in this connector:

s
^

Absolute psotion of the support/housing in [m]

f
^

Reaction force in the support/housing in [N]

The support connector is usually defined as conditional connector. It is
most convenient to utilize it

-  For models to be build graphically (i.e., the model is build up by
   drag-and-drop from elementary components):
   `PartialOneFlangeAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport>`_,
   `PartialTwoFlangesAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport>`_,
-  For models to be build textually (i.e., elementary models):
   `PartialElementaryOneFlangeAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport>`_,
   `PartialElementaryTwoFlangesAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport>`_,
   `PartialElementaryRotationalToTranslational <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational>`_.

::

Contents
~~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------------+
| Type                                                            | Name   | Description                          |
+=================================================================+========+======================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | s      | Absolute position of flange [m]      |
+-----------------------------------------------------------------+--------+--------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_    | f      | Cut force directed into flange [N]   |
+-----------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Support "Support/housing 1D translational flange"

      SI.Position s "Absolute position of flange";
      flow SI.Force f "Cut force directed into flange";
    end Support;

--------------

|image39| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.InternalSupport
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Adapter model to utilize conditional support connector**

.. figure:: Modelica.Mechanics.Translational.Interfaces.InternalSupportD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.InternalSupport

   Modelica.Mechanics.Translational.Interfaces.InternalSupport

Information
~~~~~~~~~~~

::

This is an adapter model to utilize a conditional support connector in
an elementary component, i.e., where the component equations are defined
textually:

-  If *useSupport = true*, the flange has to be connected to the
   conditional support connector.
-  If *useSupport = false*, the flange has to be connected to the
   conditional fixed model.

Variable **f** is defined as **input** and must be provided when using
this component as a modifier (computed via a force balance in the model
where InternalSupport is used). Usually, model InternalSupport is
utilized via the partial models:

    `PartialElementaryOneFlangeAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport>`_,

    `PartialElementaryTwoFlangesAndSupport <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport>`_,

    `PartialElementaryRotationalToTranslational <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational>`_.

Note, the support position can always be accessed as internalSupport.s,
and the support force can always be accessed as internalSupport.f.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name     | Description                                                                                                                                                |
+========================================================================================================================+==========+============================================================================================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange   | Internal support flange (must be connected to the conditional support connector for useSupport=true and to conditional fixed model for useSupport=false)   |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model InternalSupport 
      "Adapter model to utilize conditional support connector"
      input SI.Force f 
        "External support force (must be computed via force balance in model where InternalSupport is used; = flange.f)";
      SI.Position s "External support position (= flange.s)";
      Flange_a flange 
        "Internal support flange (must be connected to the conditional support connector for useSupport=true and to conditional fixed model for useSupport=false)";
        
    equation 
      flange.f = f;
      flange.s = s;
    end InternalSupport;

--------------

|image40| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialTwoFlanges
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Component with two translational 1D flanges**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges

   Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges

Information
~~~~~~~~~~~

::

This is a 1D translational component with two flanges. It is used e.g.,
to built up parts of a drive train consisting of several base
components.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoFlanges 
      "Component with two translational 1D flanges "

      Flange_a flange_a 
        "(left) driving flange (flange axis directed in to cut plane, e. g. from left to right)";
      Flange_b flange_b 
        "(right) driven flange (flange axis directed out of cut plane)";
    end PartialTwoFlanges;

--------------

|image41| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialOneFlangeAndSupport
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for a component with one translational 1-dim. shaft
flange and a support used for graphical modeling, i.e., the model is
build up by drag-and-drop from elementary components**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupportD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport

   Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with one flange and a
support/housing. It is used e.g., to build up parts of a drive train
graphically consisting of several components.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected.
 If *useSupport=false*, the support connector is conditionally disabled
and instead the component is internally fixed to ground.

::

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

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

    partial model PartialOneFlangeAndSupport 
      "Partial model for a component with one translational 1-dim. shaft flange and a support used for graphical modeling, i.e., the model is build up by drag-and-drop from elementary components"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_b flange "Flange of component";
      Support support if useSupport "Support/housing of component";
    protected 
      Support internalSupport 
        "Internal support/housing of component (either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    equation 
      connect(fixed.flange, internalSupport);
      connect(internalSupport, support);
    end PartialOneFlangeAndSupport;

--------------

|image42| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialTwoFlangesAndSupport
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for a component with two translational 1-dim. shaft
flanges and a support used for graphical modeling, i.e., the model is
build up by drag-and-drop from elementary components**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupportD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport

   Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with two flanges and a
support/housing. It is used e.g., to build up parts of a drive train
graphically consisting of several components.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected.
 If *useSupport=false*, the support connector is conditionally disabled
and instead the component is internally fixed to ground.

::

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| Type                                                                                                                   | Name        | Description                    |
+========================================================================================================================+=============+================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | Flange of left end             |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | Flange of right end            |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support     | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoFlangesAndSupport 
      "Partial model for a component with two translational 1-dim. shaft flanges and a support used for graphical modeling, i.e., the model is build up by drag-and-drop from elementary components"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_a flange_a "Flange of left end";
      Flange_b flange_b "Flange of right end";
      Support support if useSupport "Support/housing of component";
    protected 
      Support internalSupport 
        "Internal support/housing of component (either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    equation 
      connect(fixed.flange, internalSupport);
      connect(internalSupport, support);
    end PartialTwoFlangesAndSupport;

--------------

|image43| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialRigid
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Rigid connection of two translational 1D flanges**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialRigidD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialRigid

   Modelica.Mechanics.Translational.Interfaces.PartialRigid

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with two *rigidly* connected
flanges. The fixed distance between the left and the right flange is
defined by parameter "L". The forces at the right and left flange can be
different. It is used e.g., to built up sliding masses.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------------------+
| Type                                                        | Name   | Default   | Description                                                                               |
+=============================================================+========+===========+===========================================================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | L      |           | Length of component, from left flange to right flange (= flange\_b.s - flange\_a.s) [m]   |
+-------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------+
| Type                                                                                                                   | Name        | Description                               |
+========================================================================================================================+=============+===========================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of translational component    |
+------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of translational component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialRigid 
      "Rigid connection of two translational 1D flanges "
      SI.Position s 
        "Absolute position of center of component (s = flange_a.s + L/2 = flange_b.s - L/2)";
      parameter SI.Length L(start=0) 
        "Length of component, from left flange to right flange (= flange_b.s - flange_a.s)";
      Flange_a flange_a "Left flange of translational component";
      Flange_b flange_b "Right flange of translational component";
    equation 
      flange_a.s = s - L/2;
      flange_b.s = s + L/2;
    end PartialRigid;

--------------

|image44| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialCompliant
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compliant connection of two translational 1D flanges**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialCompliantD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialCompliant

   Modelica.Mechanics.Translational.Interfaces.PartialCompliant

Information
~~~~~~~~~~~

::

This is a 1D translational component with a *compliant*connection of two
translational 1D flanges where inertial effects between the two flanges
are not included. The absolute value of the force at the left and the
right flange is the same. It is used to built up springs, dampers etc.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                |
+========================================================================================================================+=============+============================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of compliant 1-dim. translational component    |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of compliant 1-dim. translational component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialCompliant 
      "Compliant connection of two translational 1D flanges"

      Flange_a flange_a "Left flange of compliant 1-dim. translational component";
      Flange_b flange_b "Right flange of compliant 1-dim. translational component";
      SI.Distance s_rel(start=0) "Relative distance (= flange_b.s - flange_a.s)";
      SI.Force f "Force between flanges (positive in direction of flange axis R)";

    equation 
      s_rel = flange_b.s - flange_a.s;
      flange_b.f = f;
      flange_a.f = -f;
    end PartialCompliant;

--------------

|image45| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialCompliantWithRelativeStates
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for the compliant connection of two translational 1-dim.
shaft flanges where the relative position and relative velocities are
used as states**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStatesD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates

   Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with a compliant connection of
two translational 1-dim. flanges where inertial effects between the two
flanges are neglected. The basic assumption is that the cut-forces of
the two flanges sum-up to zero, i.e., they have the same absolute value
but opposite sign: flange\_a.f + flange\_b.f = 0. This base class is
used to built up force elements such as springs, dampers, friction.

The difference to base classe "PartialCompliant" is that the relative
distance and the relative velocity are defined as preferred states. The
reason is that for a large class of drive trains, the absolute position
is quickly increasing during operation. Numerically, it is better to use
relative distances between drive train components because they remain in
a limited size. For this reason, StateSelect.prefer is set for the
relative distance of this component.

In order to improve the numerics, a nominal value for the relative
distance should be set, since drive train distances are in a small order
and then step size control of the integrator is practically switched off
for such a variable. A default nominal value of s\_nominal = 1e-4 is
defined. This nominal value might also be computed from other values,
such as "s\_nominal = f\_nominal / c" for a spring, if f\_nominal and c
have more meaningful values for the user.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+---------------+----------------------+--------------------------------------------------+
| Type                                                            | Name          | Default              | Description                                      |
+=================================================================+===============+======================+==================================================+
| **Advanced**                                                    |
+-----------------------------------------------------------------+---------------+----------------------+--------------------------------------------------+
| StateSelect                                                     | stateSelect   | StateSelect.prefer   | Priority to use phi\_rel and w\_rel as states    |
+-----------------------------------------------------------------+---------------+----------------------+--------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_   | s\_nominal    | 1e-4                 | Nominal value of s\_rel (used for scaling) [m]   |
+-----------------------------------------------------------------+---------------+----------------------+--------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                               |
+========================================================================================================================+=============+===========================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of compliant 1-dim. translational component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of compliant 1-dim. transational component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialCompliantWithRelativeStates 
      "Base model for the compliant connection of two translational 1-dim. shaft flanges where the relative position and relative velocities are used as states"

      parameter StateSelect stateSelect=StateSelect.prefer 
        "Priority to use phi_rel and w_rel as states";
      parameter SI.Distance s_nominal=1e-4 
        "Nominal value of s_rel (used for scaling)";

      SI.Distance s_rel(start=0, stateSelect=stateSelect, nominal=s_nominal) 
        "Relative distance (= flange_b.s - flange_a.s)";
      SI.Velocity v_rel(start=0, stateSelect=stateSelect) 
        "Relative velocity (= der(s_rel))";

      SI.Force f "Forces between flanges (= flange_b.f)";
      Translational.Interfaces.Flange_a flange_a 
        "Left flange of compliant 1-dim. translational component";
      Translational.Interfaces.Flange_b flange_b 
        "Right flange of compliant 1-dim. transational component";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      flange_b.f =  f;
      flange_a.f = -f;
    end PartialCompliantWithRelativeStates;

--------------

|image46| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialElementaryOneFlangeAndSupport
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete partial model. Use PartialElementaryOneFlangeAndSupport2.**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupportD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport

   Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with one flange and a
support/housing. It is used to build up elementary components of a drive
train with equations in the text layer.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected.
 If *useSupport=false*, the support connector is conditionally disabled
and instead the component is internally fixed to ground.

::

Extends from
`Modelica.Icons.ObsoleteModel <Modelica_Icons.html#Modelica.Icons.ObsoleteModel>`_
(Icon for classes that are obsolete and will be removed in later
versions).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

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

    partial model PartialElementaryOneFlangeAndSupport 
      "Obsolete partial model. Use PartialElementaryOneFlangeAndSupport2."
      extends Modelica.Icons.ObsoleteModel;

      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Modelica.SIunits.Length s = flange.s - internalSupport.s 
        "Distance between flange and support (= flange.s - support.s)";
      Flange_b flange "Flange of component";

    protected 
      InternalSupport internalSupport(f=-flange.f) 
        "Internal support/housing of component as a model with connector flange (flange is either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    public 
      Support support if useSupport "Support/housing of component";
    equation 
      connect(internalSupport.flange, support);
      connect(fixed.flange, internalSupport.flange);
    end PartialElementaryOneFlangeAndSupport;

--------------

|image47| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialElementaryOneFlangeAndSupport2
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2D.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2

   Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with one flange and a
support/housing. It is used to build up elementary components of a drive
train with equations in the text layer.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected.
 If *useSupport=false*, the support connector is conditionally disabled
and instead the component is internally fixed to ground.

::

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

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

    partial model PartialElementaryOneFlangeAndSupport2 
      "Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Modelica.SIunits.Length s = flange.s - s_support 
        "Distance between flange and support (= flange.s - support.s)";
      Flange_b flange "Flange of component";
      Support support(s=s_support, f=-flange.f) if useSupport 
        "Support/housing of component";
    protected 
      Modelica.SIunits.Length s_support "Absolute position of support flange";
    equation 
      if not useSupport then
         s_support = 0;
      end if;

    end PartialElementaryOneFlangeAndSupport2;

--------------

|image48| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialElementaryTwoFlangesAndSupport
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete partial model. Use PartialElementaryTwoFlangesAndSupport2.**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupportD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport

   Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with two flanges and an
additional support. It is used e.g., to build up elementary ideal gear
components. The component contains the force balance, i.e., the sum of
the forces of the connectors is zero (therefore, components that are
based on PartialGear cannot have a mass). The support connector needs to
be connected to avoid the unphysical behavior that the support force is
required to be zero (= the default value, if the connector is not
connected).

::

Extends from
`Modelica.Icons.ObsoleteModel <Modelica_Icons.html#Modelica.Icons.ObsoleteModel>`_
(Icon for classes that are obsolete and will be removed in later
versions).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| Type                                                                                                                   | Name        | Description                    |
+========================================================================================================================+=============+================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | Flange of left shaft           |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | Flange of right shaft          |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support     | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialElementaryTwoFlangesAndSupport 
      "Obsolete partial model. Use PartialElementaryTwoFlangesAndSupport2."
      extends Modelica.Icons.ObsoleteModel;
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_a flange_a "Flange of left shaft";
      Flange_b flange_b "Flange of right shaft";
      Modelica.SIunits.Length s_a = flange_a.s - internalSupport.s 
        "Distance between left flange and support";
      Modelica.SIunits.Length s_b = flange_b.s - internalSupport.s 
        "Distance between right flange and support";
    protected 
      InternalSupport internalSupport(f=-flange_a.f - flange_b.f) 
        "Internal support/housing of component as a model with connector flange (flange is either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    public 
      Support support if useSupport "Support/housing of component";
    equation 
      connect(internalSupport.flange, support);
      connect(fixed.flange, internalSupport.flange);
    end PartialElementaryTwoFlangesAndSupport;

--------------

|image49| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialElementaryTwoFlangesAndSupport2
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2D.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2

   Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2

Information
~~~~~~~~~~~

::

This is a 1-dim. translational component with two flanges and an
additional support. It is used e.g., to build up elementary ideal gear
components. The component contains the force balance, i.e., the sum of
the forces of the connectors is zero (therefore, components that are
based on PartialGear cannot have a mass). The support connector needs to
be connected to avoid the unphysical behavior that the support force is
required to be zero (= the default value, if the connector is not
connected).

::

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                        |
+===========+==============+===========+====================================================================+
| Boolean   | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| Type                                                                                                                   | Name        | Description                    |
+========================================================================================================================+=============+================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | Flange of left shaft           |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | Flange of right shaft          |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support     | Support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialElementaryTwoFlangesAndSupport2 
      "Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_a flange_a "Flange of left shaft";
      Flange_b flange_b "Flange of right shaft";
      Support support(s=s_support, f = -flange_a.f - flange_b.f) if useSupport 
        "Support/housing of component";
      Modelica.SIunits.Length s_a = flange_a.s - s_support 
        "Distance between left flange and support";
      Modelica.SIunits.Length s_b = flange_b.s - s_support 
        "Distance between right flange and support";
    protected 
      Modelica.SIunits.Length s_support "Absolute position of support flange";
    equation 
      if not useSupport then
         s_support = 0;
      end if;

    end PartialElementaryTwoFlangesAndSupport2;

--------------

|image50| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialElementaryRotationalToTranslational
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model to transform rotational into translational motion**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslationalD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational

   Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational

Information
~~~~~~~~~~~

::

This is a 1-dim. rotational component with

-  one rotational flange,
-  one rotational support/housing,
-  one translational flange, and
-  one translatinal support/housing

This model is used to build up elementary components of a drive train
transforming rotational into translational motion with equations in the
text layer.

If *useSupportR=true*, the rotational support connector is conditionally
enabled and needs to be connected.

If *useSupportR=false*, the rotational support connector is
conditionally disabled and instead the rotational part is internally
fixed to ground.

If *useSupportT=true*, the translational support connector is
conditionally enabled and needs to be connected.

If *useSupportT=false*, the translational support connector is
conditionally disabled and instead the translational part is internally
fixed to ground.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational>`_
(Partial model to transform rotational into translational motion).

Parameters
~~~~~~~~~~

+-----------+---------------+-----------+----------------------------------------------------------------------------------+
| Type      | Name          | Default   | Description                                                                      |
+===========+===============+===========+==================================================================================+
| Boolean   | useSupportR   | false     | = true, if rotational support flange enabled, otherwise implicitly grounded      |
+-----------+---------------+-----------+----------------------------------------------------------------------------------+
| Boolean   | useSupportT   | false     | = true, if translational support flange enabled, otherwise implicitly grounded   |
+-----------+---------------+-----------+----------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+
| Type                                                                                                                   | Name       | Description                                  |
+========================================================================================================================+============+==============================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_         | flangeR    | Flange of rotational shaft                   |
+------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flangeT    | Flange of translational rod                  |
+------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_            | supportR   | Rotational support/housing of component      |
+------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | supportT   | Translational support/housing of component   |
+------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialElementaryRotationalToTranslational 
      "Partial model to transform rotational into translational motion"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational;
    end PartialElementaryRotationalToTranslational;

--------------

|image51| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialForce
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model of a force acting at the flange (accelerates the
flange)**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialForceD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialForce

   Modelica.Mechanics.Translational.Interfaces.PartialForce

Information
~~~~~~~~~~~

::

Partial model of force that accelerates the flange.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected.
 If *useSupport=false*, the support connector is conditionally disabled
and instead the component is internally fixed to ground.

::

Extends from
`PartialElementaryOneFlangeAndSupport2 <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2>`_
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

    partial model PartialForce 
      "Partial model of a force acting at the flange (accelerates the flange)"
      extends PartialElementaryOneFlangeAndSupport2;
      Modelica.SIunits.Force f = flange.f 
        "Accelerating force acting at flange (= flange.f)";
    end PartialForce;

--------------

|image52| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialAbsoluteSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Device to measure a single absolute flange variable**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor

   Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor

Information
~~~~~~~~~~~

::

This is the superclass of a 1D translational component with one flange
and one output signal in order to measure an absolute kinematic quantity
in the flange and to provide the measured signal as output signal for
further processing with the Modelica.Blocks blocks.

::

Extends from
`Modelica.Icons.TranslationalSensor <Modelica_Icons.html#Modelica.Icons.TranslationalSensor>`_
(Icon representing a linear measurement device).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name     | Description                                                                              |
+========================================================================================================================+==========+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange   | Flange to be measured (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialAbsoluteSensor 
      "Device to measure a single absolute flange variable"

      extends Modelica.Icons.TranslationalSensor;

      Interfaces.Flange_a flange 
        "Flange to be measured (flange axis directed in to cut plane, e. g. from left to right)";
        

    equation 
      0 = flange.f;
    end PartialAbsoluteSensor;

--------------

|image53| `Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialRelativeSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Device to measure a single relative variable between two flanges**

.. figure:: Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor

   Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor

Information
~~~~~~~~~~~

::

This is a superclass for 1D translational components with two rigidly
connected flanges and one output signal in order to measure relative
kinematic quantities between the two flanges or the cut-force in the
flange and to provide the measured signal as output signal for further
processing with the Modelica.Blocks blocks.

::

Extends from
`Modelica.Icons.TranslationalSensor <Modelica_Icons.html#Modelica.Icons.TranslationalSensor>`_
(Icon representing a linear measurement device).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialRelativeSensor 
      "Device to measure a single relative variable between two flanges"

      extends Modelica.Icons.TranslationalSensor;

      Interfaces.Flange_a flange_a 
        "(left) driving flange (flange axis directed in to cut plane, e. g. from left to right)";
      Interfaces.Flange_b flange_b 
        "(right) driven flange (flange axis directed out of cut plane)";

    equation 
      0 = flange_a.f + flange_b.f;
    end PartialRelativeSensor;

--------------

`Modelica.Mechanics.Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_.PartialFriction
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model of Coulomb friction elements**

Information
~~~~~~~~~~~

::

Basic model for Coulomb friction that models the stuck phase in a
reliable way.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+
| Type                                                            | Name       | Default   | Description                                                  |
+=================================================================+============+===========+==============================================================+
| **Advanced**                                                    |
+-----------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_small   | 1e-3      | Relative velocity near to zero (see model info text) [m/s]   |
+-----------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialFriction 
      "Base model of Coulomb friction elements"

    //extends Translational.Interfaces.PartialRigid;
      parameter SI.Velocity v_small=1e-3 
        "Relative velocity near to zero (see model info text)";
    // Equations to define the following variables have to be defined in subclasses
      SI.Velocity v_relfric "Relative velocity between frictional surfaces";
      SI.Acceleration a_relfric "Relative acceleration between frictional surfaces";
    //SI.Force f "Friction force (positive, if directed in opposite direction of v_rel)";
      SI.Force f0 "Friction force for v=0 and forward sliding";
      SI.Force f0_max "Maximum friction force for v=0 and locked";
      Boolean free "true, if frictional element is not active";
    // Equations to define the following variables are given in this class
      Real sa(unit="1") 
        "Path parameter of friction characteristic f = f(a_relfric)";
      Boolean startForward(start=false, fixed=true) 
        "true, if v_rel=0 and start of forward sliding";
      Boolean startBackward(start=false, fixed=true) 
        "true, if v_rel=0 and start of backward sliding";
      Boolean locked(start=false) "true, if v_rel=0 and not sliding";
      constant Integer Unknown=3 "Value of mode is not known";
      constant Integer Free=2 "Element is not active";
      constant Integer Forward=1 "v_rel > 0 (forward sliding)";
      constant Integer Stuck=0 
        "v_rel = 0 (forward sliding, locked or backward sliding)";
      constant Integer Backward=-1 "v_rel < 0 (backward sliding)";
      Integer mode(
        final min=Backward,
        final max=Unknown,
        start=Unknown, fixed=true);
    protected 
      constant SI.Acceleration unitAcceleration = 1;
      constant SI.Force unitForce = 1;
    equation 
    /* Friction characteristic
       (locked is introduced to help the Modelica translator determining
       the different structural configurations,
       if for each configuration special code shall be generated)
    */
      startForward = pre(mode) == Stuck and (sa > f0_max/unitForce or pre(startForward)
         and sa > f0/unitForce) or pre(mode) == Backward and v_relfric > v_small or 
        initial() and (v_relfric > 0);
      startBackward = pre(mode) == Stuck and (sa < -f0_max/unitForce or pre(
        startBackward) and sa < -f0/unitForce) or pre(mode) == Forward and v_relfric <
        -v_small or initial() and (v_relfric < 0);
      locked = not free and not (pre(mode) == Forward or startForward or pre(
        mode) == Backward or startBackward);

      a_relfric/unitAcceleration = if locked then               0 else 
                                   if free then                 sa else 
                                   if startForward then         sa - f0_max/unitForce else 
                                   if startBackward then        sa + f0_max/unitForce else 
                                   if pre(mode) == Forward then sa - f0_max/unitForce else 
                                                                sa + f0_max/unitForce;

    /* Friction torque has to be defined in a subclass. Example for a clutch:
       f = if locked then sa else
           if free then   0 else
           cgeo*fn*(if startForward then          Math.tempInterpol1( v_relfric, mue_pos, 2) else
                    if startBackward then        -Math.tempInterpol1(-v_relfric, mue_pos, 2) else
                    if pre(mode) == Forward then  Math.tempInterpol1( v_relfric, mue_pos, 2) else
                                                 -Math.tempInterpol1(-v_relfric, mue_pos, 2));
    */
    // finite state machine to determine configuration
      mode = if free then Free else 
        (if (pre(mode) == Forward  or pre(mode) == Free or startForward)  and v_relfric > 0 then 
           Forward else 
         if (pre(mode) == Backward or pre(mode) == Free or startBackward) and v_relfric < 0 then 
           Backward else 
           Stuck);
    end PartialFriction;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:52
2010.

.. |Modelica.Mechanics.Translational.Interfaces.Flange\_a| image:: Modelica.Mechanics.Translational.Interfaces.Flange_aS.png
.. |Modelica.Mechanics.Translational.Interfaces.Flange\_b| image:: Modelica.Mechanics.Translational.Interfaces.Flange_bS.png
.. |Modelica.Mechanics.Translational.Interfaces.Support| image:: Modelica.Mechanics.Translational.Interfaces.SupportS.png
.. |Modelica.Mechanics.Translational.Interfaces.InternalSupport| image:: Modelica.Mechanics.Translational.Interfaces.InternalSupportS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges| image:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport| image:: Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupportS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport| image:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupportS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialRigid| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialCompliant| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupportS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2S.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupportS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2S.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslationalS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialForce| image:: Modelica.Mechanics.Translational.Interfaces.PartialForceS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor| image:: Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensorS.png
.. |Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor| image:: Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensorS.png
.. |image18| image:: Modelica.Mechanics.Translational.Interfaces.Flange_aS.png
.. |image19| image:: Modelica.Mechanics.Translational.Interfaces.Flange_bS.png
.. |image20| image:: Modelica.Mechanics.Translational.Interfaces.SupportS.png
.. |image21| image:: Modelica.Mechanics.Translational.Interfaces.InternalSupportS.png
.. |image22| image:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesS.png
.. |image23| image:: Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupportS.png
.. |image24| image:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupportS.png
.. |image25| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidS.png
.. |image26| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidS.png
.. |image27| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidS.png
.. |image28| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupportS.png
.. |image29| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2S.png
.. |image30| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupportS.png
.. |image31| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2S.png
.. |image32| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslationalS.png
.. |image33| image:: Modelica.Mechanics.Translational.Interfaces.PartialForceS.png
.. |image34| image:: Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensorS.png
.. |image35| image:: Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensorS.png
.. |image36| image:: Modelica.Mechanics.Translational.Interfaces.Flange_aI.png
.. |image37| image:: Modelica.Mechanics.Translational.Interfaces.Flange_bI.png
.. |image38| image:: Modelica.Mechanics.Translational.Interfaces.SupportI.png
.. |image39| image:: Modelica.Mechanics.Translational.Interfaces.InternalSupportI.png
.. |image40| image:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesI.png
.. |image41| image:: Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupportI.png
.. |image42| image:: Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupportI.png
.. |image43| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidI.png
.. |image44| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidI.png
.. |image45| image:: Modelica.Mechanics.Translational.Interfaces.PartialRigidI.png
.. |image46| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupportI.png
.. |image47| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2I.png
.. |image48| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupportI.png
.. |image49| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2I.png
.. |image50| image:: Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslationalI.png
.. |image51| image:: Modelica.Mechanics.Translational.Interfaces.PartialForceI.png
.. |image52| image:: Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensorI.png
.. |image53| image:: Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensorI.png
