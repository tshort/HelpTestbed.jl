================================================
Modelica.Blocks.Continuous.Internal.Filter.roots
================================================

`Modelica.Blocks.Continuous.Internal.Filter <Modelica_Blocks_Continuous_Internal_Filter.html#Modelica.Blocks.Continuous.Internal.Filter>`_.roots
------------------------------------------------------------------------------------------------------------------------------------------------

**Filter roots and gain as needed for block implementations**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| Name                                                                                                                                                                                        | Description                                                                     |
+=============================================================================================================================================================================================+=================================================================================+
| |image4| `lowPass <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots.lowPass>`_                                                        | Return low pass filter roots as needed for block for given cut-off frequency    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| |image5| `highPass <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots.highPass>`_                                                      | Return high pass filter roots as needed for block for given cut-off frequency   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| |image6| `bandPass <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots.bandPass>`_                                                      | Return band pass filter roots as needed for block for given cut-off frequency   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| |image7| `bandStop <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots.bandStop>`_                                                      | Return band stop filter roots as needed for block for given cut-off frequency   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

--------------

`Modelica.Blocks.Continuous.Internal.Filter.roots <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots>`_.lowPass
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return low pass filter roots as needed for block for given cut-off
frequency**

Information
~~~~~~~~~~~

::

The goal is to implement the filter in the following form:

::

      // real pole:
       der(x) = r*x - r*u
           y  = x

      // complex conjugate poles:
      der(x1) = a*x1 - b*x2 + ku*u;
      der(x2) = b*x1 + a*x2;
           y  = x2;

                ku = (a^2 + b^2)/b

This representation has the following transfer function:

::

    // real pole:
        s*y = r*y - r*u
      or
        (s-r)*y = -r*u
      or
        y = -r/(s-r)*u

      comparing coefficients with
        y = cr/(s + cr)*u  ->  r = -cr      // r is the real eigenvalue

    // complex conjugate poles
        s*x2 =  a*x2 + b*x1
        s*x1 = -b*x2 + a*x1 + ku*u
      or
        (s-a)*x2               = b*x1  ->  x2 = b/(s-a)*x1
        (s + b^2/(s-a) - a)*x1 = ku*u  ->  (s(s-a) + b^2 - a*(s-a))*x1  = ku*(s-a)*u
                                       ->  (s^2 - 2*a*s + a^2 + b^2)*x1 = ku*(s-a)*u
      or
        x1 = ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
        x2 = b/(s-a)*ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
           = b*ku/(s^2 - 2*a*s + a^2 + b^2)*u
        y  = x2

      comparing coefficients with
        y = c0/(s^2 + c1*s + c0)*u  ->  a  = -c1/2
                                        b  = sqrt(c0 - a^2)
                                        ku = c0/b
                                           = (a^2 + b^2)/b

      comparing with eigenvalue representation:
        (s - (a+jb))*(s - (a-jb)) = s^2 -2*a*s + a^2 + b^2
      shows that:
        a: real part of eigenvalue
        b: imaginary part of eigenvalue

      time -> infinity:
        y(s=0) = x2(s=0) = 1
                 x1(s=0) = -ku*a/(a^2 + b^2)*u
                         = -(a/b)*u

::

     

Inputs
~~~~~~

+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| Type                                                              | Name                      | Default   | Description                                                         |
+===================================================================+===========================+===========+=====================================================================+
| Real                                                              | cr\_in[:]                 |           | Coefficients of real poles of base filter                           |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| Real                                                              | c0\_in[:]                 |           | Coefficients of s^0 term of base filter if conjugate complex pole   |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| Real                                                              | c1\_in[size(c0\_in, 1)]   |           | Coefficients of s^1 term of base filter if conjugate complex pole   |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_cut                    |           | Cut-off frequency [Hz]                                              |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+-----------------------+----------------------------------------------------+
| Type   | Name                  | Description                                        |
+========+=======================+====================================================+
| Real   | r[size(cr\_in, 1)]    | Real eigenvalues                                   |
+--------+-----------------------+----------------------------------------------------+
| Real   | a[size(c0\_in, 1)]    | Real parts of complex conjugate eigenvalues        |
+--------+-----------------------+----------------------------------------------------+
| Real   | b[size(c0\_in, 1)]    | Imaginary parts of complex conjugate eigenvalues   |
+--------+-----------------------+----------------------------------------------------+
| Real   | ku[size(c0\_in, 1)]   | Input gain                                         |
+--------+-----------------------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function lowPass 
      "Return low pass filter roots as needed for block for given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles of base filter";
      input Real c0_in[:] 
        "Coefficients of s^0 term of base filter if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term of base filter if conjugate complex pole";
      input Modelica.SIunits.Frequency f_cut "Cut-off frequency";

      output Real r[size(cr_in,1)] "Real eigenvalues";
      output Real a[size(c0_in,1)] "Real parts of complex conjugate eigenvalues";
      output Real b[size(c0_in,1)] 
        "Imaginary parts of complex conjugate eigenvalues";
      output Real ku[size(c0_in,1)] "Input gain";
    protected 
      Real c0[size(c0_in,1)];
      Real c1[size(c0_in,1)];
      Real cr[size(cr_in,1)];
    algorithm 
      // Get coefficients of low pass filter at f_cut
      (cr, c0, c1) :=coefficients.lowPass(cr_in, c0_in, c1_in, f_cut);

      // Transform coefficients in to root
      for i in 1:size(cr_in,1) loop
        r[i] :=-cr[i];
      end for;

      for i in 1:size(c0_in,1) loop
        a [i] :=-c1[i]/2;
        b [i] :=sqrt(c0[i] - a[i]*a[i]);
        ku[i] :=c0[i]/b[i];
      end for;

    end lowPass;

--------------

`Modelica.Blocks.Continuous.Internal.Filter.roots <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots>`_.highPass
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return high pass filter roots as needed for block for given cut-off
frequency**

Information
~~~~~~~~~~~

::

The goal is to implement the filter in the following form:

::

      // real pole:
       der(x) = r*x - r*u
           y  = -x + u

      // complex conjugate poles:
      der(x1) = a*x1 - b*x2 + ku*u;
      der(x2) = b*x1 + a*x2;
           y  = k1*x1 + k2*x2 + u;

                ku = (a^2 + b^2)/b
                k1 = 2*a/ku
                k2 = (a^2 - b^2) / (b*ku)
                   = (a^2 - b^2) / (a^2 + b^2)
                   = (1 - (b/a)^2) / (1 + (b/a)^2)

This representation has the following transfer function:

::

    // real pole:
        s*x = r*x - r*u
      or
        (s-r)*x = -r*u   -> x = -r/(s-r)*u
      or
        y = r/(s-r)*u + (s-r)/(s-r)*u
          = (r+s-r)/(s-r)*u
          = s/(s-r)*u

      comparing coefficients with
        y = s/(s + cr)*u  ->  r = -cr      // r is the real eigenvalue

    // complex conjugate poles
        s*x2 =  a*x2 + b*x1
        s*x1 = -b*x2 + a*x1 + ku*u
      or
        (s-a)*x2               = b*x1  ->  x2 = b/(s-a)*x1
        (s + b^2/(s-a) - a)*x1 = ku*u  ->  (s(s-a) + b^2 - a*(s-a))*x1  = ku*(s-a)*u
                                       ->  (s^2 - 2*a*s + a^2 + b^2)*x1 = ku*(s-a)*u
      or
        x1 = ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
        x2 = b/(s-a)*ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
           = b*ku/(s^2 - 2*a*s + a^2 + b^2)*u
        y  = k1*x1 + k2*x2 + u
           = (k1*ku*(s-a) + k2*b*ku +  s^2 - 2*a*s + a^2 + b^2) /
             (s^2 - 2*a*s + a^2 + b^2)*u
           = (s^2 + (k1*ku - 2*a)*s + k2*b*ku - k1*ku*a + a^2 + b^2) /
             (s^2 - 2*a*s + a^2 + b^2)*u
           = (s^2 + (2*a-2*a)*s + a^2 - b^2 - 2*a^2 + a^2 + b^2) /
             (s^2 - 2*a*s + a^2 + b^2)*u
           = s^2 / (s^2 - 2*a*s + a^2 + b^2)*u

      comparing coefficients with
        y = s^2/(s^2 + c1*s + c0)*u  ->  a = -c1/2
                                         b = sqrt(c0 - a^2)

      comparing with eigenvalue representation:
        (s - (a+jb))*(s - (a-jb)) = s^2 -2*a*s + a^2 + b^2
      shows that:
        a: real part of eigenvalue
        b: imaginary part of eigenvalue

::

     

Inputs
~~~~~~

+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| Type                                                              | Name                      | Default   | Description                                                         |
+===================================================================+===========================+===========+=====================================================================+
| Real                                                              | cr\_in[:]                 |           | Coefficients of real poles of base filter                           |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| Real                                                              | c0\_in[:]                 |           | Coefficients of s^0 term of base filter if conjugate complex pole   |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| Real                                                              | c1\_in[size(c0\_in, 1)]   |           | Coefficients of s^1 term of base filter if conjugate complex pole   |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_cut                    |           | Cut-off frequency [Hz]                                              |
+-------------------------------------------------------------------+---------------------------+-----------+---------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+-----------------------+----------------------------------------------------+
| Type   | Name                  | Description                                        |
+========+=======================+====================================================+
| Real   | r[size(cr\_in, 1)]    | Real eigenvalues                                   |
+--------+-----------------------+----------------------------------------------------+
| Real   | a[size(c0\_in, 1)]    | Real parts of complex conjugate eigenvalues        |
+--------+-----------------------+----------------------------------------------------+
| Real   | b[size(c0\_in, 1)]    | Imaginary parts of complex conjugate eigenvalues   |
+--------+-----------------------+----------------------------------------------------+
| Real   | ku[size(c0\_in, 1)]   | Gains of input terms                               |
+--------+-----------------------+----------------------------------------------------+
| Real   | k1[size(c0\_in, 1)]   | Gains of y = k1\*x1 + k2\*x + u                    |
+--------+-----------------------+----------------------------------------------------+
| Real   | k2[size(c0\_in, 1)]   | Gains of y = k1\*x1 + k2\*x + u                    |
+--------+-----------------------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function highPass 
      "Return high pass filter roots as needed for block for given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles of base filter";
      input Real c0_in[:] 
        "Coefficients of s^0 term of base filter if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term of base filter if conjugate complex pole";
      input Modelica.SIunits.Frequency f_cut "Cut-off frequency";

      output Real r[size(cr_in,1)] "Real eigenvalues";
      output Real a[size(c0_in,1)] "Real parts of complex conjugate eigenvalues";
      output Real b[size(c0_in,1)] 
        "Imaginary parts of complex conjugate eigenvalues";
      output Real ku[size(c0_in,1)] "Gains of input terms";
      output Real k1[size(c0_in,1)] "Gains of y = k1*x1 + k2*x + u";
      output Real k2[size(c0_in,1)] "Gains of y = k1*x1 + k2*x + u";
    protected 
      Real c0[size(c0_in,1)];
      Real c1[size(c0_in,1)];
      Real cr[size(cr_in,1)];
      Real ba2;
    algorithm 
      // Get coefficients of high pass filter at f_cut
      (cr, c0, c1) :=coefficients.highPass(cr_in, c0_in, c1_in, f_cut);

      // Transform coefficients in to roots
      for i in 1:size(cr_in,1) loop
        r[i] :=-cr[i];
      end for;

      for i in 1:size(c0_in,1) loop
        a[i]  := -c1[i]/2;
        b[i]  := sqrt(c0[i] - a[i]*a[i]);
        ku[i] := c0[i]/b[i];
        k1[i] := 2*a[i]/ku[i];
        ba2   := (b[i]/a[i])^2;
        k2[i] := (1-ba2)/(1+ba2);
      end for;

    end highPass;

--------------

`Modelica.Blocks.Continuous.Internal.Filter.roots <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots>`_.bandPass
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return band pass filter roots as needed for block for given cut-off
frequency**

Information
~~~~~~~~~~~

::

The goal is to implement the filter in the following form:

::

      // complex conjugate poles:
      der(x1) = a*x1 - b*x2 + ku*u;
      der(x2) = b*x1 + a*x2;
           y  = k1*x1 + k2*x2;

                ku = (a^2 + b^2)/b
                k1 = cn/ku
                k2 = cn*a/(b*ku)

This representation has the following transfer function:

::

    // complex conjugate poles
        s*x2 =  a*x2 + b*x1
        s*x1 = -b*x2 + a*x1 + ku*u
      or
        (s-a)*x2               = b*x1  ->  x2 = b/(s-a)*x1
        (s + b^2/(s-a) - a)*x1 = ku*u  ->  (s(s-a) + b^2 - a*(s-a))*x1  = ku*(s-a)*u
                                       ->  (s^2 - 2*a*s + a^2 + b^2)*x1 = ku*(s-a)*u
      or
        x1 = ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
        x2 = b/(s-a)*ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
           = b*ku/(s^2 - 2*a*s + a^2 + b^2)*u
        y  = k1*x1 + k2*x2
           = (k1*ku*(s-a) + k2*b*ku) / (s^2 - 2*a*s + a^2 + b^2)*u
           = (k1*ku*s + k2*b*ku - k1*ku*a) / (s^2 - 2*a*s + a^2 + b^2)*u
           = (cn*s + cn*a - cn*a) / (s^2 - 2*a*s + a^2 + b^2)*u
           = cn*s / (s^2 - 2*a*s + a^2 + b^2)*u

      comparing coefficients with
        y = cn*s / (s^2 + c1*s + c0)*u  ->  a = -c1/2
                                            b = sqrt(c0 - a^2)

      comparing with eigenvalue representation:
        (s - (a+jb))*(s - (a-jb)) = s^2 -2*a*s + a^2 + b^2
      shows that:
        a: real part of eigenvalue
        b: imaginary part of eigenvalue

::

     

Inputs
~~~~~~

+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| Type                                                              | Name                      | Default   | Description                                                           |
+===================================================================+===========================+===========+=======================================================================+
| Real                                                              | cr\_in[:]                 |           | Coefficients of real poles of base filter                             |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| Real                                                              | c0\_in[:]                 |           | Coefficients of s^0 term of base filter if conjugate complex pole     |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| Real                                                              | c1\_in[size(c0\_in, 1)]   |           | Coefficients of s^1 term of base filter if conjugate complex pole     |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_min                    |           | Band of band pass filter is f\_min (A=-3db) .. f\_max (A=-3db) [Hz]   |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_max                    |           | Upper band frequency [Hz]                                             |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------------------------------------+----------------------------------------------------+
| Type   | Name                                       | Description                                        |
+========+============================================+====================================================+
| Real   | a[size(cr\_in, 1) + 2\*size(c0\_in, 1)]    | Real parts of complex conjugate eigenvalues        |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | b[size(cr\_in, 1) + 2\*size(c0\_in, 1)]    | Imaginary parts of complex conjugate eigenvalues   |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | ku[size(cr\_in, 1) + 2\*size(c0\_in, 1)]   | Gains of input terms                               |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | k1[size(cr\_in, 1) + 2\*size(c0\_in, 1)]   | Gains of y = k1\*x1 + k2\*x                        |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | k2[size(cr\_in, 1) + 2\*size(c0\_in, 1)]   | Gains of y = k1\*x1 + k2\*x                        |
+--------+--------------------------------------------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function bandPass 
      "Return band pass filter roots as needed for block for given cut-off frequency"
      input Real cr_in[:] "Coefficients of real poles of base filter";
      input Real c0_in[:] 
        "Coefficients of s^0 term of base filter if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term of base filter if conjugate complex pole";
      input Modelica.SIunits.Frequency f_min 
        "Band of band pass filter is f_min (A=-3db) .. f_max (A=-3db)";
      input Modelica.SIunits.Frequency f_max "Upper band frequency";

      output Real a[size(cr_in,1) + 2*size(c0_in,1)] 
        "Real parts of complex conjugate eigenvalues";
      output Real b[size(cr_in,1) + 2*size(c0_in,1)] 
        "Imaginary parts of complex conjugate eigenvalues";
      output Real ku[size(cr_in,1) + 2*size(c0_in,1)] "Gains of input terms";
      output Real k1[size(cr_in,1) + 2*size(c0_in,1)] "Gains of y = k1*x1 + k2*x";
      output Real k2[size(cr_in,1) + 2*size(c0_in,1)] "Gains of y = k1*x1 + k2*x";
    protected 
      Real cr[0];
      Real c0[size(a,1)];
      Real c1[size(a,1)];
      Real cn;
      Real bb;
    algorithm 
      // Get coefficients of band pass filter at f_cut
      (cr, c0, c1, cn) :=coefficients.bandPass(cr_in, c0_in, c1_in, f_min, f_max);

      // Transform coefficients in to roots
      for i in 1:size(a,1) loop
        a[i]  := -c1[i]/2;
        bb    := c0[i] - a[i]*a[i];
        assert(bb >= 0, "\nNot possible to use band pass filter, since transformation results in\n"+
                        "system that does not have conjugate complex poles.\n" +
                        "Try to use another analog filter for the band pass.\n");
        b[i]  := sqrt(bb);
        ku[i] := c0[i]/b[i];
        k1[i] := cn/ku[i];
        k2[i] := cn*a[i]/(b[i]*ku[i]);
      end for;

    end bandPass;

--------------

`Modelica.Blocks.Continuous.Internal.Filter.roots <Modelica_Blocks_Continuous_Internal_Filter_roots.html#Modelica.Blocks.Continuous.Internal.Filter.roots>`_.bandStop
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return band stop filter roots as needed for block for given cut-off
frequency**

Information
~~~~~~~~~~~

::

The goal is to implement the filter in the following form:

::

      // complex conjugate poles:
      der(x1) = a*x1 - b*x2 + ku*u;
      der(x2) = b*x1 + a*x2;
           y  = k1*x1 + k2*x2 + u;

                ku = (a^2 + b^2)/b
                k1 = 2*a/ku
                k2 = (c0 + a^2 - b^2)/(b*ku)

This representation has the following transfer function:

::

    // complex conjugate poles
        s*x2 =  a*x2 + b*x1
        s*x1 = -b*x2 + a*x1 + ku*u
      or
        (s-a)*x2               = b*x1  ->  x2 = b/(s-a)*x1
        (s + b^2/(s-a) - a)*x1 = ku*u  ->  (s(s-a) + b^2 - a*(s-a))*x1  = ku*(s-a)*u
                                       ->  (s^2 - 2*a*s + a^2 + b^2)*x1 = ku*(s-a)*u
      or
        x1 = ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
        x2 = b/(s-a)*ku*(s-a)/(s^2 - 2*a*s + a^2 + b^2)*u
           = b*ku/(s^2 - 2*a*s + a^2 + b^2)*u
        y  = k1*x1 + k2*x2 + u
           = (k1*ku*(s-a) + k2*b*ku + s^2 - 2*a*s + a^2 + b^2) / (s^2 - 2*a*s + a^2 + b^2)*u
           = (s^2 + (k1*ku-2*a)*s + k2*b*ku - k1*ku*a + a^2 + b^2) / (s^2 - 2*a*s + a^2 + b^2)*u
           = (s^2 + c0 + a^2 - b^2 - 2*a^2 + a^2 + b^2) / (s^2 - 2*a*s + a^2 + b^2)*u
           = (s^2 + c0) / (s^2 - 2*a*s + a^2 + b^2)*u

      comparing coefficients with
        y = (s^2 + c0) / (s^2 + c1*s + c0)*u  ->  a = -c1/2
                                                  b = sqrt(c0 - a^2)

      comparing with eigenvalue representation:
        (s - (a+jb))*(s - (a-jb)) = s^2 -2*a*s + a^2 + b^2
      shows that:
        a: real part of eigenvalue
        b: imaginary part of eigenvalue

::

     

Inputs
~~~~~~

+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| Type                                                              | Name                      | Default   | Description                                                           |
+===================================================================+===========================+===========+=======================================================================+
| Real                                                              | cr\_in[:]                 |           | Coefficients of real poles of base filter                             |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| Real                                                              | c0\_in[:]                 |           | Coefficients of s^0 term of base filter if conjugate complex pole     |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| Real                                                              | c1\_in[size(c0\_in, 1)]   |           | Coefficients of s^1 term of base filter if conjugate complex pole     |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_min                    |           | Band of band stop filter is f\_min (A=-3db) .. f\_max (A=-3db) [Hz]   |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f\_max                    |           | Upper band frequency [Hz]                                             |
+-------------------------------------------------------------------+---------------------------+-----------+-----------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------------------------------------+----------------------------------------------------+
| Type   | Name                                       | Description                                        |
+========+============================================+====================================================+
| Real   | a[size(cr\_in, 1) + 2\*size(c0\_in, 1)]    | Real parts of complex conjugate eigenvalues        |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | b[size(cr\_in, 1) + 2\*size(c0\_in, 1)]    | Imaginary parts of complex conjugate eigenvalues   |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | ku[size(cr\_in, 1) + 2\*size(c0\_in, 1)]   | Gains of input terms                               |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | k1[size(cr\_in, 1) + 2\*size(c0\_in, 1)]   | Gains of y = k1\*x1 + k2\*x                        |
+--------+--------------------------------------------+----------------------------------------------------+
| Real   | k2[size(cr\_in, 1) + 2\*size(c0\_in, 1)]   | Gains of y = k1\*x1 + k2\*x                        |
+--------+--------------------------------------------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function bandStop 
      "Return band stop filter roots as needed for block for given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles of base filter";
      input Real c0_in[:] 
        "Coefficients of s^0 term of base filter if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term of base filter if conjugate complex pole";
      input Modelica.SIunits.Frequency f_min 
        "Band of band stop filter is f_min (A=-3db) .. f_max (A=-3db)";
      input Modelica.SIunits.Frequency f_max "Upper band frequency";

      output Real a[size(cr_in,1) + 2*size(c0_in,1)] 
        "Real parts of complex conjugate eigenvalues";
      output Real b[size(cr_in,1) + 2*size(c0_in,1)] 
        "Imaginary parts of complex conjugate eigenvalues";
      output Real ku[size(cr_in,1) + 2*size(c0_in,1)] "Gains of input terms";
      output Real k1[size(cr_in,1) + 2*size(c0_in,1)] "Gains of y = k1*x1 + k2*x";
      output Real k2[size(cr_in,1) + 2*size(c0_in,1)] "Gains of y = k1*x1 + k2*x";
    protected 
      Real cr[0];
      Real c0[size(a,1)];
      Real c1[size(a,1)];
      Real cn;
      Real bb;
    algorithm 
      // Get coefficients of band stop filter at f_cut
      (cr, c0, c1) :=coefficients.bandStop(cr_in, c0_in, c1_in, f_min, f_max);

      // Transform coefficients in to roots
      for i in 1:size(a,1) loop
        a[i]  := -c1[i]/2;
        bb    := c0[i] - a[i]*a[i];
        assert(bb >= 0, "\nNot possible to use band stop filter, since transformation results in\n"+
                        "system that does not have conjugate complex poles.\n" +
                        "Try to use another analog filter for the band stop filter.\n");
        b[i]  := sqrt(bb);
        ku[i] := c0[i]/b[i];
        k1[i] := 2*a[i]/ku[i];
        k2[i] := (c0[i] + a[i]^2 - b[i]^2)/(b[i]*ku[i]);
      end for;

    end bandStop;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:36
2010.

.. |Modelica.Blocks.Continuous.Internal.Filter.roots.lowPass| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |Modelica.Blocks.Continuous.Internal.Filter.roots.highPass| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |Modelica.Blocks.Continuous.Internal.Filter.roots.bandPass| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |Modelica.Blocks.Continuous.Internal.Filter.roots.bandStop| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image4| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image5| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image6| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image7| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
