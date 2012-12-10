% Modelica.Constants: [Modelica](Modelica.html#Modelica).Constants
% 
% 

**Library of mathematical constants and constants of nature (e.g., pi,
eps, R, sigma)**

Information
===========

::

This package provides often needed constants from mathematics, machine
dependent constants and constants from nature. The latter constants
(name, value, description) are from the following source:

Peter J. Mohr and Barry N. Taylor (1999):
  ~ **CODATA Recommended Values of the Fundamental Physical Constants:
    1998**. Journal of Physical and Chemical Reference Data, Vol. 28,
    No. 6, 1999 and Reviews of Modern Physics, Vol. 72, No. 2, 2000. See
    also
    [[http://physics.nist.gov/cuu/Constants](http://physics.nist.gov/cuu/Constants)/](http://physics.nist.gov/cuu/Constants/)

CODATA is the Committee on Data for Science and Technology.

**Main Author:**
  ~ [Martin Otter](http://www.robotic.dlr.de/Martin.Otter/)
      ~ Deutsches Zentrum für Luft und Raumfahrt e. V. (DLR)
        Oberpfaffenhofen Postfach 11 16 D-82230 Weßling email:
        [[Martin.Otter@dlr.de](mailto:Martin.Otter@dlr.de)](mailto:Martin.Otter@dlr.de)

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name               Description
  ------------------ -----------------------------------------------------
  e=Modelica.Math.ex 
  p(1.0)             

  pi=2\*Modelica.Mat 
  h.asin(1.0)        

  D2R=pi/180         Degree to Radian

  R2D=180/pi         Radian to Degree

  gamma=0.5772156649 see http://en.wikipedia.org/wiki/Euler\_constant
  0153286060         

  eps=1.e-15         Biggest number such that 1.0 + eps = 1.0

  small=1.e-60       Smallest number such that small and -small are
                     representable on the machine

  inf=1.e+60         Biggest Real number such that inf and -inf are
                     representable on the machine

  Integer\_inf=21474 Biggest Integer number such that Integer\_inf and
  83647              -Integer\_inf are representable on the machine

  c=299792458        Speed of light in vacuum

  g\_n=9.80665       Standard acceleration of gravity on earth

  G=6.6742e-11       Newtonian constant of gravitation

  F=9.64853399e4     Faraday constant, C/mol

  h=6.6260693e-34    Planck constant

  k=1.3806505e-23    Boltzmann constant

  R=8.314472         Molar gas constant

  sigma=5.670400e-8  Stefan-Boltzmann constant

  N\_A=6.0221415e23  Avogadro constant

  mue\_0=4\*pi\*1.e- Magnetic constant
  7                  

  epsilon\_0=1/(mue\ Electric constant
  _0\*c\*c)          

  T\_zero=-273.15    Absolute zero temperature
  ------------------------------------------------------------------------

Types and constants
===================

    final constant Real e=Modelica.Math.exp(1.0);

    final constant Real pi=2*Modelica.Math.asin(1.0);

    final constant Real D2R=pi/180 "Degree to Radian";

    final constant Real R2D=180/pi "Radian to Degree";

    final constant Real gamma=0.57721566490153286060 
    "see http://en.wikipedia.org/wiki/Euler_constant";

    final constant Real eps=1.e-15 "Biggest number such that 1.0 + eps = 1.0";

    final constant Real small=1.e-60 
    "Smallest number such that small and -small are representable on the machine";

    final constant Real inf=1.e+60 
    "Biggest Real number such that inf and -inf are representable on the machine";

    final constant Integer Integer_inf=2147483647 
    "Biggest Integer number such that Integer_inf and -Integer_inf are representable on the machine";

    final constant SI.Velocity c=299792458 "Speed of light in vacuum";

    final constant SI.Acceleration g_n=9.80665 
    "Standard acceleration of gravity on earth";

    final constant Real G(final unit="m3/(kg.s2)") = 6.6742e-11 
    "Newtonian constant of gravitation";

    final constant SI.FaradayConstant F = 9.64853399e4 "Faraday constant, C/mol";

    final constant Real h(final unit="J.s") = 6.6260693e-34 "Planck constant";

    final constant Real k(final unit="J/K") = 1.3806505e-23 "Boltzmann constant";

    final constant Real R(final unit="J/(mol.K)") = 8.314472 "Molar gas constant";

    final constant Real sigma(final unit="W/(m2.K4)") = 5.670400e-8 
    "Stefan-Boltzmann constant";

    final constant Real N_A(final unit="1/mol") = 6.0221415e23 
    "Avogadro constant";

    final constant Real mue_0(final unit="N/A2") = 4*pi*1.e-7 "Magnetic constant";

    final constant Real epsilon_0(final unit="F/m") = 1/(mue_0*c*c) 
    "Electric constant";

    final constant NonSI.Temperature_degC T_zero=-273.15 
    "Absolute zero temperature";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
