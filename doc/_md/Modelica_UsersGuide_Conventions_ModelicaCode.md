% Modelica.UsersGuide.Conventions.ModelicaCode
% 
% 

![Modelica.UsersGuide.Conventions.ModelicaCode](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions](Modelica_UsersGuide_Conventions.html#Modelica.UsersGuide.Conventions).ModelicaCode
==========================================================================================================================================================================================================

::

In this section the [naming
conventions](Modelica_UsersGuide_Conventions_ModelicaCode.html#Modelica.UsersGuide.Conventions.ModelicaCode.Naming)
of class and instance names, parameters and variables are specified.
Additionally some [format
UsersGuide](Modelica_UsersGuide_Conventions_ModelicaCode.html#Modelica.UsersGuide.Conventions.ModelicaCode.Format)
are stated.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                            Descript
                                                                  ion
  --------------------------------------------------------------- --------
  ![image3](Modelica.UsersGuide.Conventions.DocumentationS.png)   Format
  [Format](Modelica_UsersGuide_Conventions_ModelicaCode.html#Mode 
  lica.UsersGuide.Conventions.ModelicaCode.Format)                

  ![image4](Modelica.UsersGuide.Conventions.DocumentationS.png)   Naming
  [Naming](Modelica_UsersGuide_Conventions_ModelicaCode.html#Mode conventi
  lica.UsersGuide.Conventions.ModelicaCode.Naming)                on
  ------------------------------------------------------------------------

* * * * *

![image5](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions.ModelicaCode](Modelica_UsersGuide_Conventions_ModelicaCode.html#Modelica.UsersGuide.Conventions.ModelicaCode).Format
=====================================================================================================================================================================================================

::

1.  In the **icon** of a component the instance name is displayed (text
    string `%name`) in **blue color**. Parameter values, e.g.,
    resistance, mass, gear ratio, are displayed in the icon in **black
    color** in a smaller font size as the instance name.
2.  Comments and annotations always start with a capital letter, e.g.,
    `parameter Real a = 1 "Arbitrary factor";`

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image6](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions.ModelicaCode](Modelica_UsersGuide_Conventions_ModelicaCode.html#Modelica.UsersGuide.Conventions.ModelicaCode).Naming
=====================================================================================================================================================================================================

::

1.  **Class and instance names** are written in upper and lower case
    letters, e.g., `ElectricCurrent`. An underscore is only used at the
    end of a name to characterize a lower or upper index, e.g., `pin_a`.
2.  **Class names** start always with an upper case letter.
3.  **Instance names**, i.e., names of component instances and of
    variables (with the exception of constants), start usually with a
    lower case letter with only a few exceptions if this is common sense
    (such as `T` for a temperature variable).
4.  **Constant names**, i.e., names of variables declared with the
    "constant" prefix, follow the usual naming conventions (= upper and
    lower case letters) and start usually with an upper case letter,
    e.g., UniformGravity, SteadyState.
5.  
6.  The two **connectors** of a domain that have identical declarations
    and different icons are usually distinguished by `_a`, `_b` or `_p`,
    `_n`, e.g., `Flange_a`, `Flange_b`, `HeatPort_a`, `HeatPort_b`.
7.  A **connector class** has the instance name definition in the
    diagram layer and not in the icon layer.

### Variable names

In the following table typical variable names are listed. This list
should be completd.

Variables and names

Variable

Quantity

a

acceleration

A

area

C

Capacitance

d

damping, density, diameter

dp

pressureDrop

e

specificEntropy

E

energy, entropy

eta

efficiency

f

force, frequency

G

conductance

H

enthalpy

h

height, specificEnthalpy

HFlow

enthalpyFlow

i

current

J

inertia

l

length

L

Inductance

m

mass

M

mutualInductance

mFlow

massFlow

P

power

p

pressure

Q

heat

Qflow

heatFlow

r

radius

R

radius, resistance

t

time

T

temperature

tau

torque

U

internalEnergy

v

electricPotential, specificVolume, velocity, voltage

V

volume

w

angularVelocity

X

reactance

Z

impedance

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:29 2010.
