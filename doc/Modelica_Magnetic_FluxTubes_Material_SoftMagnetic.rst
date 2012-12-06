=================================================
Modelica.Magnetic.FluxTubes.Material.SoftMagnetic
=================================================

`Modelica.Magnetic.FluxTubes.Material <Modelica_Magnetic_FluxTubes_Material.html#Modelica.Magnetic.FluxTubes.Material>`_.SoftMagnetic
-------------------------------------------------------------------------------------------------------------------------------------

**Characteristics mu\_r(B) of common soft magnetic materials; hysteresis
neglected**

Information
~~~~~~~~~~~

::

The magnetisation characteristics mu\_r(B) of all soft magnetic
materials currently included in this library are approximated with a
`function <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox>`_.
Each material is characterised by the five parameters of this function.
The approximated characteristics mu\_r(B) for most of the ferromagnetic
materials currently included are shown in the plots below (solid lines)
together with the original data points compiled from measurements and
literature. |Approximated magnetization characteristics of selected
steels| |Approximated magnetization characteristics of miscellaneous
soft magnetic materials| |Approximated magnetization characteristics of
included electric sheets|

For the nonlinear curve fit, data points for high flux densities
(approximately B>1T) have been weighted higher than the ones for low
flux densities. This is due to the large impact of saturated
ferromagnetic sections in a magnetic circuit compared to that of
non-saturated sections with relative permeabilities mu\_r>>1.

Note that the magnetisation characteristics largely depend on possible
previous machining and on measurement conditions. A virgin material
normally has a considerably higher permeability than the same material
after machining (and packet assembling in case of electric sheets). This
is indicated in the above plots by different magnetisation curves for
similar materials. In most cases, the original data points represent
commutating curves obtained with measurements at 50Hz.

Additional user-specific materials can be defined as needed. This
requires determination of the approximation parameters from the original
data points, preferably with a nonlinear curve fit.

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                        | Description                                                                                                |
+=============================================================================================================================================================================================================================+============================================================================================================+
| |image10| `BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_                                                                                   | Coefficients for approximation of soft magnetic materials                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image11| `Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_                                                                                   | Various ferromagnetic steels                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image12| `ElectricSheet <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet>`_                                                           | Various electric sheets                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image13| `PureIron <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_PureIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron>`_                                                                          | Pure iron                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image14| `CobaltIron <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_CobaltIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron>`_                                                                    | Cobalt iron                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image15| `NickelIron <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_NickelIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron>`_                                                                    | Nickel iron                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image16| `mu\_rApprox <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox>`_                                                                              | Approximation of relative permeability mu\_r as a function of flux density B for soft magnetic materials   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

--------------

|image17| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.BaseData
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Coefficients for approximation of soft magnetic materials**

Information
~~~~~~~~~~~

::

The parameters needed for `approximation of the magnetisation
characteristics <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox>`_
of included soft magnetic materials are declared in this record.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 1         | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1         | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 1         | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 1         | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 1         | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record BaseData 
      "Coefficients for approximation of soft magnetic materials"

      extends Modelica.Icons.Record;

      parameter SI.RelativePermeability mu_i = 1 
        "Initial relative permeability at B=0";
      parameter SI.MagneticFluxDensity B_myMax = 1 
        "Flux density at maximum relative permeability";
      parameter Real c_a = 1 "Coefficient of approximation function";
      parameter Real c_b = 1 "Coefficient of approximation function";
      parameter Real n = 1 "Exponent of approximation function";

    end BaseData;

--------------

|image18| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.mu\_rApprox
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Approximation of relative permeability mu\_r as a function of flux
density B for soft magnetic materials**

Information
~~~~~~~~~~~

::

The relative permeability mu\_r as a function of flux density B for all
soft magnetic materials currently included in this library is
approximated with the following function
`[Ro00] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_:

.. figure:: ../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/eq_mu_rApprox.png
   :align: center
   :alt: Equation for approximation mu\_r(B)

   Equation for approximation mu\_r(B)
Two of the five parameters of this equation have a physical meaning,
namely the initial relative permeability mu\_i at B=0 and the magnetic
flux density at maximum permeability B\_myMax. B\_N is the flux density
normalized to latter parameter.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                           |
+=========================================================================================+============+===========+=======================================================+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B          |           | Flux density in ferromagnetic flux tube element [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      |           | Initial relative permeability at B=0 [1]              |
+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   |           | Flux density at maximum relative permeability [T]     |
+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+
| Real                                                                                    | c\_a       |           | Coefficient of approximation function                 |
+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+
| Real                                                                                    | c\_b       |           | Coefficient of approximation function                 |
+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+
| Real                                                                                    | n          |           | Exponent of approximation function                    |
+-----------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+---------+-------------------------------------------------------------------------+
| Type                                                                                    | Name    | Description                                                             |
+=========================================================================================+=========+=========================================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_r   | Relative magnetic permeability of ferromagnetic flux tube element [1]   |
+-----------------------------------------------------------------------------------------+---------+-------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function mu_rApprox 
      "Approximation of relative permeability mu_r as a function of flux density B for soft magnetic materials"

      extends Modelica.Icons.Function;

      input Modelica.SIunits.MagneticFluxDensity B 
        "Flux density in ferromagnetic flux tube element";
      //Material specific parameter set:
      input Modelica.SIunits.RelativePermeability mu_i 
        "Initial relative permeability at B=0";
      input Modelica.SIunits.MagneticFluxDensity B_myMax 
        "Flux density at maximum relative permeability";
      input Real c_a "Coefficient of approximation function";
      input Real c_b "Coefficient of approximation function";
      input Real n "Exponent of approximation function";

      output Modelica.SIunits.RelativePermeability mu_r 
        "Relative magnetic permeability of ferromagnetic flux tube element";

    protected 
      Real B_N 
        "Flux density B normalized to flux density at maximum relative permeability B_myMax";

    algorithm 
      B_N := abs(B/B_myMax);
      mu_r := 1 + (mu_i-1 + c_a*B_N)/(1 + c_b*B_N + B_N^n);

    end mu_rApprox;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Approximated magnetization characteristics of selected
steels| image:: ../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/Steel.png
.. |Approximated magnetization characteristics of miscellaneous soft
magnetic
materials| image:: ../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/Miscellaneous.png
.. |Approximated magnetization characteristics of included electric
sheets| image:: ../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/ElectricSheet.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseDataS.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu\_rApprox| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApproxS.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseDataS.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |image15| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.SteelS.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApproxS.png
.. |image17| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseDataI.png
.. |image18| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApproxI.png
