% Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron
% 
% 

[Modelica.Magnetic.FluxTubes.Material.SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic).CobaltIron
========================================================================================================================================================================

**Cobalt iron**

Information
-----------

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                             Descrip
                                                                   tion
  ---------------------------------------------------------------- -------
  ![image1](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Stee Vacoflu
  l.Steel_9SMnPb28S.png)                                           x
  [Vacoflux50](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_C 50 (50%
  obaltIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic CoFe)
  .CobaltIron.Vacoflux50)                                          
  ------------------------------------------------------------------------

* * * * *

![image2](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron.Vacoflux50I.png) [Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_CobaltIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron).Vacoflux50
=================================================================================================================================================================================================================================================================================================

**Vacoflux 50 (50% CoFe)**

Information
-----------

::

Please refer to the description of the enclosing package
[SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic)
for a description of all soft magnetic material characteristics of this
package.

Source of B(H) characteristics: VACUUMSCHMELZE GmbH & Co. KG, Germany

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData)
(Coefficients for approximation of soft magnetic materials).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name  Defau Description
                                               lt    
  -------------------------------------- ----- ----- -----------------------
  [RelativePermeability](Modelica_SIunit mu\_i 3850  Initial relative
  s.html#Modelica.SIunits.RelativePermea             permeability at B=0 [1]
  bility)                                            

  [MagneticFluxDensity](Modelica_SIunits B\_my 1.75  Flux density at maximum
  .html#Modelica.SIunits.MagneticFluxDen Max         relative permeability
  sity)                                              [T]

  Real                                   c\_a  11790 Coefficient of
                                                     approximation function

  Real                                   c\_b  2.63  Coefficient of
                                                     approximation function

  Real                                   n     15.02 Exponent of
                                                     approximation function
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record Vacoflux50 "Vacoflux 50 (50% CoFe)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=3850,
        B_myMax=1.75,
        c_a=11790,
        c_b=2.63,
        n=15.02);
    end Vacoflux50;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:52 2010.
