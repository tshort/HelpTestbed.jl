% Modelica.Magnetic.FluxTubes.Material.SoftMagnetic
% 
% 

[Modelica.Magnetic.FluxTubes.Material](Modelica_Magnetic_FluxTubes_Material.html#Modelica.Magnetic.FluxTubes.Material).SoftMagnetic
===================================================================================================================================

**Characteristics mu\_r(B) of common soft magnetic materials; hysteresis
neglected**

Information
-----------

::

The magnetisation characteristics mu\_r(B) of all soft magnetic
materials currently included in this library are approximated with a
[function](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox).
Each material is characterised by the five parameters of this function.
The approximated characteristics mu\_r(B) for most of the ferromagnetic
materials currently included are shown in the plots below (solid lines)
together with the original data points compiled from measurements and
literature. ![Approximated magnetization characteristics of selected
steels](../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/Steel.png)
![Approximated magnetization characteristics of miscellaneous soft
magnetic
materials](../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/Miscellaneous.png)
![Approximated magnetization characteristics of included electric
sheets](../Resources/Images/Magnetic/FluxTubes/Material/SoftMagnetic/ElectricSheet.png)

For the nonlinear curve fit, data points for high flux densities
(approximately B\>1T) have been weighted higher than the ones for low
flux densities. This is due to the large impact of saturated
ferromagnetic sections in a magnetic circuit compared to that of
non-saturated sections with relative permeabilities mu\_r\>\>1.

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
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image10](Modelica.Magnetic.FluxTubes.Material. Coefficients for
  SoftMagnetic.BaseDataS.png)                      approximation of soft
  [BaseData](Modelica_Magnetic_FluxTubes_Material_ magnetic materials
  SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Ma 
  terial.SoftMagnetic.BaseData)                    

  ![image11](Modelica.Magnetic.FluxTubes.Material. Various ferromagnetic
  SoftMagnetic.SteelS.png)                         steels
  [Steel](Modelica_Magnetic_FluxTubes_Material_Sof 
  tMagnetic_Steel.html#Modelica.Magnetic.FluxTubes 
  .Material.SoftMagnetic.Steel)                    

  ![image12](Modelica.Magnetic.FluxTubes.Material. Various electric sheets
  SoftMagnetic.SteelS.png)                         
  [ElectricSheet](Modelica_Magnetic_FluxTubes_Mate 
  rial_SoftMagnetic_ElectricSheet.html#Modelica.Ma 
  gnetic.FluxTubes.Material.SoftMagnetic.ElectricS 
  heet)                                            

  ![image13](Modelica.Magnetic.FluxTubes.Material. Pure iron
  SoftMagnetic.SteelS.png)                         
  [PureIron](Modelica_Magnetic_FluxTubes_Material_ 
  SoftMagnetic_PureIron.html#Modelica.Magnetic.Flu 
  xTubes.Material.SoftMagnetic.PureIron)           

  ![image14](Modelica.Magnetic.FluxTubes.Material. Cobalt iron
  SoftMagnetic.SteelS.png)                         
  [CobaltIron](Modelica_Magnetic_FluxTubes_Materia 
  l_SoftMagnetic_CobaltIron.html#Modelica.Magnetic 
  .FluxTubes.Material.SoftMagnetic.CobaltIron)     

  ![image15](Modelica.Magnetic.FluxTubes.Material. Nickel iron
  SoftMagnetic.SteelS.png)                         
  [NickelIron](Modelica_Magnetic_FluxTubes_Materia 
  l_SoftMagnetic_NickelIron.html#Modelica.Magnetic 
  .FluxTubes.Material.SoftMagnetic.NickelIron)     

  ![image16](Modelica.Magnetic.FluxTubes.Material. Approximation of
  SoftMagnetic.mu_rApproxS.png)                    relative permeability
  [mu\_rApprox](Modelica_Magnetic_FluxTubes_Materi mu\_r as a function of
  al_SoftMagnetic.html#Modelica.Magnetic.FluxTubes flux density B for soft
  .Material.SoftMagnetic.mu_rApprox)               magnetic materials
  ------------------------------------------------------------------------

* * * * *

![image17](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic).BaseData
==================================================================================================================================================================================================================================================

**Coefficients for approximation of soft magnetic materials**

Information
-----------

::

The parameters needed for [approximation of the magnetisation
characteristics](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox)
of included soft magnetic materials are declared in this record.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name  Defau Description
                                               lt    
  -------------------------------------- ----- ----- -----------------------
  [RelativePermeability](Modelica_SIunit mu\_i 1     Initial relative
  s.html#Modelica.SIunits.RelativePermea             permeability at B=0 [1]
  bility)                                            

  [MagneticFluxDensity](Modelica_SIunits B\_my 1     Flux density at maximum
  .html#Modelica.SIunits.MagneticFluxDen Max         relative permeability
  sity)                                              [T]

  Real                                   c\_a  1     Coefficient of
                                                     approximation function

  Real                                   c\_b  1     Coefficient of
                                                     approximation function

  Real                                   n     1     Exponent of
                                                     approximation function
  --------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image18](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApproxI.png) [Modelica.Magnetic.FluxTubes.Material.SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic).mu\_rApprox
=======================================================================================================================================================================================================================================================

**Approximation of relative permeability mu\_r as a function of flux
density B for soft magnetic materials**

Information
-----------

::

The relative permeability mu\_r as a function of flux density B for all
soft magnetic materials currently included in this library is
approximated with the following function
[[Ro00]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature):

Two of the five parameters of this equation have a physical meaning,
namely the initial relative permeability mu\_i at B=0 and the magnetic
flux density at maximum permeability B\_myMax. B\_N is the flux density
normalized to latter parameter.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Name  Defau Description
                                              lt    
  ------------------------------------- ----- ----- -----------------------
  [MagneticFluxDensity](Modelica_SIunit B           Flux density in
  s.html#Modelica.SIunits.MagneticFluxD             ferromagnetic flux tube
  ensity)                                           element [T]

  [RelativePermeability](Modelica_SIuni mu\_i       Initial relative
  ts.html#Modelica.SIunits.RelativePerm             permeability at B=0 [1]
  eability)                                         

  [MagneticFluxDensity](Modelica_SIunit B\_my       Flux density at maximum
  s.html#Modelica.SIunits.MagneticFluxD Max         relative permeability
  ensity)                                           [T]

  Real                                  c\_a        Coefficient of
                                                    approximation function

  Real                                  c\_b        Coefficient of
                                                    approximation function

  Real                                  n           Exponent of
                                                    approximation function
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name Description
  ------------------------------------- ---- ------------------------------
  [RelativePermeability](Modelica_SIuni mu\_ Relative magnetic permeability
  ts.html#Modelica.SIunits.RelativePerm r    of ferromagnetic flux tube
  eability)                                  element [1]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:52 2010.
