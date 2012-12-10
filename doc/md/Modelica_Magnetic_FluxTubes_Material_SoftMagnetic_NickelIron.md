% Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron
% 
% 

[Modelica.Magnetic.FluxTubes.Material.SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic).NickelIron
========================================================================================================================================================================

**Nickel iron**

Information
-----------

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                            Descript
                                                                  ion
  --------------------------------------------------------------- --------
  ![image2](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Ste MUMETALL
  el.Steel_9SMnPb28S.png)                                         (77%
  [MuMetall](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Ni NiFe)
  ckelIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic 
  .NickelIron.MuMetall)                                           

  ![image3](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Ste PERMENOR
  el.Steel_9SMnPb28S.png)                                         M
  [Permenorm3601K3](Modelica_Magnetic_FluxTubes_Material_SoftMagn 3601 K3
  etic_NickelIron.html#Modelica.Magnetic.FluxTubes.Material.SoftM (36%
  agnetic.NickelIron.Permenorm3601K3)                             NiFe)
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron.MuMetallI.png) [Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_NickelIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron).MuMetall
=============================================================================================================================================================================================================================================================================================

**MUMETALL (77% NiFe)**

Information
-----------

::

Please refer to the description of the enclosing package
[SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic)
for a description of all soft magnetic material characteristics of this
package.

Source of B(H) characteristics:

*Boll, R.*: Weichmagnetische Werkstoffe: Einführung in den Magnetismus,
VAC-Werkstoffe und ihre Anwendungen. 4th ed. Berlin, München: Siemens
Aktiengesellschaft 1990

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
  [RelativePermeability](Modelica_SIunit mu\_i 27300 Initial relative
  s.html#Modelica.SIunits.RelativePermea             permeability at B=0 [1]
  bility)                                            

  [MagneticFluxDensity](Modelica_SIunits B\_my 0.46  Flux density at maximum
  .html#Modelica.SIunits.MagneticFluxDen Max         relative permeability
  sity)                                              [T]

  Real                                   c\_a  10375 Coefficient of
                                               00    approximation function

  Real                                   c\_b  3.67  Coefficient of
                                                     approximation function

  Real                                   n     10    Exponent of
                                                     approximation function
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record MuMetall "MUMETALL (77% NiFe)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=27300,
        B_myMax=0.46,
        c_a=1037500,
        c_b=3.67,
        n=10);
    end MuMetall;

* * * * *

![image5](Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron.MuMetallI.png) [Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_NickelIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron).Permenorm3601K3
====================================================================================================================================================================================================================================================================================================

**PERMENORM 3601 K3 (36% NiFe)**

Information
-----------

::

Please refer to the description of the enclosing package
[SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic)
for a description of all soft magnetic material characteristics of this
package.

Source of B(H) characteristics:

*Boll, R.*: Weichmagnetische Werkstoffe: Einführung in den Magnetismus,
VAC-Werkstoffe und ihre Anwendungen. 4th ed. Berlin, München: Siemens
Aktiengesellschaft 1990

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
  [RelativePermeability](Modelica_SIunit mu\_i 3000  Initial relative
  s.html#Modelica.SIunits.RelativePermea             permeability at B=0 [1]
  bility)                                            

  [MagneticFluxDensity](Modelica_SIunits B\_my 0.67  Flux density at maximum
  .html#Modelica.SIunits.MagneticFluxDen Max         relative permeability
  sity)                                              [T]

  Real                                   c\_a  50000 Coefficient of
                                                     approximation function

  Real                                   c\_b  2.39  Coefficient of
                                                     approximation function

  Real                                   n     9.3   Exponent of
                                                     approximation function
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record Permenorm3601K3 "PERMENORM 3601 K3 (36% NiFe)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=3000,
        B_myMax=0.67,
        c_a=50000,
        c_b=2.39,
        n=9.3);
    end Permenorm3601K3;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:52 2010.
