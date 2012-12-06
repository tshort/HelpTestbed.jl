================================
Modelica.Electrical.Analog.Lines
================================

`Modelica.Electrical.Analog <Modelica_Electrical_Analog.html#Modelica.Electrical.Analog>`_.Lines
------------------------------------------------------------------------------------------------

**Lossy and lossless segmented transmission lines, and LC distributed
line models**

Information
~~~~~~~~~~~

::

This package contains lossy and lossless segmented transmission lines,
and LC distributed line models. The line models do not yet possess a
conditional heating port.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| Name                                                                                                                                       | Description                                                                                         |
+============================================================================================================================================+=====================================================================================================+
| |image6| `OLine <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.OLine>`_                                           | Lossy Transmission Line                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image7| `M\_OLine <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.M_OLine>`_                                      | Multiple OLine                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image8| `ULine <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.ULine>`_                                           | Lossy RC Line                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image9| `TLine1 <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.TLine1>`_                                         | Lossless transmission line with characteristic impedance Z0 and transmission delay TD               |
+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image10| `TLine2 <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.TLine2>`_                                        | Lossless transmission line with characteristic impedance Z0, frequency F and normalized length NL   |
+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image11| `TLine3 <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.TLine3>`_                                        | Lossless transmission line with characteristic impedance Z0 and frequency F                         |
+--------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+

--------------

|image12| `Modelica.Electrical.Analog.Lines <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines>`_.OLine
----------------------------------------------------------------------------------------------------------------------------

**Lossy Transmission Line**

.. figure:: Modelica.Electrical.Analog.Lines.OLineD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.OLine

   Modelica.Electrical.Analog.Lines.OLine

Information
~~~~~~~~~~~

::

Like in the picture below, the lossy transmission line OLine is a
single-conductor lossy transmission line which consists of segments of
lumped resistors and inductors in series and conductord and capacitors
that are connected with the reference pin p3. The precision of the model
depends on the number N of lumped segments.

To get a symmetric line model, the first resistor and inductor are cut
into two parts (R1 and R\_Nplus1, L1 and L\_Nplus1). These two new
resistors and inductors have the half of the resistance respectively
inductance the original resistor respectively inductor.

.. figure:: ../Resources/Images/Electrical/Analog/OLine.png
   :align: center
   :alt: 

The capacitances are calculated with: C=c\*length/N.
 The conductances are calculated with: G=g\*length/N.
 The resistances are calculated with : R=r\*length/(N+1).
 The inductances are calculated with : L=l\*length/(N+1).
 For all capacitors, conductors, resistors and inductors the values of
each segment are the same except of the first and last resistor and
inductor, that only have the half of the above calculated value of the
rest.
Note, this is different to the lumped line model of SPICE.

**References:**
    Johnson, B.; Quarles, T.; Newton, A. R.; Pederson, D. O.;
    Sangiovanni-Vincentelli, A.: SPICE3 Version 3e User';s Manual (April
    1, 1991). Department of Electrical Engineering and Computer
    Sciences, University of California, Berkley p. 12, p. 106 - 107

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Type                                                        | Name     | Default   | Description                    |
+=============================================================+==========+===========+================================+
| Real                                                        | r        |           | Resistance per meter [Ohm/m]   |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Real                                                        | l        |           | Inductance per meter [H/m]     |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Real                                                        | g        |           | Conductance per meter [S/m]    |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Real                                                        | c        |           | Capacitance per meter [F/m]    |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | length   |           | Length of line [m]             |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Integer                                                     | N        |           | Number of lumped segments      |
+-------------------------------------------------------------+----------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                            | Name   | Description   |
+=================================================================================================+========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p1     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p2     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p3     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OLine "Lossy Transmission Line"
      //extends Interfaces.ThreePol;
      Interfaces.Pin p1;
      Interfaces.Pin p2;
      Interfaces.Pin p3;
      SI.Voltage v13;
      SI.Voltage v23;
      SI.Current i1;
      SI.Current i2;
      parameter Real r(
        final min=Modelica.Constants.small,
        unit="Ohm/m", start=1) "Resistance per meter";
      parameter Real l(
        final min=Modelica.Constants.small,
        unit="H/m", start=1) "Inductance per meter";
      parameter Real g(
        final min=Modelica.Constants.small,
        unit="S/m", start=1) "Conductance per meter";
      parameter Real c(
        final min=Modelica.Constants.small,
        unit="F/m", start=1) "Capacitance per meter";
      parameter SI.Length length(final min=Modelica.Constants.small, start=1) 
        "Length of line";
      parameter Integer N(final min=1, start=1) "Number of lumped segments";
    protected 
      Basic.Resistor R[N + 1](R=fill(r*length/(N + 1), N + 1));
      Basic.Inductor L[N + 1](L=fill(l*length/(N + 1), N + 1));
      Basic.Capacitor C[N](C=fill(c*length/(N), N));
      Basic.Conductor G[N](G=fill(g*length/(N), N));
    equation 
      v13 = p1.v - p3.v;
      v23 = p2.v - p3.v;
      i1 = p1.i;
      i2 = p2.i;
      connect(p1, R[1].p);
      for i in 1:N loop
        connect(R[i].n, L[i].p);
        connect(L[i].n, C[i].p);
        connect(L[i].n, G[i].p);
        connect(C[i].n, p3);
        connect(G[i].n, p3);
        connect(L[i].n, R[i + 1].p);
      end for;
      connect(R[N + 1].n, L[N + 1].p);
      connect(L[N + 1].n, p2);
    end OLine;

--------------

|image13| `Modelica.Electrical.Analog.Lines <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines>`_.M\_OLine
-------------------------------------------------------------------------------------------------------------------------------

**Multiple OLine**

.. figure:: Modelica.Electrical.Analog.Lines.M_OLineD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.M\_OLine

   Modelica.Electrical.Analog.Lines.M\_OLine

Information
~~~~~~~~~~~

::

The M\_OLine is a multi line model which consists of several segements
and several single lines. Each segement consists of resistors and
inductors that are connected in series in each single line, and of
capacitors and conductors both between the lines and to the ground. The
inductors are coupled to each other like in the M\_Inductor model. The
following picture shows the schematic of a segment with four single
lines (lines=4):
 |image14|
 The complete multi line consists of N segments and an auxiliary
segment\_last:

::

    -- segment_1 -- segment_2 -- ... -- segment_N -- segment_last --

In the picture of the segment can be seen, that a single segment is
unsymmetric. Connecting such unsymmetric segments in a series forces
also an unsymmetric multi line. To get a symmetric model which is useful
for coupling and which guaranties the same pin properties, in the
segment\_1 only half valued resistors and inductors are used. The
remaining resistors and inductors are at the other end of the line
within the auxiliary segment\_last. For the example with 4 lines the
schematic of segment\_last is like this:
 |image15|
 The number of the capacitors and conductors depends on the number of
single lines that are used, because each line is connected to every
other line by both a capacitor and a conductor. One line consists of
**at least two segements**. Inside the model M\_OLine the model
*segment* is used. This model represents one segment which is build as
described above. For modelling the inductances and their mutual
couplings the model M\_Transformer is used. To fill the resistance
vector, resistance values as many as lines are needed, e.g., if there
are four lines, four resistances are needed. For example for a
microelectronic line of 0.1m lenght, a sensible resistance-vector would
be R=[4.76e5, 1.72e5, 1.72e5, 1.72e5].

Filling the matrixes of the inductances, capacitances and conductances
is a bit more complicated, because those components occur also between
two lines and not only (like the resistor) in one line. The entries of
the matrices are given by the user in form of a vector. The vector
length dim\_vector\_lgc is calculated by **dim\_vector\_lgc =
lines\*(lines+1)/2**. Inside the model a symmetric inductance matrix, a
symmetric capacitance matrix and a symmetric conductance matrix are
build out of the entries of the vectors given by the user. The way of
building is the same for each matrix, so the approach for filling one of
the matrices will be shown at an example:

The number of lines is assumed to be four. To build the matrix, the
model needs the values from the main diagonal and from the positions
that are below the main diagonal. To get the following matrix
 |Matrix|
 the vector with dim\_vector\_lgc=4\*5/2=10 has to appear in the
following way: vector = [**1**, 0.1, 0.2, 0.4, **2**, 0.3 0.5, **3**,
0.6, **4**]
For the example of a microelectronic line of 0.1m lenght, which is used
as default example for the M\_OLine model, a sensible inductance-matrix
would be
 |L|
 For the example of a microelectronic line of 0.1m lenght, which is used
as default example for the M\_OLine model, a sensible capacitance-matrix
would be:
 |C|
 For the example of a microelectronic line of 0.1m lenght, which is used
as default example for the M\_OLine model, a sensible conductance-matrix
would be:
 |G|

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Type                                                        | Name                  | Default                           | Description                    |
+=============================================================+=======================+===================================+================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | length                | 0.1                               | Length of line [m]             |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Integer                                                     | N                     | 5                                 | Number of lumped segments      |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Integer                                                     | lines                 | 4                                 | Number of lines                |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Real                                                        | r[lines]              | {4.76e5,1.72e5,1.72e5,1.72e5}     | Resistance per meter [Ohm/m]   |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Real                                                        | l[dim\_vector\_lgc]   | {5.98e-7,4.44e-7,4.39e-7,3.9...   | Inductance per meter [H/m]     |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Real                                                        | g[dim\_vector\_lgc]   | {8.05e-6,3.42e-5,2 - 91e-5,1...   | Conductance per meter [S/m]    |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+
| Real                                                        | c[dim\_vector\_lgc]   | {2.38e-11,1.01e-10,8.56e-11,...   | Capacitance per meter [F/m]    |
+-------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                            | Name       | Description    |
+=================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p[lines]   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n[lines]   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model M_OLine "Multiple OLine"

      parameter Modelica.SIunits.Length length(final min=Modelica.Constants.small) = 0.1 
        "Length of line";
      parameter Integer N(final min=1) = 5 "Number of lumped segments";
      parameter Integer lines(final min=2) = 4 "Number of lines";
    protected 
      parameter Integer dim_vector_lgc=div(lines*(lines+1),2);
    public 
      parameter Real r[lines](
        final min=Modelica.Constants.small,
        unit="Ohm/m") = {4.76e5,1.72e5,1.72e5,1.72e5} "Resistance per meter";

      parameter Real l[dim_vector_lgc](
        final min=Modelica.Constants.small,
        unit="H/m") = {5.98e-7,4.44e-7,4.39e-7,3.99e-7,5.81e-7,4.09e-7,4.23e-7,5.96e-7,4.71e-7,
            6.06e-7} "Inductance per meter";

      parameter Real g[dim_vector_lgc](
        final min=Modelica.Constants.small,
        unit="S/m") = {8.05e-6,3.42e-5,2 - 91e-5,1.76e-6,9.16e-6,7.12e-6,2.43e-5,5.93e-6,
            4.19e-5,6.64e-6} "Conductance per meter";

      parameter Real c[dim_vector_lgc](
        final min=Modelica.Constants.small,
        unit="F/m") = {2.38e-11,1.01e-10,8.56e-11,5.09e-12,2.71e-11,2.09e-11,7.16e-11,1.83e-11,
            1.23e-10,2.07e-11} "Capacitance per meter";

    model segment "Multiple line segment model"

      parameter Integer lines(final min=1)=3 "Number of lines";
      parameter Integer dim_vector_lgc=div(lines*(lines+1),2) 
          "Length of the vectors for l, g, c";
      Modelica.Electrical.Analog.Interfaces.PositivePin p[lines] "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n[lines] "Negative pin";

      parameter Real Cl[dim_vector_lgc]=fill(1,dim_vector_lgc) "Capacitance matrix";
      parameter Real Rl[lines]=fill(7,lines) "Resistance matrix";
      parameter Real Ll[dim_vector_lgc]=fill(2,dim_vector_lgc) "Inductance matrix";
      parameter Real Gl[dim_vector_lgc]= fill(1,dim_vector_lgc) 
          "Conductance matrix";

      Modelica.Electrical.Analog.Basic.Capacitor C[dim_vector_lgc](C=Cl);
      Modelica.Electrical.Analog.Basic.Resistor R[lines](R=Rl);
      Modelica.Electrical.Analog.Basic.Conductor G[dim_vector_lgc](G=Gl);
      Modelica.Electrical.Analog.Basic.M_Transformer inductance(N=lines, L=Ll);
      Modelica.Electrical.Analog.Basic.Ground M;

    equation 
      for j in 1:lines-1 loop

        connect(R[j].p,p[j]);
        connect(R[j].n,inductance.p[j]);
        connect(inductance.n[j],n[j]);
        connect(inductance.n[j],C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].p);
        connect(C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].n,M.p);
        connect(inductance.n[j],G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].p);
        connect(G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].n,M.p);

        for i in j+1:lines loop
          connect(inductance.n[j],C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].p);
          connect(C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].n,  inductance.n[i]);
          connect(inductance.n[j],G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].p);
          connect(G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].n,inductance.n[i]);
        end for;
      end for;
        connect(R[lines].p,p[lines]);
        connect(R[lines].n,inductance.p[lines]);
        connect(inductance.n[lines],n[lines]);
        connect(inductance.n[lines],C[dim_vector_lgc].p);
        connect(C[dim_vector_lgc].n,M.p);
        connect(inductance.n[lines],G[dim_vector_lgc].p);
        connect(G[dim_vector_lgc].n,M.p);

    end segment;

    model segment_last "Multiple line last segment model"

      Modelica.Electrical.Analog.Interfaces.PositivePin p[lines] "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n[lines] "Negative pin";
      parameter Integer lines(final min=1)=3 "Number of lines";
      parameter Integer dim_vector_lgc= div(lines*(lines+1),2) 
          "Length of the vectors for l, g, c";
      parameter Real Rl[lines]=fill(1,lines) "Resistance matrix";
      parameter Real Ll[dim_vector_lgc]=fill(1,dim_vector_lgc) "Inductance matrix";
      Modelica.Electrical.Analog.Basic.Resistor R[lines](R=Rl);
      Modelica.Electrical.Analog.Basic.M_Transformer inductance(  N=lines, L=Ll);
      Modelica.Electrical.Analog.Basic.Ground M;

    equation 
      for j in 1:lines-1 loop

        connect(p[j],inductance.p[j]);
        connect(inductance.n[j],R[j].p);
        connect(R[j].n,n[j]);
      end for;
        connect(p[lines],inductance.p[lines]);
        connect(inductance.n[lines],R[lines].p);
        connect(R[lines].n,n[lines]);

    end segment_last;

      segment s[N - 1](
        lines=fill(lines, N - 1),
        dim_vector_lgc=fill(dim_vector_lgc, N - 1),
        Rl=fill(r*length/N, N - 1),
        Ll=fill(l*length/N, N - 1),
        Cl=fill(c*length/N, N - 1),
        Gl=fill(g*length/N, N - 1));
      segment s_first(
        lines=lines,
        dim_vector_lgc=dim_vector_lgc,
        Rl=r*length/(2*N),
        Cl=c*length/(N),
        Ll=l*length/(2*N),
        Gl=g*length/(N));
      segment_last s_last(
        lines=lines,
        Rl=r*length/(2*N),
        Ll=l*length/(2*N));
      Modelica.Electrical.Analog.Interfaces.PositivePin p[lines] "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n[lines] "Negative pin";

    equation 
        connect(p,s_first.p);
        connect(s_first.n,s[1].p);
      for i in 1:N-2 loop
        connect(s[i].n,s[i+1].p);
      end for;
        connect(s[N-1].n,s_last.p);
        connect(s_last.n,n);

    end M_OLine;

--------------

|image20| `Modelica.Electrical.Analog.Lines <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines>`_.ULine
----------------------------------------------------------------------------------------------------------------------------

**Lossy RC Line**

.. figure:: Modelica.Electrical.Analog.Lines.ULineD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.ULine

   Modelica.Electrical.Analog.Lines.ULine

Information
~~~~~~~~~~~

::

As can be seen in the picture below, the lossy RC line ULine is a single
conductor lossy transmission line which consists of segments of lumped
series resistors and capacitors that are connected with the reference
pin p3. The precision of the model depends on the number N of lumped
segments.
To get a symmetric line model, the first resistor is cut into two parts
(R1 and R\_Nplus1). These two new resistors have the half of the
resistance of the original resistor.
 |image21|
 The capacitances are calculated with: C=c\*length/N.
The resistances are calculated with: R=r\*length/(N+1).
For all capacitors and resistors the values of each segment are the same
exept of the first and last resistor, that only has the half of the
above calculated value.
Note, this is different compared with the lumped line model of SPICE.

**References**

Johnson, B.; Quarles, T.; Newton, A. R.; Pederson, D. O.;
Sangiovanni-Vincentelli, A.
    SPICE3 Version 3e User';s Manual (April 1, 1991). Department of
    Electrical Engineering and Computer Sciences, University of
    California, Berkley p. 22, p. 124

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Type                                                        | Name     | Default   | Description                    |
+=============================================================+==========+===========+================================+
| Real                                                        | r        |           | Resistance per meter [Ohm/m]   |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Real                                                        | c        |           | Capacitance per meter [F/m]    |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | length   |           | Length of line [m]             |
+-------------------------------------------------------------+----------+-----------+--------------------------------+
| Integer                                                     | N        |           | Number of lumped segments      |
+-------------------------------------------------------------+----------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                            | Name   | Description   |
+=================================================================================================+========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p1     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p2     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p3     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ULine "Lossy RC Line"
      //extends Interfaces.ThreePol;
      Interfaces.Pin p1;
      Interfaces.Pin p2;
      Interfaces.Pin p3;
      SI.Voltage v13;
      SI.Voltage v23;
      SI.Current i1;
      SI.Current i2;
      parameter Real r(
        final min=Modelica.Constants.small,
        unit="Ohm/m", start=1) "Resistance per meter";
      parameter Real c(
        final min=Modelica.Constants.small,
        unit="F/m", start=1) "Capacitance per meter";
      parameter SI.Length length(final min=Modelica.Constants.small, start=1) 
        "Length of line";
      parameter Integer N(final min=1, start=1) "Number of lumped segments";
    protected 
      Basic.Resistor R[N + 1](R=fill(r*length/(N + 1), N + 1));
      Basic.Capacitor C[N](C=fill(c*length/(N), N));
    equation 
      v13 = p1.v - p3.v;
      v23 = p2.v - p3.v;
      i1 = p1.i;
      i2 = p2.i;
      connect(p1, R[1].p);
      for i in 1:N loop
        connect(R[i].n, R[i + 1].p);
      end for;
      for i in 1:N loop
        connect(R[i].n, C[i].p);
      end for;
      for i in 1:N loop
        connect(C[i].n, p3);
      end for;
      connect(R[N + 1].n, p2);
    end ULine;

--------------

|image22| `Modelica.Electrical.Analog.Lines <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines>`_.TLine1
-----------------------------------------------------------------------------------------------------------------------------

**Lossless transmission line with characteristic impedance Z0 and
transmission delay TD**

.. figure:: Modelica.Electrical.Analog.Lines.TLine1D.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.TLine1

   Modelica.Electrical.Analog.Lines.TLine1

Information
~~~~~~~~~~~

::

Lossless transmission line with characteristic impedance Z0 and
transmission delay TD The lossless transmission line TLine1 is a two
Port. Both port branches consist of a resistor with characteristic
impedance Z0 and a controled voltage source that takes into
consideration the transmission delay TD. For further details see
Branin';s article below. The model parameters can be derived from
inductance and capacitance per length (L'; resp. C';), i. e. Z0 =
sqrt(L';/C';) and TD = sqrt(L';\*C';)\*length\_of\_line. Resistance R';
and conductance C'; per meter are assumed to be zero.

**References:**

Branin Jr., F. H.
    Transient Analysis of Lossless Transmission Lines. Proceedings of
    the IEEE 55(1967), 2012 - 2013
Hoefer, E. E. E.; Nielinger, H.
    SPICE : Analyseprogramm fuer elektronische Schaltungen.
    Springer-Verlag, Berlin, Heidelberg, New York, Tokyo, 1985.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+----------------------------------+
| Type                                                                | Name   | Default   | Description                      |
+=====================================================================+========+===========+==================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | Z0     |           | Characteristic impedance [Ohm]   |
+---------------------------------------------------------------------+--------+-----------+----------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_               | TD     |           | Transmission delay [s]           |
+---------------------------------------------------------------------+--------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TLine1 
      "Lossless transmission line with characteristic impedance Z0 and transmission delay TD"

      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      parameter Modelica.SIunits.Resistance Z0(start=1) "Characteristic impedance";
      parameter Modelica.SIunits.Time TD(start=1) "Transmission delay";
    protected 
      Modelica.SIunits.Voltage er;
      Modelica.SIunits.Voltage es;
    equation 
      assert(Z0 > 0, "Z0 has to be positive");
      assert(TD > 0, "TD has to be positive");
      i1 = (v1 - es)/Z0;
      i2 = (v2 - er)/Z0;
      es = 2*delay(v2, TD) - delay(er, TD);
      er = 2*delay(v1, TD) - delay(es, TD);
    end TLine1;

--------------

|image23| `Modelica.Electrical.Analog.Lines <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines>`_.TLine2
-----------------------------------------------------------------------------------------------------------------------------

**Lossless transmission line with characteristic impedance Z0, frequency
F and normalized length NL**

.. figure:: Modelica.Electrical.Analog.Lines.TLine2D.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.TLine2

   Modelica.Electrical.Analog.Lines.TLine2

Information
~~~~~~~~~~~

::

Lossless transmission line with characteristic impedance Z0, frequency F
and normalized length NL The lossless transmission line TLine2 is a two
Port. Both port branches consist of a resistor with the value of the
characteristic impedance Z0 and a controled voltage source that takes
into consideration the transmission delay. For further details see
Branin';s article below. Resistance R'; and conductance C'; per meter
are assumed to be zero. The characteristic impedance Z0 can be derived
from inductance and capacitance per length (L'; resp. C';), i. e. Z0 =
sqrt(L';/C';). The normalized length NL is equal to the length of the
line divided by the wavelength corresponding to the frequency F, i. e.
the transmission delay TD is the quotient of NL and F.

**References:**

Branin Jr., F. H.
    Transient Analysis of Lossless Transmission Lines. Proceedings of
    the IEEE 55(1967), 2012 - 2013
Hoefer, E. E. E.; Nielinger, H.
    SPICE : Analyseprogramm fuer elektronische Schaltungen.
    Springer-Verlag, Berlin, Heidelberg, New York, Tokyo, 1985.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+----------------------------------+
| Type                                                                | Name   | Default   | Description                      |
+=====================================================================+========+===========+==================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | Z0     |           | Characteristic impedance [Ohm]   |
+---------------------------------------------------------------------+--------+-----------+----------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_     | F      |           | Frequency [Hz]                   |
+---------------------------------------------------------------------+--------+-----------+----------------------------------+
| Real                                                                | NL     |           | Normalized length                |
+---------------------------------------------------------------------+--------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TLine2 
      "Lossless transmission line with characteristic impedance Z0, frequency F and normalized length NL"

      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      parameter Modelica.SIunits.Resistance Z0(start=1) "Characteristic impedance";
      parameter Modelica.SIunits.Frequency F(start=1) "Frequency";
      parameter Real NL(start=1) "Normalized length";
    protected 
      Modelica.SIunits.Voltage er;
      Modelica.SIunits.Voltage es;
      Modelica.SIunits.Time TD;
    equation 
      assert(Z0 > 0, "Z0 has to be positive");
      assert(NL > 0, "NL has to be positive");
      assert(F > 0, "F  has to be positive");
      TD = NL/F;
      i1 = (v1 - es)/Z0;
      i2 = (v2 - er)/Z0;
      es = 2*delay(v2, TD) - delay(er, TD);
      er = 2*delay(v1, TD) - delay(es, TD);
    end TLine2;

--------------

|image24| `Modelica.Electrical.Analog.Lines <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines>`_.TLine3
-----------------------------------------------------------------------------------------------------------------------------

**Lossless transmission line with characteristic impedance Z0 and
frequency F**

.. figure:: Modelica.Electrical.Analog.Lines.TLine3D.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.TLine3

   Modelica.Electrical.Analog.Lines.TLine3

Information
~~~~~~~~~~~

::

Lossless transmission line with characteristic impedance Z0 and
frequency F The lossless transmission line TLine3 is a two Port. Both
port branches consist of a resistor with value of the characteristic
impedance Z0 and a controled voltage source that takes into
consideration the transmission delay. For further details see Branin';s
article below. Resistance R'; and conductance C'; per meter are assumed
to be zero. The characteristic impedance Z0 can be derived from
inductance and capacitance per length (L'; resp. C';), i. e. Z0 =
sqrt(L';/C';). The length of the line is equal to a quarter of the
wavelength corresponding to the frequency F, i. e. the transmission
delay is the quotient of 4 and F. In this case, the caracteristic
impedance is called natural impedance.

**References:**

Branin Jr., F. H.
    Transient Analysis of Lossless Transmission Lines. Proceedings of
    the IEEE 55(1967), 2012 - 2013
Hoefer, E. E. E.; Nielinger, H.
    SPICE : Analyseprogramm fuer elektronische Schaltungen.
    Springer-Verlag, Berlin, Heidelberg, New York, Tokyo, 1985.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                | Name   | Default   | Description               |
+=====================================================================+========+===========+===========================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | Z0     |           | Natural impedance [Ohm]   |
+---------------------------------------------------------------------+--------+-----------+---------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_     | F      |           | Frequency [Hz]            |
+---------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TLine3 
      "Lossless transmission line with characteristic impedance Z0 and frequency F"
      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      parameter Modelica.SIunits.Resistance Z0(start=1) "Natural impedance";
      parameter Modelica.SIunits.Frequency F(start=1) "Frequency";
    protected 
      Modelica.SIunits.Voltage er;
      Modelica.SIunits.Voltage es;
      Modelica.SIunits.Time TD;
    equation 
      assert(Z0 > 0, "Z0 has to be positive");
      assert(F > 0, "F  has to be positive");
      TD = 1/F/4;
      i1 = (v1 - es)/Z0;
      i2 = (v2 - er)/Z0;
      es = 2*delay(v2, TD) - delay(er, TD);
      er = 2*delay(v1, TD) - delay(es, TD);
    end TLine3;

--------------

|Modelica.Electrical.Analog.Lines.M\_OLine.segment| `Modelica.Electrical.Analog.Lines.M\_OLine <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.M_OLine>`_.segment
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiple line segment model**

.. figure:: Modelica.Electrical.Analog.Lines.M_OLine.segmentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.M\_OLine.segment

   Modelica.Electrical.Analog.Lines.M\_OLine.segment

Information
~~~~~~~~~~~

::

The segment model is part of the multiple line model. It describes one
line segment as outlined in the M\_Oline description. Using the loop
possibilities of Modelica it is formulated by connecting components the
number of which depends on the number of lines.

::

Parameters
~~~~~~~~~~

+-----------+------------------------+------------------------------+-------------------------------------+
| Type      | Name                   | Default                      | Description                         |
+===========+========================+==============================+=====================================+
| Integer   | lines                  | 3                            | Number of lines                     |
+-----------+------------------------+------------------------------+-------------------------------------+
| Integer   | dim\_vector\_lgc       | div(lines\*(lines + 1), 2)   | Length of the vectors for l, g, c   |
+-----------+------------------------+------------------------------+-------------------------------------+
| Real      | Cl[dim\_vector\_lgc]   | fill(1, dim\_vector\_lgc)    | Capacitance matrix                  |
+-----------+------------------------+------------------------------+-------------------------------------+
| Real      | Rl[lines]              | fill(7, lines)               | Resistance matrix                   |
+-----------+------------------------+------------------------------+-------------------------------------+
| Real      | Ll[dim\_vector\_lgc]   | fill(2, dim\_vector\_lgc)    | Inductance matrix                   |
+-----------+------------------------+------------------------------+-------------------------------------+
| Real      | Gl[dim\_vector\_lgc]   | fill(1, dim\_vector\_lgc)    | Conductance matrix                  |
+-----------+------------------------+------------------------------+-------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                            | Name       | Description    |
+=================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p[lines]   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n[lines]   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model segment "Multiple line segment model"

      parameter Integer lines(final min=1)=3 "Number of lines";
      parameter Integer dim_vector_lgc=div(lines*(lines+1),2) 
        "Length of the vectors for l, g, c";
      Modelica.Electrical.Analog.Interfaces.PositivePin p[lines] "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n[lines] "Negative pin";

      parameter Real Cl[dim_vector_lgc]=fill(1,dim_vector_lgc) "Capacitance matrix";
      parameter Real Rl[lines]=fill(7,lines) "Resistance matrix";
      parameter Real Ll[dim_vector_lgc]=fill(2,dim_vector_lgc) "Inductance matrix";
      parameter Real Gl[dim_vector_lgc]= fill(1,dim_vector_lgc) 
        "Conductance matrix";

      Modelica.Electrical.Analog.Basic.Capacitor C[dim_vector_lgc](C=Cl);
      Modelica.Electrical.Analog.Basic.Resistor R[lines](R=Rl);
      Modelica.Electrical.Analog.Basic.Conductor G[dim_vector_lgc](G=Gl);
      Modelica.Electrical.Analog.Basic.M_Transformer inductance(N=lines, L=Ll);
      Modelica.Electrical.Analog.Basic.Ground M;

    equation 
      for j in 1:lines-1 loop

        connect(R[j].p,p[j]);
        connect(R[j].n,inductance.p[j]);
        connect(inductance.n[j],n[j]);
        connect(inductance.n[j],C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].p);
        connect(C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].n,M.p);
        connect(inductance.n[j],G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].p);
        connect(G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2))].n,M.p);

        for i in j+1:lines loop
          connect(inductance.n[j],C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].p);
          connect(C[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].n,  inductance.n[i]);
          connect(inductance.n[j],G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].p);
          connect(G[((1+(j-1)*lines) - div(((j-2)*(j-1)),2)) + 1 + i - (j+1)].n,inductance.n[i]);
        end for;
      end for;
        connect(R[lines].p,p[lines]);
        connect(R[lines].n,inductance.p[lines]);
        connect(inductance.n[lines],n[lines]);
        connect(inductance.n[lines],C[dim_vector_lgc].p);
        connect(C[dim_vector_lgc].n,M.p);
        connect(inductance.n[lines],G[dim_vector_lgc].p);
        connect(G[dim_vector_lgc].n,M.p);

    end segment;

--------------

|Modelica.Electrical.Analog.Lines.M\_OLine.segment\_last| `Modelica.Electrical.Analog.Lines.M\_OLine <Modelica_Electrical_Analog_Lines.html#Modelica.Electrical.Analog.Lines.M_OLine>`_.segment\_last
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiple line last segment model**

.. figure:: Modelica.Electrical.Analog.Lines.M_OLine.segment_lastD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Lines.M\_OLine.segment\_last

   Modelica.Electrical.Analog.Lines.M\_OLine.segment\_last

Information
~~~~~~~~~~~

::

The segment\_last model is part of the multiple line model. It describes
the special line segment which is used to get the line symmetrical as
outlined in the M\_Oline description. Using the loop possibilities of
Modelica it is formulated by connecting components the number of which
depends on the number of lines.

::

Parameters
~~~~~~~~~~

+-----------+------------------------+------------------------------+-------------------------------------+
| Type      | Name                   | Default                      | Description                         |
+===========+========================+==============================+=====================================+
| Integer   | lines                  | 3                            | Number of lines                     |
+-----------+------------------------+------------------------------+-------------------------------------+
| Integer   | dim\_vector\_lgc       | div(lines\*(lines + 1), 2)   | Length of the vectors for l, g, c   |
+-----------+------------------------+------------------------------+-------------------------------------+
| Real      | Rl[lines]              | fill(1, lines)               | Resistance matrix                   |
+-----------+------------------------+------------------------------+-------------------------------------+
| Real      | Ll[dim\_vector\_lgc]   | fill(1, dim\_vector\_lgc)    | Inductance matrix                   |
+-----------+------------------------+------------------------------+-------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                            | Name       | Description    |
+=================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p[lines]   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n[lines]   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model segment_last "Multiple line last segment model"

      Modelica.Electrical.Analog.Interfaces.PositivePin p[lines] "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n[lines] "Negative pin";
      parameter Integer lines(final min=1)=3 "Number of lines";
      parameter Integer dim_vector_lgc= div(lines*(lines+1),2) 
        "Length of the vectors for l, g, c";
      parameter Real Rl[lines]=fill(1,lines) "Resistance matrix";
      parameter Real Ll[dim_vector_lgc]=fill(1,dim_vector_lgc) "Inductance matrix";
      Modelica.Electrical.Analog.Basic.Resistor R[lines](R=Rl);
      Modelica.Electrical.Analog.Basic.M_Transformer inductance(  N=lines, L=Ll);
      Modelica.Electrical.Analog.Basic.Ground M;

    equation 
      for j in 1:lines-1 loop

        connect(p[j],inductance.p[j]);
        connect(inductance.n[j],R[j].p);
        connect(R[j].n,n[j]);
      end for;
        connect(p[lines],inductance.p[lines]);
        connect(inductance.n[lines],R[lines].p);
        connect(R[lines].n,n[lines]);

    end segment_last;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:09
2010.

.. |Modelica.Electrical.Analog.Lines.OLine| image:: Modelica.Electrical.Analog.Lines.OLineS.png
.. |Modelica.Electrical.Analog.Lines.M\_OLine| image:: Modelica.Electrical.Analog.Lines.M_OLineS.png
.. |Modelica.Electrical.Analog.Lines.ULine| image:: Modelica.Electrical.Analog.Lines.ULineS.png
.. |Modelica.Electrical.Analog.Lines.TLine1| image:: Modelica.Electrical.Analog.Lines.TLine1S.png
.. |Modelica.Electrical.Analog.Lines.TLine2| image:: Modelica.Electrical.Analog.Lines.TLine1S.png
.. |Modelica.Electrical.Analog.Lines.TLine3| image:: Modelica.Electrical.Analog.Lines.TLine1S.png
.. |image6| image:: Modelica.Electrical.Analog.Lines.OLineS.png
.. |image7| image:: Modelica.Electrical.Analog.Lines.M_OLineS.png
.. |image8| image:: Modelica.Electrical.Analog.Lines.ULineS.png
.. |image9| image:: Modelica.Electrical.Analog.Lines.TLine1S.png
.. |image10| image:: Modelica.Electrical.Analog.Lines.TLine1S.png
.. |image11| image:: Modelica.Electrical.Analog.Lines.TLine1S.png
.. |image12| image:: Modelica.Electrical.Analog.Lines.OLineI.png
.. |image13| image:: Modelica.Electrical.Analog.Lines.M_OLineI.png
.. |image14| image:: ../Resources/Images/Electrical/Analog/segment.png
.. |image15| image:: ../Resources/Images/Electrical/Analog/segment_last.png
.. |Matrix| image:: ../Resources/Images/Electrical/Analog/Lines/M_OLine-eqMatrix.png
.. |L| image:: ../Resources/Images/Electrical/Analog/Lines/M_OLine-eqL.png
.. |C| image:: ../Resources/Images/Electrical/Analog/Lines/M_OLine-eqC.png
.. |G| image:: ../Resources/Images/Electrical/Analog/Lines/M_OLine-eqG.png
.. |image20| image:: Modelica.Electrical.Analog.Lines.ULineI.png
.. |image21| image:: ../Resources/Images/Electrical/Analog/ULine.png
.. |image22| image:: Modelica.Electrical.Analog.Lines.TLine1I.png
.. |image23| image:: Modelica.Electrical.Analog.Lines.TLine2I.png
.. |image24| image:: Modelica.Electrical.Analog.Lines.TLine2I.png
.. |Modelica.Electrical.Analog.Lines.M\_OLine.segment| image:: Modelica.Electrical.Analog.Lines.M_OLine.segmentI.png
.. |Modelica.Electrical.Analog.Lines.M\_OLine.segment\_last| image:: Modelica.Electrical.Analog.Lines.M_OLine.segment_lastI.png
