===============================================
Modelica.Blocks.Continuous.Internal.Filter.base
===============================================

`Modelica.Blocks.Continuous.Internal.Filter <Modelica_Blocks_Continuous_Internal_Filter.html#Modelica.Blocks.Continuous.Internal.Filter>`_.base
-----------------------------------------------------------------------------------------------------------------------------------------------

**Prototype low pass filters with cut-off frequency of 1 rad/s (other
filters are derived by transformation from these base filters)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                          | Description                                                                                           |
+===============================================================================================================================================================================================================+=======================================================================================================+
| |image4| `CriticalDamping <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDamping>`_                                                            | Return base filter coefficients of CriticalDamping filter (= low pass filter with w\_cut = 1 rad/s)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
| |image5| `Bessel <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base.Bessel>`_                                                                              | Return base filter coefficients of Bessel filter (= low pass filter with w\_cut = 1 rad/s)            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
| |image6| `Butterworth <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base.Butterworth>`_                                                                    | Return base filter coefficients of Butterwort filter (= low pass filter with w\_cut = 1 rad/s)        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
| |image7| `ChebyshevI <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base.ChebyshevI>`_                                                                      | Return base filter coefficients of Chebyshev I filter (= low pass filter with w\_cut = 1 rad/s)       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Blocks.Continuous.Internal.Filter.base <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base>`_.CriticalDamping
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return base filter coefficients of CriticalDamping filter (= low pass
filter with w\_cut = 1 rad/s)**

Information
~~~~~~~~~~~

::

::

     

Inputs
~~~~~~

+-----------+--------------+-----------+----------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                          |
+===========+==============+===========+======================================================================+
| Integer   | order        |           | Order of filter                                                      |
+-----------+--------------+-----------+----------------------------------------------------------------------+
| Boolean   | normalized   | true      | = true, if amplitude at f\_cut = -3db, otherwise unmodified filter   |
+-----------+--------------+-----------+----------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------+------------------------------+
| Type   | Name        | Description                  |
+========+=============+==============================+
| Real   | cr[order]   | Coefficients of real poles   |
+--------+-------------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function CriticalDamping 
      "Return base filter coefficients of CriticalDamping filter (= low pass filter with w_cut = 1 rad/s)"

      input Integer order(min=1) "Order of filter";
      input Boolean normalized=true 
        "= true, if amplitude at f_cut = -3db, otherwise unmodified filter";

      output Real cr[order] "Coefficients of real poles";
    protected 
      Real alpha=1.0 "Frequency correction factor";
      Real alpha2 "= alpha*alpha";
      Real den1[order] 
        "[p] coefficients of denominator first order polynomials (a*p + 1)";
      Real den2[0,2] 
        "[p^2, p] coefficients of denominator second order polynomials (b*p^2 + a*p + 1)";
      Real c0[0] "Coefficients of s^0 term if conjugate complex pole";
      Real c1[0] "Coefficients of s^1 term if conjugate complex pole";
    algorithm 
      if normalized then
         // alpha := sqrt(2^(1/order) - 1);
         alpha := sqrt(10^(3/10/order)-1);
      else
         alpha := 1.0;
      end if;

      for i in 1:order loop
         den1[i] := alpha;
      end for;

      // Determine polynomials with highest power of s equal to one
        (cr,c0,c1) :=
          Modelica.Blocks.Continuous.Internal.Filter.Utilities.toHighestPowerOne(
          den1, den2);

    end CriticalDamping;

--------------

`Modelica.Blocks.Continuous.Internal.Filter.base <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base>`_.Bessel
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return base filter coefficients of Bessel filter (= low pass filter
with w\_cut = 1 rad/s)**

Information
~~~~~~~~~~~

::

::

     

Inputs
~~~~~~

+-----------+--------------+-----------+----------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                          |
+===========+==============+===========+======================================================================+
| Integer   | order        |           | Order of filter                                                      |
+-----------+--------------+-----------+----------------------------------------------------------------------+
| Boolean   | normalized   | true      | = true, if amplitude at f\_cut = -3db, otherwise unmodified filter   |
+-----------+--------------+-----------+----------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+------------------------+------------------------------------------------------+
| Type   | Name                   | Description                                          |
+========+========================+======================================================+
| Real   | cr[mod(order, 2)]      | Coefficient of real pole                             |
+--------+------------------------+------------------------------------------------------+
| Real   | c0[integer(order/2)]   | Coefficients of s^0 term if conjugate complex pole   |
+--------+------------------------+------------------------------------------------------+
| Real   | c1[integer(order/2)]   | Coefficients of s^1 term if conjugate complex pole   |
+--------+------------------------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function Bessel 
      "Return base filter coefficients of Bessel filter (= low pass filter with w_cut = 1 rad/s)"

      input Integer order(min=1) "Order of filter";
      input Boolean normalized=true 
        "= true, if amplitude at f_cut = -3db, otherwise unmodified filter";

      output Real cr[mod(order, 2)] "Coefficient of real pole";
      output Real c0[integer(order/2)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[integer(order/2)] 
        "Coefficients of s^1 term if conjugate complex pole";
    protected 
      Integer n_den2=size(c0, 1);
      Real alpha=1.0 "Frequency correction factor";
      Real alpha2 "= alpha*alpha";
      Real den1[size(cr,1)] 
        "[p] coefficients of denominator first order polynomials (a*p + 1)";
      Real den2[n_den2,2] 
        "[p^2, p] coefficients of denominator second order polynomials (b*p^2 + a*p + 1)";
    algorithm 
        (den1,den2,alpha) :=
          Modelica.Blocks.Continuous.Internal.Filter.Utilities.BesselBaseCoefficients(
          order);
      if not normalized then
         alpha2 := alpha*alpha;
         for i in 1:n_den2 loop
           den2[i, 1] := den2[i, 1]*alpha2;
           den2[i, 2] := den2[i, 2]*alpha;
         end for;
         if size(cr,1) == 1 then
           den1[1] := den1[1]*alpha;
         end if;
         end if;

      // Determine polynomials with highest power of s equal to one
        (cr,c0,c1) :=
          Modelica.Blocks.Continuous.Internal.Filter.Utilities.toHighestPowerOne(
          den1, den2);

    end Bessel;

--------------

`Modelica.Blocks.Continuous.Internal.Filter.base <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base>`_.Butterworth
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return base filter coefficients of Butterwort filter (= low pass
filter with w\_cut = 1 rad/s)**

Information
~~~~~~~~~~~

::

::

     

Inputs
~~~~~~

+-----------+--------------+-----------+----------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                          |
+===========+==============+===========+======================================================================+
| Integer   | order        |           | Order of filter                                                      |
+-----------+--------------+-----------+----------------------------------------------------------------------+
| Boolean   | normalized   | true      | = true, if amplitude at f\_cut = -3db, otherwise unmodified filter   |
+-----------+--------------+-----------+----------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+------------------------+------------------------------------------------------+
| Type   | Name                   | Description                                          |
+========+========================+======================================================+
| Real   | cr[mod(order, 2)]      | Coefficient of real pole                             |
+--------+------------------------+------------------------------------------------------+
| Real   | c0[integer(order/2)]   | Coefficients of s^0 term if conjugate complex pole   |
+--------+------------------------+------------------------------------------------------+
| Real   | c1[integer(order/2)]   | Coefficients of s^1 term if conjugate complex pole   |
+--------+------------------------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function Butterworth 
      "Return base filter coefficients of Butterwort filter (= low pass filter with w_cut = 1 rad/s)"

      input Integer order(min=1) "Order of filter";
      input Boolean normalized=true 
        "= true, if amplitude at f_cut = -3db, otherwise unmodified filter";

      output Real cr[mod(order, 2)] "Coefficient of real pole";
      output Real c0[integer(order/2)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[integer(order/2)] 
        "Coefficients of s^1 term if conjugate complex pole";
    protected 
      Integer n_den2=size(c0, 1);
      Real alpha=1.0 "Frequency correction factor";
      Real alpha2 "= alpha*alpha";
      Real den1[size(cr,1)] 
        "[p] coefficients of denominator first order polynomials (a*p + 1)";
      Real den2[n_den2,2] 
        "[p^2, p] coefficients of denominator second order polynomials (b*p^2 + a*p + 1)";
      constant Real pi=Modelica.Constants.pi;
    algorithm 
      for i in 1:n_den2 loop
        den2[i, 1] := 1.0;
        den2[i, 2] := -2*Modelica.Math.cos(pi*(0.5 + (i - 0.5)/order));
      end for;
      if size(cr,1) == 1 then
        den1[1] := 1.0;
      end if;

      /* Transformation of filter transfer function with "new(p) = alpha*p"
         in order that the filter transfer function has an amplitude of
         -3 db at the cutoff frequency
      */
      /*
        if normalized then
          alpha := Internal.normalizationFactor(den1, den2);
          alpha2 := alpha*alpha;
          for i in 1:n_den2 loop
            den2[i, 1] := den2[i, 1]*alpha2;
            den2[i, 2] := den2[i, 2]*alpha;
          end for;
          if size(cr,1) == 1 then
            den1[1] := den1[1]*alpha;
          end if;
        end if;
      */

      // Determine polynomials with highest power of s equal to one
        (cr,c0,c1) :=
          Modelica.Blocks.Continuous.Internal.Filter.Utilities.toHighestPowerOne(
          den1, den2);

    end Butterworth;

--------------

`Modelica.Blocks.Continuous.Internal.Filter.base <Modelica_Blocks_Continuous_Internal_Filter_base.html#Modelica.Blocks.Continuous.Internal.Filter.base>`_.ChebyshevI
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return base filter coefficients of Chebyshev I filter (= low pass
filter with w\_cut = 1 rad/s)**

Information
~~~~~~~~~~~

::

::

     

Inputs
~~~~~~

+-----------+--------------+-----------+----------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                          |
+===========+==============+===========+======================================================================+
| Integer   | order        |           | Order of filter                                                      |
+-----------+--------------+-----------+----------------------------------------------------------------------+
| Real      | A\_ripple    | 0.5       | Pass band ripple in [dB]                                             |
+-----------+--------------+-----------+----------------------------------------------------------------------+
| Boolean   | normalized   | true      | = true, if amplitude at f\_cut = -3db, otherwise unmodified filter   |
+-----------+--------------+-----------+----------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+------------------------+------------------------------------------------------+
| Type   | Name                   | Description                                          |
+========+========================+======================================================+
| Real   | cr[mod(order, 2)]      | Coefficient of real pole                             |
+--------+------------------------+------------------------------------------------------+
| Real   | c0[integer(order/2)]   | Coefficients of s^0 term if conjugate complex pole   |
+--------+------------------------+------------------------------------------------------+
| Real   | c1[integer(order/2)]   | Coefficients of s^1 term if conjugate complex pole   |
+--------+------------------------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function ChebyshevI 
      "Return base filter coefficients of Chebyshev I filter (= low pass filter with w_cut = 1 rad/s)"
        import Modelica.Math.*;

      input Integer order(min=1) "Order of filter";
      input Real A_ripple = 0.5 "Pass band ripple in [dB]";
      input Boolean normalized=true 
        "= true, if amplitude at f_cut = -3db, otherwise unmodified filter";

      output Real cr[mod(order, 2)] "Coefficient of real pole";
      output Real c0[integer(order/2)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[integer(order/2)] 
        "Coefficients of s^1 term if conjugate complex pole";
    protected 
      Real epsilon;
      Real fac;
      Integer n_den2=size(c0, 1);
      Real alpha=1.0 "Frequency correction factor";
      Real alpha2 "= alpha*alpha";
      Real den1[size(cr,1)] 
        "[p] coefficients of denominator first order polynomials (a*p + 1)";
      Real den2[n_den2,2] 
        "[p^2, p] coefficients of denominator second order polynomials (b*p^2 + a*p + 1)";
      constant Real pi=Modelica.Constants.pi;
    algorithm 
        epsilon := sqrt(10^(A_ripple/10) - 1);
        fac := asinh(1/epsilon)/order;

        if size(cr,1) == 0 then
           for i in 1:n_den2 loop
              den2[i,1] :=1/(cosh(fac)^2 - cos((2*i - 1)*pi/(2*order))^2);
              den2[i,2] :=2*den2[i, 1]*sinh(fac)*cos((2*i - 1)*pi/(2*order));
           end for;
        else
           den1[1] := 1/sinh(fac);
           for i in 1:n_den2 loop
              den2[i,1] :=1/(cosh(fac)^2 - cos(i*pi/order)^2);
              den2[i,2] :=2*den2[i, 1]*sinh(fac)*cos(i*pi/order);
           end for;
        end if;

        /* Transformation of filter transfer function with "new(p) = alpha*p"
           in order that the filter transfer function has an amplitude of
           -3 db at the cutoff frequency
        */
        if normalized then
          alpha :=
            Modelica.Blocks.Continuous.Internal.Filter.Utilities.normalizationFactor(
            den1, den2);
          alpha2 := alpha*alpha;
          for i in 1:n_den2 loop
            den2[i, 1] := den2[i, 1]*alpha2;
            den2[i, 2] := den2[i, 2]*alpha;
          end for;
          if size(cr,1) == 1 then
            den1[1] := den1[1]*alpha;
          end if;
        end if;

      // Determine polynomials with highest power of s equal to one
        (cr,c0,c1) :=
          Modelica.Blocks.Continuous.Internal.Filter.Utilities.toHighestPowerOne(
          den1, den2);

    end ChebyshevI;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:36
2010.

.. |Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDamping| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |Modelica.Blocks.Continuous.Internal.Filter.base.Bessel| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |Modelica.Blocks.Continuous.Internal.Filter.base.Butterworth| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |Modelica.Blocks.Continuous.Internal.Filter.base.ChebyshevI| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image4| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image5| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image6| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
.. |image7| image:: Modelica.Blocks.Continuous.Internal.Filter.base.CriticalDampingS.png
