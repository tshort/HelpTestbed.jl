======================================
Modelica.Electrical.Spice3.Additionals
======================================

`Modelica.Electrical.Spice3 <Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3>`_.Additionals
------------------------------------------------------------------------------------------------------

**Some useful additional models, e.g., from SPICE2 the polynomial
sources**

Information
~~~~~~~~~~~

::

This package contains additional useful models which do not belong to
the original SPICE3 model set.

::

Package Content
~~~~~~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| Name                                                                                                                                                                    | Description                                                 |
+=========================================================================================================================================================================+=============================================================+
| |image5| `poly <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals.poly>`_                                                              | POLY function of SPICE2                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image6| `E\_VCV\_POLY <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals.E_VCV_POLY>`_                                                | Polynomial voltage controlled voltage source, like SPICE2   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image7| `G\_VCC\_POLY <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals.G_VCC_POLY>`_                                                | Polynomial voltage controlled current source, like SPICE2   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image8| `H\_CCV\_POLY <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals.H_CCV_POLY>`_                                                | Polynomial current controlled voltage source, like SPICE2   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image9| `F\_CCC\_POLY <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals.F_CCC_POLY>`_                                                | Polynomial current controlled current source, like SPICE2   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+

--------------

`Modelica.Electrical.Spice3.Additionals <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals>`_.poly
-----------------------------------------------------------------------------------------------------------------------------------

**POLY function of SPICE2**

Information
~~~~~~~~~~~

::

Function needed for polynomial interpolation of POLY controlled sources:

-  E\_VCV\_POLY
-  G\_VCC\_POLY
-  H\_CCV\_POLY
-  F\_CCC\_POLY

::

Inputs
~~~~~~

+--------+--------+-----------+----------------+
| Type   | Name   | Default   | Description    |
+========+========+===========+================+
| Real   | s[:]   |           | Variables      |
+--------+--------+-----------+----------------+
| Real   | a[:]   |           | Coefficients   |
+--------+--------+-----------+----------------+

Outputs
~~~~~~~

+--------+--------+-----------------------+
| Type   | Name   | Description           |
+========+========+=======================+
| Real   | v      | Value of polynomial   |
+--------+--------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function poly "POLY function of SPICE2"
      input Real s[:] "Variables";
      input Real a[:] "Coefficients";
      output Real v "Value of polynomial";
    protected 
      Integer n "number of polynomial variables, like POLY(n)";
      Integer na "number of polynomial coefficients, like POLY(n)";
      Integer ia "state of the usage of a";
    algorithm 
      n := size(s,1);
      na := size(a,1);
      assert(n > 0,"poly: number of variables zero");
      assert(na > 0,"poly: number of coefficients zero");
      ia := 0;

    // case one coefficient
      if (na == 1) then
        v := a[1] * s[1];
        return;
      end if;

    // absolute term
      v := a[1];
      ia := 1;

    // linear terms
      for i1 in 1:n loop
        ia := ia + 1;
        if ia > na then
                        return;
                                end if;
        v := v + a[ia] * s[i1];
      end for;

    // quadratic terms
      for i1 in 1:n loop
        for i2 in i1:n loop
          ia := ia + 1;
          if ia > na then
             return;
          end if;
          v := v + a[ia] * s[i1] * s[i2];
        end for;
      end for;

    // cubic terms
      for i1 in 1:n loop
        for i2 in i1:n loop
          for i3 in i2:n loop
            ia := ia + 1;
            if ia > na then
               return;
            end if;
            v := v + a[ia] * s[i1] * s[i2] * s[i3];
          end for;
        end for;
      end for;

    // fourth potential terms
      for i1 in 1:n loop
        for i2 in i1:n loop
          for i3 in i2:n loop
            for i4 in i3:n loop
              ia := ia + 1;
              if ia > na then
                return;
              end if;
              v := v + a[ia] * s[i1] * s[i2] * s[i3] * s[i4];
            end for;
          end for;
        end for;
      end for;

     // fifth potential terms
      for i1 in 1:n loop
        for i2 in i1:n loop
          for i3 in i2:n loop
            for i4 in i3:n loop
              for i5 in i4:n loop
                ia := ia + 1;
                if ia > na then
                  return;
                end if;
                v := v + a[ia] * s[i1] * s[i2] * s[i3] * s[i4] * s[i5];
              end for;
            end for;
          end for;
        end for;
      end for;

      v := na;
    end poly;

--------------

|image10| `Modelica.Electrical.Spice3.Additionals <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals>`_.E\_VCV\_POLY
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Polynomial voltage controlled voltage source, like SPICE2**

.. figure:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Additionals.E\_VCV\_POLY

   Modelica.Electrical.Spice3.Additionals.E\_VCV\_POLY

Information
~~~~~~~~~~~

::

The polynomial source is a SPICE2 model, which is also known in other
SPICE derivates.

Nonlinear voltage controlled voltage source. The "right" port voltage
between pin p2 and n2 (=p2.v - n2.v) is controlled by the "left" port
vector of voltages at the pin vector pc[:] via

::

        p2.v - n2.v = f(pc[1].v - pc[2].v, pc[3].v - pc[4].v,...)

The controlling port (left) current vector is zero.

f is a polynomial in N variables s1...sN of the following form with M+1
coefficients a0, a1, a2,...aM.

::

    f = a0 +
        a1s1 + a2s2 + ... + aNsN +
        a(N+1)s1² + a(N+2)s1s2 + ... + a(.)s1sN +
        a(.)s2² + a(.)s2s3 + ... + a(.)s2sN +
        a(.)s3² + s3s4 + ... + a(.)s4sN +
        ... +
        a(.)sN² +
        a(.)s1³ + a(.)s1²s2 + a(.)s1²s3 + ... + a(.)s1²sN +
        a(.)s1s2² + a(.)s1s2s3 + ... + a(.)s1s2sN +
        ... +
        a(.)sN³ + ... 

The Coefficients a(.) are counted in this order. Reaching M, the
particular sum is canceled.

In connection with the VCV, s1...sN are the voltages of the controlling
side: s1=pc[1].v - pc[2].v, s2=pc[3].v - pc[4].v, s3=...

The corresponding SPICE description of the VCV polynomial source is the
following:

::

        Ename A1 A2 POLY(N) E11 E21 ... E1N E2N P0 P1...

where Ename is the name of the instance, A1 and A2 are the nodes between
them the controlled voltage is gripped,

N is the number of the controlling voltages, E11 E12 ... E1N E2N are
pairs of nodes between them the controlling voltages

are gripped, and P0, P1... are the coefficients that are called a0, a1,
... aM in the description of the polynomial f above.

To describe the SPICE line in Modelica, the following explanation would
be useful:

::

    Ename -> E_VCV_POLY name
    A1, A2 -> pins name.p2, name.p1
    N -> parameter N
    E11 -> name.pc[2]
    E12 -> name.pc[1]
    ...
    E1N -> name.pc[N]
    E2N -> name.pc[N-1]
    P0, P1 -> polynomial coefficients name.coeff(coeff={P0,P1,...})

::

Parameters
~~~~~~~~~~

+-----------+------------+-----------+----------------------------------+
| Type      | Name       | Default   | Description                      |
+===========+============+===========+==================================+
| Integer   | N          | 1         | Number of controlling voltages   |
+-----------+------------+-----------+----------------------------------+
| Real      | coeff[:]   | {1}       | Coefficients of polynomial       |
+-----------+------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------------------------------------------------------+
| Type                                                                                                            | Name       | Description                                                                                                 |
+=================================================================================================================+============+=============================================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p          | Positive pin of the controlled (normally right) port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n          | Negative pin of the controlled (normally right) port                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pc[2\*N]   | Pin vector of controlling pins (normally left)                                                              |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model E_VCV_POLY 
      "Polynomial voltage controlled voltage source, like SPICE2"

      parameter Integer N(final min=1) = 1 "Number of controlling voltages";
      parameter Real coeff[:] = {1} "Coefficients of polynomial";
      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive pin of the controlled (normally right) port (potential p2.v > n2.v for positive voltage drop v2)";
      Modelica.Electrical.Analog.Interfaces.NegativePin n 
        "Negative pin of the controlled (normally right) port";

      Modelica.Electrical.Analog.Interfaces.PositivePin pc[2*N] 
        "Pin vector of controlling pins (normally left)";

      Real control[N];
    equation 
      p.i + n.i = 0;
      for i in 1:2*N loop
        pc[i].i = 0;
      end for;
      for i in 1:N loop
        control[i] = pc[2*i-1].v - pc[2*i].v;
      end for;
      p.v - n.v = poly(control, coeff);
    end E_VCV_POLY;

--------------

|image11| `Modelica.Electrical.Spice3.Additionals <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals>`_.G\_VCC\_POLY
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Polynomial voltage controlled current source, like SPICE2**

.. figure:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Additionals.G\_VCC\_POLY

   Modelica.Electrical.Spice3.Additionals.G\_VCC\_POLY

Information
~~~~~~~~~~~

::

The polynomial source is a SPICE2 model, which is also known in other
SPICE derivates.

Nonlinear voltage controlled current source. The right port current at
pin p2 (=p2.i) is controlled by the left port vector of voltages at the
pin vector pc[:] via

::

        p2.i = f(pc[1].v - pc[2].v, pc[3].v - pc[4].v,...)

The controlling port (left) current vector is zero.

f is a polynomial in N variables s1...sN of the following form with M+1
coefficients a0, a1, a2,...aM.

::

    f = a0 +
        a1s1 + a2s2 + ... + aNsN +
        a(N+1)s1² + a(N+2)s1s2 + ... + a(.)s1sN +
        a(.)s2² + a(.)s2s3 + ... + a(.)s2sN +
        a(.)s3² + s3s4 + ... + a(.)s4sN +
        ... +
        a(.)sN² +
        a(.)s1³ + a(.)s1²s2 + a(.)s1²s3 + ... + a(.)s1²sN +
        a(.)s1s2² + a(.)s1s2s3 + ... + a(.)s1s2sN +
        ... +
        a(.)sN³ + ... 

The Coefficients a(.) are counted in this order. Reaching M, the
particular sum is canceled.

In connection with the VCC, s1...sN are the voltages of the controlling
side: s1=pc[1].v - pc[2].v, s2=pc[3].v - pc[4].v, s3=...

The corresponding SPICE description of the VCC polynomial source is the
following:

::

        Gname A1 A2 POLY(N) E11 E21 ... E1N E2N P0 P1...

where Gname is the name of the instance, A1 and A2 are the nodes between
them the current source is arranged, whose current is calculated,

N is the number of the controlling voltages, E11 E12 ... E1N E2N are
pairs of nodes between them the controlling voltages

are gripped, and P0, P1... are the coefficients that are called a0, a1,
... aM in the description of the polynomial f above.

To describe the SPICE line in Modelica, the following explanation would
be useful:

::

    Gname -> G_VCC_POLY name
    A1, A2 -> pins name.p2, name.p1
    N -> parameter N
    E11 -> name.pc[2]
    E12 -> name.pc[1]
    ...
    E1N -> name.pc[N]
    E2N -> name.pc[N-1]
    P0, P1 -> polynomial coefficients name.coeff(coeff={P0,P1,...}) 

::

Parameters
~~~~~~~~~~

+-----------+------------+-----------+----------------------------------+
| Type      | Name       | Default   | Description                      |
+===========+============+===========+==================================+
| Integer   | N          | 1         | Number of controlling voltages   |
+-----------+------------+-----------+----------------------------------+
| Real      | coeff[:]   | {1}       | Coefficients of polynomial       |
+-----------+------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name       | Description                                                                           |
+=================================================================================================================+============+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p          | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n          | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pc[2\*N]   | Pin vector of controlling pins                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model G_VCC_POLY 
      "Polynomial voltage controlled current source, like SPICE2"

      parameter Integer N(final min=1) = 1 "Number of controlling voltages";
      parameter Real coeff[:] = {1} "Coefficients of polynomial";
      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)";
      Modelica.Electrical.Analog.Interfaces.NegativePin n 
        "Negative pin of the right port";

      Modelica.Electrical.Analog.Interfaces.PositivePin pc[2*N] 
        "Pin vector of controlling pins";

      Real control[N];
    equation 
      p.i + n.i = 0;
      for i in 1:2*N loop
        pc[i].i = 0;
      end for;
      for i in 1:N loop
        control[i] = pc[2*i-1].v - pc[2*i].v;
      end for;
      p.i = poly(control, coeff);
    end G_VCC_POLY;

--------------

|image12| `Modelica.Electrical.Spice3.Additionals <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals>`_.H\_CCV\_POLY
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Polynomial current controlled voltage source, like SPICE2**

.. figure:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Additionals.H\_CCV\_POLY

   Modelica.Electrical.Spice3.Additionals.H\_CCV\_POLY

Information
~~~~~~~~~~~

::

The polynomial source is a SPICE2 model, which is also known in other
SPICE derivates.

Nonlinear current controlled voltage source. The right port voltage
between pin p2 and n2 (=p2.v - n2.v) is controlled by the left port
vector of currents at pin pc (=pc.i) via

::

        p2.v - n2.v = f(pc[2].i, pc[4].i,...)

The controlling port (left) current vector is zero.

The corresponding SPICE description

::

        Hname A1 A2 POLY(N) V1...VN P0 P1...

f is a polynomial in N variables s1...sN of the following form with M+1
coefficients a0, a1, a2,...aM.

::

    f = a0 +
        a1s1 + a2s2 + ... + aNsN +
        a(N+1)s1² + a(N+2)s1s2 + ... + a(.)s1sN +
        a(.)s2² + a(.)s2s3 + ... + a(.)s2sN +
        a(.)s3² + s3s4 + ... + a(.)s4sN +
        ... +
        a(.)sN² +
        a(.)s1³ + a(.)s1²s2 + a(.)s1²s3 + ... + a(.)s1²sN +
        a(.)s1s2² + a(.)s1s2s3 + ... + a(.)s1s2sN +
        ... +
        a(.)sN³ + ... 

The Coefficients a(.) are counted in this order. Reaching M, the
particular sum is canceled.

In Modelica the controlling pins have to be connected to the CCV in that
way, that the required currents flow through the according pins of the
CCV:

s1 = pc[2].i, s2 = pc[4].i, s3 = pc[6].i,...

The pairs pc[1].i and pc[2].i, pc[3].i and pc[4].i...form ports with
pc[2].i + pc[1].i = 0, pc[4].i + pc[3].i = 0, ...

The corresponding SPICE description of the CCV polynomial source is the
following:

::

        Hname A1 A2 POLY(N) V1...VN P0 P1...

where Hname is the name of the instance, A1 and A2 are the nodes between
them the controlled voltage is gripped.

N is the number of the controlling currents, V1...VN are the voltage
sources, that are necessary in SPICE to supply the controlling currents,

and P0, P1... are the coefficients that are called a0, a1, ... aM in the
description of the polynomial f above.

To describe the SPICE line in Modelica, the following explanation would
be useful:

::

    Hname -> H_CCV_POLY name
    A1, A2 -> pins name.p2, name.p1
    N -> parameter N

V1 (...VN) is declared in SPICE:

::

       V1 V1+ V1- type of voltage source (constant, pulse, sin...)

In Modelica the currents through V1...VN has to be led throught the CCV.
Therefore V1...VN have to be disconnected and additional nodes

::

       V1_AD...VN_AD

have to be added. In the case, that the SPICE source is

::

       V1 n+ n- 0,

this source can be eliminated.

::

    V1_AD -> name.pc[2]
    V1- -> name.pc[1]
    ...
    VN_AD -> name.pc[N]
    VN- -> name.pc[N-1]
    P0, P1 -> polynomial coefficients name.coeff(coeff={P0,P1,...})

::

Parameters
~~~~~~~~~~

+-----------+------------+-----------+----------------------------------+
| Type      | Name       | Default   | Description                      |
+===========+============+===========+==================================+
| Integer   | N          | 1         | Number of controlling voltages   |
+-----------+------------+-----------+----------------------------------+
| Real      | coeff[:]   | {1}       | Coefficients of polynomial       |
+-----------+------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name       | Description                                                                           |
+=================================================================================================================+============+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p          | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n          | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pc[2\*N]   | Pin vector of controlling pins                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model H_CCV_POLY 
      "Polynomial current controlled voltage source, like SPICE2"

      parameter Integer N(final min=1) = 1 "Number of controlling voltages";
      parameter Real coeff[:] = {1} "Coefficients of polynomial";
      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)";
      Modelica.Electrical.Analog.Interfaces.NegativePin n 
        "Negative pin of the right port";

      Modelica.Electrical.Analog.Interfaces.PositivePin pc[2*N] 
        "Pin vector of controlling pins";

      Real control[N];
    equation 
      p.i + n.i = 0;
      for i in 1:N loop
        pc[2*i-1].i + pc[2*i].i = 0;
        pc[2*i-1].v - pc[2*i].v = 0;
      end for;
      for i in 1:N loop
        control[i] = pc[2*i-1].i;
      end for;
      p.v - n.v = poly(control, coeff);
    end H_CCV_POLY;

--------------

|image13| `Modelica.Electrical.Spice3.Additionals <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals>`_.F\_CCC\_POLY
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Polynomial current controlled current source, like SPICE2**

.. figure:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Additionals.F\_CCC\_POLY

   Modelica.Electrical.Spice3.Additionals.F\_CCC\_POLY

Information
~~~~~~~~~~~

::

The polynomial source is a SPICE2 model, which is also known in other
SPICE derivates.

Nonlinear current controlled current source. The "right" port current at
pin p2 (=p2.i) is controlled by the "left" port vector of currents at
pin pc[:] via

::

        p2.i = f(pc[2].i, pc[4].i,...)

The controlling port (left) voltage is zero for each pair: pc[2].v -
pc[1].v = 0, ...

Furthermore the currents of each pair are pc[2].i + pc[1].i = 0, ...

f is a polynomial in N variables s1...sN of the following form with M+1
coefficients a0, a1, a2,...aM.

::

    f = a0 +
        a1s1 + a2s2 + ... + aNsN +
        a(N+1)s1² + a(N+2)s1s2 + ... + a(.)s1sN +
        a(.)s2² + a(.)s2s3 + ... + a(.)s2sN +
        a(.)s3² + s3s4 + ... + a(.)s4sN +
        ... +
        a(.)sN² +
        a(.)s1³ + a(.)s1²s2 + a(.)s1²s3 + ... + a(.)s1²sN +
        a(.)s1s2² + a(.)s1s2s3 + ... + a(.)s1s2sN +
        ... +
        a(.)sN³ + ... 

The Coefficients a(.) are counted in this order. Reaching M, the
particular sum is canceled.

In Modelica the controlling pins have to be connected to the CCC in that
way, that the required currents flow through the according pins of the
CCC:

s1=pc[2].i, s2=pc[4].i, s3=pc[6].i,...

The pairs pc[1].i and pc[2].i, pc[3].i and pc[4].i...form ports with
pc[2].i + pc[1].i = 0, pc[4].i + pc[3].i = 0, ...

The corresponding SPICE description of the CCC polynomial source is the
following:

::

        Fname A1 A2 POLY(N) V1...VN P0 P1...

where Fname is the name of the instance, A1 and A2 are the nodes between
them the current source is arranged, whose current is calculated.

N is the number of the controlling currents, V1...VN are the voltage
sources, that are necessary in SPICE to supply the controlling currents,

and P0, P1... are the coefficients that are called a0, a1, ... aM in the
description of the polynomial f above.

To describe the SPICE line in Modelica, the following explanation would
be useful:

::

    Fname -> F_CCC_POLY name
    A1, A2 -> pins name.p2, name.p1
    N -> parameter N

V1 (...VN) is declared in SPICE:

::

       V1 V1+ V1- type of voltage source (constant, pulse, sin...)

In Modelica the currents through V1...VN has to be led throught the CCC.
Therefore V1...VN have to be disconnected and additional nodes

::

       V1_AD...VN_AD

have to be added. In the case, that the SPICE source is

::

       V1 n+ n- 0,

this source can be eliminated.

::

    V1_AD -> name.pc[2]
    V1- -> name.pc[1]
    ...
    VN_AD -> name.pc[N]
    VN- -> name.pc[N-1]
    P0, P1 -> polynomial coefficients name.coeff(coeff={P0,P1,...})

::

Parameters
~~~~~~~~~~

+-----------+------------+-----------+----------------------------------+
| Type      | Name       | Default   | Description                      |
+===========+============+===========+==================================+
| Integer   | N          | 1         | Number of controlling voltages   |
+-----------+------------+-----------+----------------------------------+
| Real      | coeff[:]   | {1}       | Coefficients of polynomial       |
+-----------+------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name       | Description                                                                           |
+=================================================================================================================+============+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p          | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n          | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pc[2\*N]   | Pin vector of controlling pins                                                        |
+-----------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model F_CCC_POLY 
      "Polynomial current controlled current source, like SPICE2"

      parameter Integer N(final min=1) = 1 "Number of controlling voltages";
      parameter Real coeff[:] = {1} "Coefficients of polynomial";
      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)";
      Modelica.Electrical.Analog.Interfaces.NegativePin n 
        "Negative pin of the right port";

      Modelica.Electrical.Analog.Interfaces.PositivePin pc[2*N] 
        "Pin vector of controlling pins";

      Real control[N];
    equation 
      p.i + n.i = 0;
      for i in 1:N loop
        pc[2*i-1].i + pc[2*i].i = 0;
        pc[2*i-1].v - pc[2*i].v = 0;
      end for;
      for i in 1:N loop
        control[i] = pc[2*i-1].i;
      end for;
      p.i = poly(control, coeff);
    end F_CCC_POLY;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:46
2010.

.. |Modelica.Electrical.Spice3.Additionals.poly| image:: Modelica.Electrical.Spice3.Additionals.polyS.png
.. |Modelica.Electrical.Spice3.Additionals.E\_VCV\_POLY| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |Modelica.Electrical.Spice3.Additionals.G\_VCC\_POLY| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |Modelica.Electrical.Spice3.Additionals.H\_CCV\_POLY| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |Modelica.Electrical.Spice3.Additionals.F\_CCC\_POLY| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |image5| image:: Modelica.Electrical.Spice3.Additionals.polyS.png
.. |image6| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |image7| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |image8| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |image9| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYS.png
.. |image10| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYI.png
.. |image11| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYI.png
.. |image12| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYI.png
.. |image13| image:: Modelica.Electrical.Spice3.Additionals.E_VCV_POLYI.png
