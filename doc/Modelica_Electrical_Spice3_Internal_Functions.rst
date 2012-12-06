=============================================
Modelica.Electrical.Spice3.Internal.Functions
=============================================

`Modelica.Electrical.Spice3.Internal <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal>`_.Functions
-------------------------------------------------------------------------------------------------------------------------------

**Equations for semiconductor calculation**

Information
~~~~~~~~~~~

::

The package Equation contains functions that are needed to model the
semiconductor models. Some of these functions are used by several
semiconductor models.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Name                                                                                                                                                                                                                                                       | Description                                     |
+============================================================================================================================================================================================================================================================+=================================================+
| |image15| `energyGapDepTemp <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTemp>`_                                                                                                          | Temperature dependency of energy gap            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image16| `junctionPotDepTemp <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionPotDepTemp>`_                                                                                                      | Temperature dependency of junction potential    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image17| `saturationCurDepTempSPICE3MOSFET <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3MOSFET>`_                                                                          | Temperature dependency of saturation current    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image18| `junctionVCrit <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionVCrit>`_                                                                                                                | Voltage limitation                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image19| `junctionParamDepTempSPICE3 <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionParamDepTempSPICE3>`_                                                                                      | Temperature dependency of junction parameters   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image20| `junctionCapCoeffs <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionCapCoeffs>`_                                                                                                        | Coefficient calculation                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image21| `junction2SPICE3MOSFET <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junction2SPICE3MOSFET>`_                                                                                                | Junction current and conductance calculation    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image22| `junctionCap <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionCap>`_                                                                                                                    | Junction capacity                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image23| `saturationCurDepTempSPICE3 <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3>`_                                                                                      | Temperature dependency of saturation current    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image24| `junctionVoltage23SPICE3 <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionVoltage23SPICE3>`_                                                                                            | Junction Voltage                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image25| `junction3 <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junction3>`_                                                                                                                        | Junction current and conductance calculation    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image26| `junctionCapTransTime <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junctionCapTransTime>`_                                                                                                  | Junction capacitance transittime calculation    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image27| `junction2 <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.junction2>`_                                                                                                                        | Junction current and conductance calculation    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image28| `resDepTemp <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.resDepTemp>`_                                                                                                                      | Temperature dependent conductance               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image29| `resDepGeom <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions.resDepGeom>`_                                                                                                                      | Resistance dependent from width and narrow      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.energyGapDepTemp
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependency of energy gap**

Information
~~~~~~~~~~~

::

This internal function calculates the temperature dependent energy gap
based on the actual temperature, and two coefficients given as input to
the function.

::

Inputs
~~~~~~

+--------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                         | Name   | Default   | Description       |
+==============================================================+========+===========+===================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | temp   |           | Temperature [K]   |
+--------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+----------------------+
| Type                                                          | Name   | Description          |
+===============================================================+========+======================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | ret    | Output voltage [V]   |
+---------------------------------------------------------------+--------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function energyGapDepTemp "Temperature dependency of energy gap"

      input Modelica.SIunits.Temp_K temp "Temperature";
      output Modelica.SIunits.Voltage ret "Output voltage";

    protected 
       Modelica.SIunits.Voltage gap0 =   1.16;
       Real coeff1( final unit = "V/K") = 7.02e-4;
       Modelica.SIunits.Temp_K coeff2 = 1108.0;

    algorithm 
      ret := gap0 - (coeff1 * temp * temp) / (temp + coeff2);

    end energyGapDepTemp;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionPotDepTemp
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependency of junction potential**

Information
~~~~~~~~~~~

::

This internal function calculates the temperature dependent junction
potential based on the actual and the nominal temperature.

::

Inputs
~~~~~~

+---------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                          | Name   | Default   | Description               |
+===============================================================+========+===========+===========================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | phi0   |           | [V]                       |
+---------------------------------------------------------------+--------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp   |           | Device Temperature [K]    |
+---------------------------------------------------------------+--------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | tnom   |           | Nominal Temperature [K]   |
+---------------------------------------------------------------+--------+-----------+---------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+----------------------+
| Type                                                          | Name   | Description          |
+===============================================================+========+======================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | ret    | Output voltage [V]   |
+---------------------------------------------------------------+--------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionPotDepTemp 
      "Temperature dependency of junction potential"

      input Modelica.SIunits.Voltage phi0;
      input Modelica.SIunits.Temp_K temp "Device Temperature";
      input Modelica.SIunits.Temp_K tnom "Nominal Temperature";

      output Modelica.SIunits.Voltage ret "Output voltage";

    protected 
      Modelica.SIunits.Voltage phibtemp;
      Modelica.SIunits.Voltage phibtnom;
      Modelica.SIunits.Voltage vt;

    algorithm 
      phibtemp := energyGapDepTemp( temp);
      phibtnom := energyGapDepTemp( tnom);
      vt       := SpiceConstants.CONSTKoverQ * temp;
      ret := (phi0 - phibtnom) * temp / tnom + phibtemp + vt * 3 * Modelica.Math.log( tnom / temp);

    end junctionPotDepTemp;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.saturationCurDepTempSPICE3MOSFET
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependency of saturation current**

Information
~~~~~~~~~~~

::

This internal function calculates the temperature dependent saturation
current based on the actual and the nominal temperature.

::

Inputs
~~~~~~

+---------------------------------------------------------------+-----------+-----------+---------------------------+
| Type                                                          | Name      | Default   | Description               |
+===============================================================+===========+===========+===========================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | satcur0   |           | Satuaration current [A]   |
+---------------------------------------------------------------+-----------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp      |           | Device Temperature [K]    |
+---------------------------------------------------------------+-----------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | tnom      |           | Nominal Temperature [K]   |
+---------------------------------------------------------------+-----------+-----------+---------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+----------------------+
| Type                                                          | Name   | Description          |
+===============================================================+========+======================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | ret    | Output current [A]   |
+---------------------------------------------------------------+--------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function saturationCurDepTempSPICE3MOSFET 
      "Temperature dependency of saturation current"

      input Modelica.SIunits.Current satcur0 "Satuaration current";
      input Modelica.SIunits.Temp_K temp "Device Temperature";
      input Modelica.SIunits.Temp_K tnom "Nominal Temperature";

      output Modelica.SIunits.Current ret "Output current";

    protected 
      Modelica.SIunits.Voltage vt;
      Modelica.SIunits.Voltage vtnom;
      Modelica.SIunits.Voltage energygaptnom;
      Modelica.SIunits.Voltage energygaptemp;

    algorithm 
      vt            := SpiceConstants.CONSTKoverQ * temp;
      vtnom         := SpiceConstants.CONSTKoverQ * tnom;
      energygaptnom := energyGapDepTemp( tnom);
      energygaptemp := energyGapDepTemp( temp);
      ret           := satcur0  * exp( energygaptnom / vtnom - energygaptemp / vt);

    end saturationCurDepTempSPICE3MOSFET;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionVCrit
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Voltage limitation**

Information
~~~~~~~~~~~

::

This internal function limits the junction voltage. If it increases
1.e10, it is hold to be constant at that value.

::

Inputs
~~~~~~

+---------------------------------------------------------------+----------+-----------+--------------------------+
| Type                                                          | Name     | Default   | Description              |
+===============================================================+==========+===========+==========================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp     |           | temperature [K]          |
+---------------------------------------------------------------+----------+-----------+--------------------------+
| Real                                                          | ncoeff   |           |                          |
+---------------------------------------------------------------+----------+-----------+--------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | satcur   |           | Saturation current [A]   |
+---------------------------------------------------------------+----------+-----------+--------------------------+

Outputs
~~~~~~~

+--------+--------+----------------+
| Type   | Name   | Description    |
+========+========+================+
| Real   | ret    | Output value   |
+--------+--------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionVCrit "Voltage limitation"

      input Modelica.SIunits.Temp_K temp "temperature";
      input Real ncoeff;
      input Modelica.SIunits.Current satcur "Saturation current";

      output Real ret "Output value";

    protected 
      Modelica.SIunits.Voltage vte;

    algorithm 
      vte := SpiceConstants.CONSTKoverQ * temp * ncoeff;
      ret := vte * Modelica.Math.log( vte / (sqrt(2) * satcur));
      ret := if ( ret > 1e10) then  1e10 else ret;

    end junctionVCrit;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionParamDepTempSPICE3
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependency of junction parameters**

Information
~~~~~~~~~~~

::

This internal function calculates several temperature dependent junction
parameters based on the actual and the nominal temperature.

::

Inputs
~~~~~~

+--------------------------------------------------------------+----------+-----------+---------------------------+
| Type                                                         | Name     | Default   | Description               |
+==============================================================+==========+===========+===========================+
| Real                                                         | phi0     |           |                           |
+--------------------------------------------------------------+----------+-----------+---------------------------+
| Real                                                         | cap0     |           |                           |
+--------------------------------------------------------------+----------+-----------+---------------------------+
| Real                                                         | mcoeff   |           |                           |
+--------------------------------------------------------------+----------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | temp     |           | Device temperature [K]    |
+--------------------------------------------------------------+----------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_   | tnom     |           | Nominal temperature [K]   |
+--------------------------------------------------------------+----------+-----------+---------------------------+

Outputs
~~~~~~~

+--------+---------------+------------------------+
| Type   | Name          | Description            |
+========+===============+========================+
| Real   | junctionpot   | Junction potential     |
+--------+---------------+------------------------+
| Real   | jucntioncap   | Junction capacitance   |
+--------+---------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionParamDepTempSPICE3 
      "Temperature dependency of junction parameters"

      input Real phi0;
      input Real cap0;
      input Real mcoeff;
      input Modelica.SIunits.Temp_K temp "Device temperature";
      input Modelica.SIunits.Temp_K tnom "Nominal temperature";

      output Real junctionpot "Junction potential";
      output Real jucntioncap "Junction capacitance";

    protected 
      Real phibtemp;
      Real phibtnom;
      Real vt;
      Real vtnom;
      Real arg;
      Real fact2;
      Real pbfact;
      Real arg1;
      Real fact1;
      Real pbfact1;
      Real pbo;
      Real gmaold;
      Real gmanew;

    algorithm 
      phibtemp    := energyGapDepTemp( temp);
      phibtnom    := energyGapDepTemp( tnom);
      vt          := SpiceConstants.CONSTKoverQ * temp;
      vtnom       := SpiceConstants.CONSTKoverQ * tnom;
      arg         := -phibtemp/(2*Modelica.Constants.k*temp) +
                     1.1150877/(Modelica.Constants.k*(2*SpiceConstants.REFTEMP));
      fact2       := temp/SpiceConstants.REFTEMP;
      pbfact      := -2*vt*(1.5*Modelica.Math.log(fact2)+SpiceConstants.CHARGE*arg);
      arg1        := -phibtnom/(Modelica.Constants.k*2*tnom) +
                     1.1150877/(2*Modelica.Constants.k*SpiceConstants.REFTEMP);
      fact1       := tnom/SpiceConstants.REFTEMP;
      pbfact1     := -2 * vtnom*(1.5*Modelica.Math.log(fact1)+SpiceConstants.CHARGE*arg1);
      pbo         := (phi0-pbfact1)/fact1;
      junctionpot := pbfact+fact2*pbo;
      gmaold      := (phi0 -pbo)/pbo;
      gmanew      := (junctionpot-pbo)/pbo;
      jucntioncap := cap0 /
                     (1+mcoeff* (400e-6*(tnom-SpiceConstants.REFTEMP)-gmaold))  *
                     (1+mcoeff* (400e-6*(temp-SpiceConstants.REFTEMP)-gmanew));

    end junctionParamDepTempSPICE3;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionCapCoeffs
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Coefficient calculation**

Information
~~~~~~~~~~~

::

This internal auxiliary function calculates some coefficients which are
necessary for the calculation of junction capacities.

::

Inputs
~~~~~~

+--------+--------+-----------+---------------+
| Type   | Name   | Default   | Description   |
+========+========+===========+===============+
| Real   | mj     |           |               |
+--------+--------+-----------+---------------+
| Real   | fc     |           |               |
+--------+--------+-----------+---------------+
| Real   | phij   |           |               |
+--------+--------+-----------+---------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | f1     |               |
+--------+--------+---------------+
| Real   | f2     |               |
+--------+--------+---------------+
| Real   | f3     |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionCapCoeffs "Coefficient calculation"

      input Real mj;
      input Real fc;
      input Real phij;

      output Real f1;
      output Real f2;
      output Real f3;

    protected 
      Real xfc;

    algorithm 
      xfc := Modelica.Math.log(1 - fc);
      f1  := phij * (1 - exp(( 1 - mj)  * xfc)) / (1 - mj);
      f2  := exp(( 1 + mj) * xfc);
      f3  := 1 - fc * (1 + mj);

    end junctionCapCoeffs;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junction2SPICE3MOSFET
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Junction current and conductance calculation**

Information
~~~~~~~~~~~

::

This internal function calculates both the junction current and the
junction conductance dependent from the given voltage.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------+-----------+-----------+--------------------------+
| Type                                                                  | Name      | Default   | Description              |
+=======================================================================+===========+===========+==========================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | current   |           | Input current [A]        |
+-----------------------------------------------------------------------+-----------+-----------+--------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | cond      |           | Input conductance [S]    |
+-----------------------------------------------------------------------+-----------+-----------+--------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | voltage   |           | Input voltage [V]        |
+-----------------------------------------------------------------------+-----------+-----------+--------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_            | temp      |           | Device Temperature [K]   |
+-----------------------------------------------------------------------+-----------+-----------+--------------------------+
| Real                                                                  | ncoeff    |           |                          |
+-----------------------------------------------------------------------+-----------+-----------+--------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | satcur    |           | Saturation current [A]   |
+-----------------------------------------------------------------------+-----------+-----------+--------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------------+------------------------------+
| Type                                                                  | Name           | Description                  |
+=======================================================================+================+==============================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | out\_current   | Calculated current [A]       |
+-----------------------------------------------------------------------+----------------+------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | out\_cond      | Calculated conductance [S]   |
+-----------------------------------------------------------------------+----------------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junction2SPICE3MOSFET 
      "Junction current and conductance calculation"

      input Modelica.SIunits.Current current "Input current";
      input Modelica.SIunits.Conductance cond "Input conductance";
      input Modelica.SIunits.Voltage voltage "Input voltage";
      input Modelica.SIunits.Temp_K temp "Device Temperature";
      input Real ncoeff;
      input Modelica.SIunits.Current satcur "Saturation current";

      output Modelica.SIunits.Current out_current "Calculated current";
      output Modelica.SIunits.Conductance out_cond "Calculated conductance";

    protected 
      Modelica.SIunits.Voltage vte;
      Real max_exponent;
      Real evbd;
      Real evd;
      constant Real max_exp =     50.;
      constant Modelica.SIunits.Current max_current = 1.e4;

    algorithm 
      out_current := current;
      out_cond := cond;
      if (satcur > 1e-101) then
        vte := SpiceConstants.CONSTKoverQ * temp * ncoeff;

        max_exponent := Modelica.Math.log(max_current/satcur);
        max_exponent := min(max_exp, max_exponent);

        if (voltage <= 0) then
          out_cond    := satcur/vte;
          out_current := out_cond * voltage;
          out_cond    := out_cond + SpiceConstants.CKTgmin;
        elseif (voltage >= max_exponent * vte) then
          evd         := exp( max_exponent);
          out_cond    := satcur * evd / vte;
          out_current := satcur * (evd - 1) + out_cond * (voltage - max_exponent * vte);

        else
          evbd        := exp( voltage / vte);
          out_cond    := satcur*evbd/vte + SpiceConstants.CKTgmin;
          out_current := satcur *(evbd-1);
        end if;
      else
        out_current := 0.;
        out_cond    := 0.;
      end if;

    end junction2SPICE3MOSFET;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionCap
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Junction capacity**

Information
~~~~~~~~~~~

::

This internal function calculates the charge and the capacitance of the
junction capacity dependent from the given voltage.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| Type                                                                  | Name      | Default   | Description             |
+=======================================================================+===========+===========+=========================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | capin     |           | Input capacitance [F]   |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | voltage   |           | Input voltage [V]       |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | depcap    |           | [V]                     |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| Real                                                                  | mj        |           |                         |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| Real                                                                  | phij      |           |                         |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | f1        |           | [V]                     |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| Real                                                                  | f2        |           |                         |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+
| Real                                                                  | f3        |           |                         |
+-----------------------------------------------------------------------+-----------+-----------+-------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------+--------------------------+
| Type                                                                  | Name     | Description              |
+=======================================================================+==========+==========================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | capout   | Output capacitance [F]   |
+-----------------------------------------------------------------------+----------+--------------------------+
| `Charge <Modelica_SIunits.html#Modelica.SIunits.Charge>`_             | charge   | Output charge [C]        |
+-----------------------------------------------------------------------+----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionCap "Junction capacity"

      input Modelica.SIunits.Capacitance capin "Input capacitance";
      input Modelica.SIunits.Voltage voltage "Input voltage";
      input Modelica.SIunits.Voltage depcap;
      input Real mj;
      input Real phij;
      input Modelica.SIunits.Voltage f1;
      input Real f2;
      input Real f3;

      output Modelica.SIunits.Capacitance capout "Output capacitance";
      output Modelica.SIunits.Charge charge "Output charge";

    protected 
      Real arg;
      Real sarg;
      Real czof2;

    algorithm 
      if (voltage < depcap) then
        arg  := 1 - (voltage / phij);
        if (mj == 0.5) then
          sarg := 1 / sqrt(arg);
        else
          sarg := exp( -1 * mj * Modelica.Math.log( arg));
        end if;
        capout := capin * sarg;
        charge := phij * (capin * (1 - arg * sarg) / (1 - mj));
      else
        czof2  := capin / f2;
        capout := czof2 * (f3 + mj * voltage / phij);
        charge := capin * f1 + czof2 *
                  (f3 * (voltage - depcap) + (mj / (2*phij)) * (voltage^2 - depcap^2));
      end if;

    end junctionCap;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.saturationCurDepTempSPICE3
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependency of saturation current**

Information
~~~~~~~~~~~

::

This internal function calculates the temperature dependent saturation
current based on the actual and the nominal temperature.

::

Inputs
~~~~~~

+---------------------------------------------------------------+-----------------+-----------+---------------------------+
| Type                                                          | Name            | Default   | Description               |
+===============================================================+=================+===========+===========================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | satcur0         |           | Saturation current [A]    |
+---------------------------------------------------------------+-----------------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp            |           | Device Temperature [K]    |
+---------------------------------------------------------------+-----------------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | tnom            |           | Nominal Temperature [K]   |
+---------------------------------------------------------------+-----------------+-----------+---------------------------+
| Real                                                          | emissioncoeff   |           |                           |
+---------------------------------------------------------------+-----------------+-----------+---------------------------+
| Real                                                          | energygap       |           |                           |
+---------------------------------------------------------------+-----------------+-----------+---------------------------+
| Real                                                          | satcurexp       |           |                           |
+---------------------------------------------------------------+-----------------+-----------+---------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+--------------------+
| Type                                                          | Name   | Description        |
+===============================================================+========+====================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | ret    | Output value [A]   |
+---------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function saturationCurDepTempSPICE3 
      "Temperature dependency of saturation current"

      input Modelica.SIunits.Current satcur0 "Saturation current";
      input Modelica.SIunits.Temp_K temp "Device Temperature";
      input Modelica.SIunits.Temp_K tnom "Nominal Temperature";
      input Real emissioncoeff;
      input Real energygap;
      input Real satcurexp;

      output Modelica.SIunits.Current ret "Output value";

    protected 
      Modelica.SIunits.Voltage vt;
      Modelica.SIunits.Voltage vte;

    algorithm 
        vt := SpiceConstants.CONSTKoverQ*temp;
      vte := emissioncoeff * vt;
      ret := satcur0 * exp( ((temp / tnom) - 1) * energygap / vte
             + satcurexp / emissioncoeff * Modelica.Math.log( temp / tnom));

    end saturationCurDepTempSPICE3;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionVoltage23SPICE3
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Junction Voltage**

Information
~~~~~~~~~~~

::

This internal function calculates the junction voltage based on the
actual temperature, voltage and saturation current.

::

Inputs
~~~~~~

+---------------------------------------------------------------+----------+-----------+--------------------------+
| Type                                                          | Name     | Default   | Description              |
+===============================================================+==========+===========+==========================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | vb       |           | [V]                      |
+---------------------------------------------------------------+----------+-----------+--------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | ivb      |           | [A]                      |
+---------------------------------------------------------------+----------+-----------+--------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | satcur   |           | Saturation current [A]   |
+---------------------------------------------------------------+----------+-----------+--------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp     |           | Device temperature [K]   |
+---------------------------------------------------------------+----------+-----------+--------------------------+
| Real                                                          | ncoeff   |           |                          |
+---------------------------------------------------------------+----------+-----------+--------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+--------------------+
| Type                                                          | Name   | Description        |
+===============================================================+========+====================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | v23    | Output value [V]   |
+---------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionVoltage23SPICE3 "Junction Voltage"

      input Modelica.SIunits.Voltage vb;
      input Modelica.SIunits.Current ivb;
      input Modelica.SIunits.Current satcur "Saturation current";
      input Modelica.SIunits.Temp_K temp "Device temperature";
      input Real ncoeff;

      output Modelica.SIunits.Voltage v23 "Output value";

    protected 
      Modelica.SIunits.Voltage vt;
      Modelica.SIunits.Current cbv;
      Real tol;
      Integer iter;

    algorithm 
        vt := SpiceConstants.CONSTKoverQ*temp;
      v23 := vb;
      cbv := ivb;

      if (cbv < satcur * vb / vt) then
        cbv := satcur * vb / vt;
      else
          tol := SpiceConstants.CKTreltol*cbv;
        v23 := vb - vt * Modelica.Math.log( 1 + cbv / satcur);
        for iter in 0:24 loop
          v23 := vb - vt * Modelica.Math.log( cbv / satcur + 1 - v23 / vt);
          if (abs( satcur * ( exp(( vb - v23) / vt) - 1 + v23 / vt) - cbv) <= tol) then

          end if;
        end for;
      end if;

    end junctionVoltage23SPICE3;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junction3
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Junction current and conductance calculation**

Information
~~~~~~~~~~~

::

This internal function calculates both the junction current and the
junction conductance dependent from the given voltage.

::

Inputs
~~~~~~

+---------------------------------------------------------------+-----------+-----------+--------------------------+
| Type                                                          | Name      | Default   | Description              |
+===============================================================+===========+===========+==========================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | voltage   |           | Input voltage [V]        |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp      |           | Device Temperature [K]   |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| Real                                                          | ncoeff    |           |                          |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | satcur    |           | Saturation current [A]   |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | v23       |           | [V]                      |
+---------------------------------------------------------------+-----------+-----------+--------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                  | Name      | Description              |
+=======================================================================+===========+==========================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | current   | Output curret [A]        |
+-----------------------------------------------------------------------+-----------+--------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | cond      | Output conductance [S]   |
+-----------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junction3 "Junction current and conductance calculation"

      input Modelica.SIunits.Voltage voltage "Input voltage";
      input Modelica.SIunits.Temp_K temp "Device Temperature";
      input Real ncoeff;
      input Modelica.SIunits.Current satcur "Saturation current";
      input Modelica.SIunits.Voltage v23;

      output Modelica.SIunits.Current current "Output curret";
      output Modelica.SIunits.Conductance cond "Output conductance";

    protected 
      constant Real max_exp = 50.0;
      constant Modelica.SIunits.Current max_current = 1.0e4;
      Modelica.SIunits.Voltage vte;
      Real max_exponent;
      Real evd;
      Real arg;
      Real evrev;
      Modelica.SIunits.Voltage vr;

    algorithm 
      if (satcur > 1.0e-101) then
          vte := SpiceConstants.CONSTKoverQ*temp*ncoeff;
        max_exponent := Modelica.Math.log( max_current / satcur);
        max_exponent := min( max_exp, max_exponent);
        if (voltage >= max_exponent * vte) then
          evd     := exp( max_exponent);
          cond    := satcur * evd / vte;
          current := satcur * (evd - 1) + cond * (voltage - max_exponent * vte);
        elseif (voltage >= -3 * vte) then
          evd     := exp( voltage / vte);
            current := satcur*(evd - 1) + SpiceConstants.CKTgmin*voltage;
            cond := satcur*evd/vte + SpiceConstants.CKTgmin;
        elseif (voltage >= -v23) then
            arg := 3*vte/(voltage*SpiceConstants.CONSTe);
          arg     := arg * arg * arg;
            current := -1.*satcur*(1 + arg) + SpiceConstants.CKTgmin*voltage;
            cond := satcur*3*arg/voltage + SpiceConstants.CKTgmin;
        else
          vr := -( v23 + voltage);
          if (vr > max_exponent * vte) then
            evd     := exp( max_exponent);
            cond    := satcur * evd / vte;
            current := -1. * (satcur * (evd - 1) + cond * (vr - max_exponent * vte));
          else
            evrev   := exp( vr / vte);
              current := -1.*satcur*evrev + SpiceConstants.CKTgmin*voltage;
              cond := satcur*evrev/vte + SpiceConstants.CKTgmin;
          end if;
        end if;
      else
        current := 0.0;
        cond    := 0.0;
      end if;

    end junction3;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junctionCapTransTime
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Junction capacitance transittime calculation**

Information
~~~~~~~~~~~

::

This internal function calculates the capacitance and the charge
dependent on the transittime.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| Type                                                                  | Name          | Default   | Description             |
+=======================================================================+===============+===========+=========================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | capin         |           | Input capacitance [F]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | voltage       |           | Input voltage [V]       |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | depcap        |           | [V]                     |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| Real                                                                  | mj            |           |                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| Real                                                                  | phij          |           |                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | f1            |           | [V]                     |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| Real                                                                  | f2            |           |                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| Real                                                                  | f3            |           |                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                 | transittime   |           | [s]                     |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | conduct       |           | Input conductance [S]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | current       |           | Input current [A]       |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------+--------------------------+
| Type                                                                  | Name     | Description              |
+=======================================================================+==========+==========================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | capout   | Output capacitance [F]   |
+-----------------------------------------------------------------------+----------+--------------------------+
| `Charge <Modelica_SIunits.html#Modelica.SIunits.Charge>`_             | charge   | Output charge [C]        |
+-----------------------------------------------------------------------+----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junctionCapTransTime 
      "Junction capacitance transittime calculation"

      input Modelica.SIunits.Capacitance capin "Input capacitance";
      input Modelica.SIunits.Voltage voltage "Input voltage";
      input Modelica.SIunits.Voltage depcap;
      input Real mj;
      input Real phij;
      input Modelica.SIunits.Voltage f1;
      input Real f2;
      input Real f3;
      input Modelica.SIunits.Time transittime;
      input Modelica.SIunits.Conductance conduct "Input conductance";
      input Modelica.SIunits.Current current "Input current";

      output Modelica.SIunits.Capacitance capout "Output capacitance";
      output Modelica.SIunits.Charge charge "Output charge";

    algorithm 
        (capout,charge) := junctionCap(
              capin,
              voltage,
              depcap,
              mj,
              phij,
              f1,
              f2,
              f3);
      capout := capout + transittime * conduct;
      charge := charge + transittime * current;

    end junctionCapTransTime;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.junction2
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Junction current and conductance calculation**

Information
~~~~~~~~~~~

::

This internal function calculates both the junction current and the
junction conductance dependent from the given voltage.

::

Inputs
~~~~~~

+---------------------------------------------------------------+-----------+-----------+--------------------------+
| Type                                                          | Name      | Default   | Description              |
+===============================================================+===========+===========+==========================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | voltage   |           | Input Voltage [V]        |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_    | temp      |           | Device Temperature [K]   |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| Real                                                          | ncoeff    |           |                          |
+---------------------------------------------------------------+-----------+-----------+--------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | satcur    |           | Saturation current [A]   |
+---------------------------------------------------------------+-----------+-----------+--------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                  | Name      | Description              |
+=======================================================================+===========+==========================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | current   | Output current [A]       |
+-----------------------------------------------------------------------+-----------+--------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | cond      | Output conductance [S]   |
+-----------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function junction2 "Junction current and conductance calculation"

      input Modelica.SIunits.Voltage voltage "Input Voltage";
      input Modelica.SIunits.Temp_K temp "Device Temperature";
      input Real ncoeff;
      input Modelica.SIunits.Current satcur "Saturation current";

      output Modelica.SIunits.Current current "Output current";
      output Modelica.SIunits.Conductance cond "Output conductance";

    protected 
      constant Real max_exp = 50.0;
      constant Real max_current = 1.0e4;
      Modelica.SIunits.Voltage vte;
      Real max_exponent;
      Real evd;
      Real arg;

    algorithm 
      if (satcur > 1.0e-101) then
          vte := SpiceConstants.CONSTKoverQ*temp*ncoeff;
        max_exponent := Modelica.Math.log( max_current / satcur);
        max_exponent := min( max_exp, max_exponent);
        if (voltage >= max_exponent * vte) then
          evd     := exp( max_exponent);
          cond    := satcur * evd / vte;
          current := satcur * (evd - 1) + cond * (voltage - max_exponent * vte);

        elseif (voltage >= -5 * vte) then
          evd     := exp( voltage / vte);
            current := satcur*(evd - 1) + SpiceConstants.CKTgmin*voltage;
            cond := satcur*evd/vte + SpiceConstants.CKTgmin;
        else
            arg := 3*vte/(voltage*SpiceConstants.CONSTe);
          arg     := arg * arg * arg;
            current := -1*satcur*(1 + arg) + SpiceConstants.CKTgmin*voltage;
            cond := satcur*3*arg/voltage + SpiceConstants.CKTgmin;
        end if;
      else
        current := 0.0;
        cond    := 0.0;
      end if;

    end junction2;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.resDepTemp
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependent conductance**

Information
~~~~~~~~~~~

::

This internal function calculates the conductance in dependency from the
temperature.

::

Inputs
~~~~~~

+---------------------------------------------------------------------+----------+-----------+---------------------------+
| Type                                                                | Name     | Default   | Description               |
+=====================================================================+==========+===========+===========================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | resist   |           | Input resistance [Ohm]    |
+---------------------------------------------------------------------+----------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_          | temp     |           | Device temperature [K]    |
+---------------------------------------------------------------------+----------+-----------+---------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_          | tnom     |           | Nominal temperature [K]   |
+---------------------------------------------------------------------+----------+-----------+---------------------------+
| Real                                                                | tc1      |           |                           |
+---------------------------------------------------------------------+----------+-----------+---------------------------+
| Real                                                                | tc2      |           |                           |
+---------------------------------------------------------------------+----------+-----------+---------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------------+--------------------------+
| Type                                                                  | Name           | Description              |
+=======================================================================+================+==========================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | conduct        | Output conductance [S]   |
+-----------------------------------------------------------------------+----------------+--------------------------+
| Real                                                                  | dCond\_dTemp   | Output value             |
+-----------------------------------------------------------------------+----------------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resDepTemp "Temperature dependent conductance"

    input Modelica.SIunits.Resistance resist "Input resistance";
    input Modelica.SIunits.Temp_K temp "Device temperature";
    input Modelica.SIunits.Temp_K tnom "Nominal temperature";
    input Real tc1;
    input Real tc2;

    output Modelica.SIunits.Conductance conduct "Output conductance";
    output Real dCond_dTemp "Output value";

    protected 
      Real difference;
      Real factor;

    algorithm 
      difference := temp - tnom;
      factor := 1.0 + tc1 * difference + tc2 * difference * difference;
      conduct := 1.0 /(resist * factor);
      dCond_dTemp := (tc1 + 2 * tc2 * difference) * conduct * conduct;

    end resDepTemp;

--------------

`Modelica.Electrical.Spice3.Internal.Functions <Modelica_Electrical_Spice3_Internal_Functions.html#Modelica.Electrical.Spice3.Internal.Functions>`_.resDepGeom
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Resistance dependent from width and narrow**

Information
~~~~~~~~~~~

::

This internal function calculates the resistance in dependency from the
geometrical values (width, narrow) and resistivity.

::

Inputs
~~~~~~

+-------------------------------------------------------------+----------+-----------+-------------------------------+
| Type                                                        | Name     | Default   | Description                   |
+=============================================================+==========+===========+===============================+
| Real                                                        | rsh      |           | Input sheet resistance        |
+-------------------------------------------------------------+----------+-----------+-------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | width    |           | Input transistor width [m]    |
+-------------------------------------------------------------+----------+-----------+-------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | length   |           | Input transistor length [m]   |
+-------------------------------------------------------------+----------+-----------+-------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | narrow   |           | Input narrow [m]              |
+-------------------------------------------------------------+----------+-----------+-------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------+
| Type   | Name   | Description    |
+========+========+================+
| Real   | out    | Output value   |
+--------+--------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resDepGeom "Resistance dependent from width and narrow"

    input Real rsh "Input sheet resistance";
    input Modelica.SIunits.Length width "Input transistor width";
    input Modelica.SIunits.Length length "Input transistor length";
    input Modelica.SIunits.Length narrow "Input narrow";

    output Real out "Output value";

    algorithm 
      out :=rsh*(length - narrow)/(width - narrow);

    end resDepGeom;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:47
2010.

.. |Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTemp| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionPotDepTemp| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3MOSFET| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionVCrit| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionParamDepTempSPICE3| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionCapCoeffs| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junction2SPICE3MOSFET| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionCap| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionVoltage23SPICE3| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junction3| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junctionCapTransTime| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.junction2| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.resDepTemp| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |Modelica.Electrical.Spice3.Internal.Functions.resDepGeom| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image15| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image16| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image17| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image18| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image19| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image20| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image21| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image22| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image23| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image24| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image25| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image26| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image27| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image28| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
.. |image29| image:: Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTempS.png
