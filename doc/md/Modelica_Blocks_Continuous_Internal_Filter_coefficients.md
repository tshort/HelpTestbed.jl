% Modelica.Blocks.Continuous.Internal.Filter.coefficients
% 
% 

[Modelica.Blocks.Continuous.Internal.Filter](Modelica_Blocks_Continuous_Internal_Filter.html#Modelica.Blocks.Continuous.Internal.Filter).coefficients
=====================================================================================================================================================

**Filter coefficients**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image4](Modelica.Blocks.Continuous.Internal.Filter.b Return low pass
  ase.CriticalDampingS.png)                              filter
  [lowPass](Modelica_Blocks_Continuous_Internal_Filter_c coefficients at
  oefficients.html#Modelica.Blocks.Continuous.Internal.F given cut-off
  ilter.coefficients.lowPass)                            frequency

  ![image5](Modelica.Blocks.Continuous.Internal.Filter.b Return high pass
  ase.CriticalDampingS.png)                              filter
  [highPass](Modelica_Blocks_Continuous_Internal_Filter_ coefficients at
  coefficients.html#Modelica.Blocks.Continuous.Internal. given cut-off
  Filter.coefficients.highPass)                          frequency

  ![image6](Modelica.Blocks.Continuous.Internal.Filter.b Return band pass
  ase.CriticalDampingS.png)                              filter
  [bandPass](Modelica_Blocks_Continuous_Internal_Filter_ coefficients at
  coefficients.html#Modelica.Blocks.Continuous.Internal. given cut-off
  Filter.coefficients.bandPass)                          frequency

  ![image7](Modelica.Blocks.Continuous.Internal.Filter.b Return band stop
  ase.CriticalDampingS.png)                              filter
  [bandStop](Modelica_Blocks_Continuous_Internal_Filter_ coefficients at
  coefficients.html#Modelica.Blocks.Continuous.Internal. given cut-off
  Filter.coefficients.bandStop)                          frequency
  ------------------------------------------------------------------------

* * * * *

[Modelica.Blocks.Continuous.Internal.Filter.coefficients](Modelica_Blocks_Continuous_Internal_Filter_coefficients.html#Modelica.Blocks.Continuous.Internal.Filter.coefficients).lowPass
=======================================================================================================================================================================================

**Return low pass filter coefficients at given cut-off frequency**

Information
-----------

::

::

Inputs
------

  --------------------------------------------------------------------------
  Type                           Name         Defau Description
                                              lt    
  ------------------------------ ------------ ----- ------------------------
  Real                           cr\_in[:]          Coefficients of real
                                                    poles

  Real                           c0\_in[:]          Coefficients of s\^0
                                                    term if conjugate
                                                    complex pole

  Real                           c1\_in[size(       Coefficients of s\^1
                                 c0\_in,            term if conjugate
                                 1)]                complex pole

  [Frequency](Modelica_SIunits.h f\_cut             Cut-off frequency [Hz]
  tml#Modelica.SIunits.Frequency                    
  )                                                 
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name                Description
  ------- ------------------- ---------------------------------------------
  Real    cr[size(cr\_in, 1)] Coefficient of real pole

  Real    c0[size(c0\_in, 1)] Coefficients of s\^0 term if conjugate
                              complex pole

  Real    c1[size(c0\_in, 1)] Coefficients of s\^1 term if conjugate
                              complex pole
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function lowPass 
      "Return low pass filter coefficients at given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles";
      input Real c0_in[:] "Coefficients of s^0 term if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";
      input Modelica.SIunits.Frequency f_cut "Cut-off frequency";

      output Real cr[size(cr_in,1)] "Coefficient of real pole";
      output Real c0[size(c0_in,1)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";

    protected 
      constant Real pi=Modelica.Constants.pi;
      Modelica.SIunits.AngularVelocity w_cut=2*pi*f_cut "Cut-off angular frequency";
      Real w_cut2=w_cut*w_cut;

    algorithm 
      assert(f_cut > 0, "Cut-off frequency f_cut must be positive");

      /* Change filter coefficients according to transformation new(s) = s/w_cut
         s + cr           -> (s/w) + cr              = (s + w*cr)/w
         s^2 + c1*s + c0  -> (s/w)^2 + c1*(s/w) + c0 = (s^2 + (c1*w)*s + (c0*w^2))/w^2
      */
      cr := w_cut*cr_in;
      c1 := w_cut*c1_in;
      c0 := w_cut2*c0_in;

    end lowPass;

* * * * *

[Modelica.Blocks.Continuous.Internal.Filter.coefficients](Modelica_Blocks_Continuous_Internal_Filter_coefficients.html#Modelica.Blocks.Continuous.Internal.Filter.coefficients).highPass
========================================================================================================================================================================================

**Return high pass filter coefficients at given cut-off frequency**

Information
-----------

::

::

Inputs
------

  --------------------------------------------------------------------------
  Type                           Name         Defau Description
                                              lt    
  ------------------------------ ------------ ----- ------------------------
  Real                           cr\_in[:]          Coefficients of real
                                                    poles

  Real                           c0\_in[:]          Coefficients of s\^0
                                                    term if conjugate
                                                    complex pole

  Real                           c1\_in[size(       Coefficients of s\^1
                                 c0\_in,            term if conjugate
                                 1)]                complex pole

  [Frequency](Modelica_SIunits.h f\_cut             Cut-off frequency [Hz]
  tml#Modelica.SIunits.Frequency                    
  )                                                 
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name                Description
  ------- ------------------- ---------------------------------------------
  Real    cr[size(cr\_in, 1)] Coefficient of real pole

  Real    c0[size(c0\_in, 1)] Coefficients of s\^0 term if conjugate
                              complex pole

  Real    c1[size(c0\_in, 1)] Coefficients of s\^1 term if conjugate
                              complex pole
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function highPass 
      "Return high pass filter coefficients at given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles";
      input Real c0_in[:] "Coefficients of s^0 term if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";
      input Modelica.SIunits.Frequency f_cut "Cut-off frequency";

      output Real cr[size(cr_in,1)] "Coefficient of real pole";
      output Real c0[size(c0_in,1)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";

    protected 
      constant Real pi=Modelica.Constants.pi;
      Modelica.SIunits.AngularVelocity w_cut=2*pi*f_cut "Cut-off angular frequency";
      Real w_cut2=w_cut*w_cut;

    algorithm 
      assert(f_cut > 0, "Cut-off frequency f_cut must be positive");

      /* Change filter coefficients according to transformation: new(s) = 1/s
            1/(s + cr)          -> 1/(1/s + cr)                = (1/cr)*s / (s + (1/cr))
            1/(s^2 + c1*s + c0) -> 1/((1/s)^2 + c1*(1/s) + c0) = (1/c0)*s^2 / (s^2 + (c1/c0)*s + 1/c0)

         Check whether transformed roots are also conjugate complex:
            c0 - c1^2/4 > 0  -> (1/c0) - (c1/c0)^2 / 4
                                = (c0 - c1^2/4) / c0^2 > 0
            It is therefore guaranteed that the roots remain conjugate complex

         Change filter coefficients according to transformation new(s) = s/w_cut
            s + 1/cr                -> (s/w) + 1/cr                   = (s + w/cr)/w
            s^2 + (c1/c0)*s + 1/c0  -> (s/w)^2 + (c1/c0)*(s/w) + 1/c0 = (s^2 + (w*c1/c0)*s + (w^2/c0))/w^2
      */
      for i in 1:size(cr_in,1) loop
         cr[i] := w_cut/cr_in[i];
      end for;

      for i in 1:size(c0_in,1) loop
         c0[i] := w_cut2/c0_in[i];
         c1[i] := w_cut*c1_in[i]/c0_in[i];
      end for;

    end highPass;

* * * * *

[Modelica.Blocks.Continuous.Internal.Filter.coefficients](Modelica_Blocks_Continuous_Internal_Filter_coefficients.html#Modelica.Blocks.Continuous.Internal.Filter.coefficients).bandPass
========================================================================================================================================================================================

**Return band pass filter coefficients at given cut-off frequency**

Information
-----------

::

::

Inputs
------

  -------------------------------------------------------------------------
  Type                        Name        Defa Description
                                          ult  
  --------------------------- ----------- ---- ----------------------------
  Real                        cr\_in[:]        Coefficients of real poles

  Real                        c0\_in[:]        Coefficients of s\^0 term if
                                               conjugate complex pole

  Real                        c1\_in[size      Coefficients of s\^1 term if
                              (c0\_in,         conjugate complex pole
                              1)]              

  [Frequency](Modelica_SIunit f\_min           Band of band pass filter is
  s.html#Modelica.SIunits.Fre                  f\_min (A=-3db) .. f\_max
  quency)                                      (A=-3db) [Hz]

  [Frequency](Modelica_SIunit f\_max           Upper band frequency [Hz]
  s.html#Modelica.SIunits.Fre                  
  quency)                                      
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type  Name                          Description
  ----- ----------------------------- ------------------------------------
  Real  cr[0]                         Coefficient of real pole

  Real  c0[size(cr\_in, 1) +          Coefficients of s\^0 term if
        2\*size(c0\_in, 1)]           conjugate complex pole

  Real  c1[size(cr\_in, 1) +          Coefficients of s\^1 term if
        2\*size(c0\_in, 1)]           conjugate complex pole

  Real  cn                            Numerator coefficient of the PT2
                                      terms
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function bandPass 
      "Return band pass filter coefficients at given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles";
      input Real c0_in[:] "Coefficients of s^0 term if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";
      input Modelica.SIunits.Frequency f_min 
        "Band of band pass filter is f_min (A=-3db) .. f_max (A=-3db)";
      input Modelica.SIunits.Frequency f_max "Upper band frequency";

      output Real cr[0] "Coefficient of real pole";
      output Real c0[size(cr_in,1) + 2*size(c0_in,1)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[size(cr_in,1) + 2*size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";
      output Real cn "Numerator coefficient of the PT2 terms";
    protected 
      constant Real pi=Modelica.Constants.pi;
      Modelica.SIunits.Frequency f0 = sqrt(f_min*f_max);
      Modelica.SIunits.AngularVelocity w_cut=2*pi*f0 "Cut-off angular frequency";
      Modelica.SIunits.AngularVelocity w_band = (f_max - f_min) / f0;
      Real w_cut2=w_cut*w_cut;
      Real c;
      Real alpha;
      Integer j;
    algorithm 
      assert(f_min > 0 and f_min < f_max, "Band frequencies f_min and f_max are wrong");

        /* The band pass filter is derived from the low pass filter by
           the transformation new(s) = (s + 1/s)/w   (w = w_band = (f_max - f_min)/sqrt(f_max*f_min) )

           1/(s + cr)         -> 1/(s/w + 1/s/w) + cr)
                                 = w*s / (s^2 + cr*w*s + 1)

           1/(s^2 + c1*s + c0) -> 1/( (s+1/s)^2/w^2 + c1*(s + 1/s)/w + c0 )
                                  = 1 / ( s^2 + 1/s^2 + 2)/w^2 + (s + 1/s)*c1/w + c0 )
                                  = w^2*s^2 / (s^4 + 2*s^2 + 1 + (s^3 + s)*c1*w + c0*w^2*s^2)
                                  = w^2*s^2 / (s^4 + c1*w*s^3 + (2+c0*w^2)*s^2 + c1*w*s + 1)

                                  Assume the following description with PT2:
                                  = w^2*s^2 /( (s^2 + s*(c/alpha) + 1/alpha^2)*
                                               (s^2 + s*(c*alpha) + alpha^2) )
                                  = w^2*s^2 / ( s^4 + c*(alpha + 1/alpha)*s^3
                                                    + (alpha^2 + 1/alpha^2 + c^2)*s^2
                                                    + c*(alpha + 1/alpha)*s + 1 )

                                  and therefore:
                                    c*(alpha + 1/alpha) = c1*w       -> c = c1*w / (alpha + 1/alpha)
                                                                          = c1*w*alpha/(1+alpha^2)
                                    alpha^2 + 1/alpha^2 + c^2 = 2+c0*w^2 -> equation to determine alpha
                                    alpha^4 + 1 + c1^2*w^2*alpha^4/(1+alpha^2)^2 = (2+c0*w^2)*alpha^2
                                    or z = alpha^2
                                    z^2 + c^1^2*w^2*z^2/(1+z)^2 - (2+c0*w^2)*z + 1 = 0

         Check whether roots remain conjugate complex
            c0 - (c1/2)^2 > 0:    1/alpha^2 - (c/alpha)^2/4
                                  = 1/alpha^2*(1 - c^2/4)    -> not possible to figure this out

         Afterwards, change filter coefficients according to transformation new(s) = s/w_cut
            w_band*s/(s^2 + c1*s + c0)  -> w_band*(s/w)/((s/w)^2 + c1*(s/w) + c0 =
                                           (w_band/w)*s/(s^2 + (c1*w)*s + (c0*w^2))/w^2) =
                                           (w_band*w)*s/(s^2 + (c1*w)*s + (c0*w^2))
        */
        for i in 1:size(cr_in,1) loop
           c1[i] := w_cut*cr_in[i]*w_band;
           c0[i] := w_cut2;
        end for;

        for i in 1:size(c1_in,1) loop
          alpha :=
            Modelica.Blocks.Continuous.Internal.Filter.Utilities.bandPassAlpha(
                  c1_in[i],
                  c0_in[i],
                  w_band);
           c       := c1_in[i]*w_band / (alpha + 1/alpha);
           j       := size(cr_in,1) + 2*i - 1;
           c1[j]   := w_cut*c/alpha;
           c1[j+1] := w_cut*c*alpha;
           c0[j]   := w_cut2/alpha^2;
           c0[j+1] := w_cut2*alpha^2;
        end for;

        cn :=w_band*w_cut;

    end bandPass;

* * * * *

[Modelica.Blocks.Continuous.Internal.Filter.coefficients](Modelica_Blocks_Continuous_Internal_Filter_coefficients.html#Modelica.Blocks.Continuous.Internal.Filter.coefficients).bandStop
========================================================================================================================================================================================

**Return band stop filter coefficients at given cut-off frequency**

Information
-----------

::

::

Inputs
------

  -------------------------------------------------------------------------
  Type                        Name        Defa Description
                                          ult  
  --------------------------- ----------- ---- ----------------------------
  Real                        cr\_in[:]        Coefficients of real poles

  Real                        c0\_in[:]        Coefficients of s\^0 term if
                                               conjugate complex pole

  Real                        c1\_in[size      Coefficients of s\^1 term if
                              (c0\_in,         conjugate complex pole
                              1)]              

  [Frequency](Modelica_SIunit f\_min           Band of band stop filter is
  s.html#Modelica.SIunits.Fre                  f\_min (A=-3db) .. f\_max
  quency)                                      (A=-3db) [Hz]

  [Frequency](Modelica_SIunit f\_max           Upper band frequency [Hz]
  s.html#Modelica.SIunits.Fre                  
  quency)                                      
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type  Name                          Description
  ----- ----------------------------- ------------------------------------
  Real  cr[0]                         Coefficient of real pole

  Real  c0[size(cr\_in, 1) +          Coefficients of s\^0 term if
        2\*size(c0\_in, 1)]           conjugate complex pole

  Real  c1[size(cr\_in, 1) +          Coefficients of s\^1 term if
        2\*size(c0\_in, 1)]           conjugate complex pole
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function bandStop 
      "Return band stop filter coefficients at given cut-off frequency"

      input Real cr_in[:] "Coefficients of real poles";
      input Real c0_in[:] "Coefficients of s^0 term if conjugate complex pole";
      input Real c1_in[size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";
      input Modelica.SIunits.Frequency f_min 
        "Band of band stop filter is f_min (A=-3db) .. f_max (A=-3db)";
      input Modelica.SIunits.Frequency f_max "Upper band frequency";

      output Real cr[0] "Coefficient of real pole";
      output Real c0[size(cr_in,1) + 2*size(c0_in,1)] 
        "Coefficients of s^0 term if conjugate complex pole";
      output Real c1[size(cr_in,1) + 2*size(c0_in,1)] 
        "Coefficients of s^1 term if conjugate complex pole";
    protected 
      constant Real pi=Modelica.Constants.pi;
      Modelica.SIunits.Frequency f0 = sqrt(f_min*f_max);
      Modelica.SIunits.AngularVelocity w_cut=2*pi*f0 "Cut-off angular frequency";
      Modelica.SIunits.AngularVelocity w_band = (f_max - f_min) / f0;
      Real w_cut2=w_cut*w_cut;
      Real c;
      Real ww;
      Real alpha;
      Integer j;
    algorithm 
      assert(f_min > 0 and f_min < f_max, "Band frequencies f_min and f_max are wrong");

        /* The band pass filter is derived from the low pass filter by
           the transformation new(s) = (s + 1/s)/w   (w = w_band = (f_max - f_min)/sqrt(f_max*f_min) )

           1/(s + cr)         -> 1/(s/w + 1/s/w) + cr)
                                 = w*s / (s^2 + cr*w*s + 1)

           1/(s^2 + c1*s + c0) -> 1/( (s+1/s)^2/w^2 + c1*(s + 1/s)/w + c0 )
                                  = 1 / ( s^2 + 1/s^2 + 2)/w^2 + (s + 1/s)*c1/w + c0 )
                                  = w^2*s^2 / (s^4 + 2*s^2 + 1 + (s^3 + s)*c1*w + c0*w^2*s^2)
                                  = w^2*s^2 / (s^4 + c1*w*s^3 + (2+c0*w^2)*s^2 + c1*w*s + 1)

                                  Assume the following description with PT2:
                                  = w^2*s^2 /( (s^2 + s*(c/alpha) + 1/alpha^2)*
                                               (s^2 + s*(c*alpha) + alpha^2) )
                                  = w^2*s^2 / ( s^4 + c*(alpha + 1/alpha)*s^3
                                                    + (alpha^2 + 1/alpha^2 + c^2)*s^2
                                                    + c*(alpha + 1/alpha)*s + 1 )

                                  and therefore:
                                    c*(alpha + 1/alpha) = c1*w       -> c = c1*w / (alpha + 1/alpha)
                                                                          = c1*w*alpha/(1+alpha^2)
                                    alpha^2 + 1/alpha^2 + c^2 = 2+c0*w^2 -> equation to determine alpha
                                    alpha^4 + 1 + c1^2*w^2*alpha^4/(1+alpha^2)^2 = (2+c0*w^2)*alpha^2
                                    or z = alpha^2
                                    z^2 + c^1^2*w^2*z^2/(1+z)^2 - (2+c0*w^2)*z + 1 = 0

           The band stop filter is derived from the low pass filter by
           the transformation new(s) = w/( (s + 1/s) )   (w = w_band = (f_max - f_min)/sqrt(f_max*f_min) )

           cr/(s + cr)         -> 1/( w/(s + 1/s) ) + cr)
                                  = (s^2 + 1) / (s^2 + (w/cr)*s + 1)

           c0/(s^2 + c1*s + c0) -> c0/( w^2/(s + 1/s)^2 + c1*w/(s + 1/s) + c0 )
                                   = c0*(s^2 + 1)^2 / (s^4 + c1*w*s^3/c0 + (2+w^2/b)*s^2 + c1*w*s/c0 + 1)

                                   Assume the following description with PT2:
                                   = c0*(s^2 + 1)^2 / ( (s^2 + s*(c/alpha) + 1/alpha^2)*
                                                        (s^2 + s*(c*alpha) + alpha^2) )
                                   = c0*(s^2 + 1)^2 / (  s^4 + c*(alpha + 1/alpha)*s^3
                                                             + (alpha^2 + 1/alpha^2 + c^2)*s^2
                                                             + c*(alpha + 1/alpha)*p + 1 )

                                and therefore:
                                  c*(alpha + 1/alpha) = c1*w/b         -> c = c1*w/(c0*(alpha + 1/alpha))
                                  alpha^2 + 1/alpha^2 + c^2 = 2+w^2/c0 -> equation to determine alpha
                                  alpha^4 + 1 + (c1*w/c0*alpha^2)^2/(1+alpha^2)^2 = (2+w^2/c0)*alpha^2
                                  or z = alpha^2
                                  z^2 + (c1*w/c0*z)^2/(1+z)^2 - (2+w^2/c0)*z + 1 = 0

                                same as:  ww = w/c0
                                  z^2 + (c1*ww*z)^2/(1+z)^2 - (2+c0*ww)*z + 1 = 0  -> same equation as for BandPass

         Afterwards, change filter coefficients according to transformation new(s) = s/w_cut
            c0*(s^2+1)(s^2 + c1*s + c0)  -> c0*((s/w)^2 + 1) / ((s/w)^2 + c1*(s/w) + c0 =
                                            c0/w^2*(s^2 + w^2) / (s^2 + (c1*w)*s + (c0*w^2))/w^2) =
                                            (s^2 + c0*w^2) / (s^2 + (c1*w)*s + (c0*w^2))
        */
        for i in 1:size(cr_in,1) loop
           c1[i] := w_cut*w_band/cr_in[i];
           c0[i] := w_cut2;
        end for;

        for i in 1:size(c1_in,1) loop
           ww      := w_band/c0_in[i];
          alpha :=
            Modelica.Blocks.Continuous.Internal.Filter.Utilities.bandPassAlpha(
                  c1_in[i],
                  c0_in[i],
                  ww);
           c       := c1_in[i]*ww / (alpha + 1/alpha);
           j       := size(cr_in,1) + 2*i - 1;
           c1[j]   := w_cut*c/alpha;
           c1[j+1] := w_cut*c*alpha;
           c0[j]   := w_cut2/alpha^2;
           c0[j+1] := w_cut2*alpha^2;
        end for;

    end bandStop;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:36 2010.
