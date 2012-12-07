HelpTestbed.jl
==============

This package is for exploring options for help in Julia.

## The main idea

The main idea is that everything is decentralized. Nothing needs to be
generated when you add a package. Help commands and browser-based help
both go looking for help. From the REPL, you could ask for help in
several ways:

```julia
@help mydataframe["col1"]   # figures out the function name and package based on the function call
@help DataFrames.ref        # lookup by module and keyword name (must be loaded)
@help DataFrames ref        # lookup by package and keyword name
help(DataFrames.ref)        # same but from a function definition 
help("DataFrames", "ref")   # string-based lookups
```

All of the above end up calling the same function: `help("DataFrames",
"ref")`. The main mapping is by package and then keyword. Keywords
would normally be defined for every exported function and type. They
could also be used for constants, data sets, vignettes, and
documentation sections.

Single-argument help calls might do the following:

```julia
@help DataFrames   # does what help() does now then looks for packages and/or modules named "DataFrames"
help("DataFrames")
apropos("DataFrames", "within")   # looks up the keyword within in the DataFrames package 
apropos("within")      # looks up the keyword in base and then all packages 
```

Help for a package might look for a specific file (like
"ModuleName.txt" or "README.md"). `@help package` could show the
given help file, and it could also show help keywords available within
the package.

## Browser-based help

We could feed web pages to the browser from the Julia webserver. Using
live feeds from our own local webserver could allow us to do the following:

* *Common header* -- We could splice in a header with links to the
  Julia home page, github, and more.

* *Cross referencing between packages* -- Cross references of the form
  `/foo/bar` can be interpretted as package `foo` and keyword `bar`. 

* *Search bar* -- This could be similar to the arguments for `@help`.

* *On-the fly conversion of Markdown or reStructuredText* -- This
  could be done on the Julia side or in Javascript. (I'm not sure this
  is wise, but it's possible.)


## Package metadata

A key question is when one does `@help packagename keyword` or clicks
a link for `/packagename/keyword` in the browser, where are the files
stored, and what format are they in?

Here's one option that's pretty easy. The `doc/_JL_INDEX_` is an
indexing file with one row per keyword with the following three pieces
of information.

    keyword filename one-line description of the module/function/doc/whatever

`filename` could be looked up by the REPL or the webserver, and 
multiple formats could be supported. A simple package with just a few
functions could have a `_JL_INDEX_` file where all keywords point to
one README.md file. The one-liner is especially useful for searching
with `apropos`.

`filename` could be treated several ways. The extension could be left
off, optional, or required. There could also be a bookmark or line
number indicator to reference one part of a file.

## Testbed

There are many help files stashed in `doc/`. These were generated from
help for the [Modelica Standard Library](http://www.modelica.org). I
chose this example because this library is huge, and because I'm
working on a lite version of this for Julia:
[Sims.jl](https://github.com/tshort/Sims.jl).

Files were converted from html by
[pandoc](http://johnmacfarlane.net/pandoc/). I also used pandoc to
create reStructuredText (in `doc/`), plain text (in `doc/_text`), html
(in `doc/_html`), and Markdown (in `doc/_md`). The idea is that we can
use this as a testbed on a ridiculously large package with help in
different formats. Most of the files in this library document multiple
objects. Keywords are repeated.

## What works

There's not much coded right now, but `help(packagename, keyword)`
works as does `apropos(packagename, keyword)`. Here are some examples:

```julia
julia> Help.apropos("HelpTestbed", "leakage")
HelpTestbed		LeakageWithCoefficient		Leakage reluctance with respect to the reluctance of a useful flux path (not for dynamic simulation of actuators)
HelpTestbed		PartialLeakage		Base class for leakage flux tubes with position-independent permeance and hence no force generation; mu\_r=1
HelpTestbed		LeakageAroundPoles		Leakage flux tube around cylindrical or prismatic poles
HelpTestbed		QuarterCylinder		Leakage flux from one edge to the opposite plane through a quarter cylinder
HelpTestbed		QuarterHollowCylinder		Leakage flux in circumferential direction through a quarter hollow cylinder
HelpTestbed		HalfCylinder		Leakage flux through the edges of a half cylinder
HelpTestbed		HalfHollowCylinder		Leakage flux in circumferential direction through a half hollow cylinder
HelpTestbed		QuarterSphere		Leakage flux through the corners of a quarter sphere
HelpTestbed		QuarterHollowSphere		Leakage flux through the edges of a qarter hollow sphere
HelpTestbed		EighthOfSphere		Leakage flux through one edge and the opposite plane of an eighth of a sphere
HelpTestbed		EighthOfHollowSphere		Leakage flux through one edge and the opposite plane of an eighth of a hollow sphere
HelpTestbed		CoaxCylindersEndFaces		Leakage flux between the end planes of a inner solid cylinder and a coaxial outer hollow cylinder
HelpTestbed		Leakage		Leakage flux tubes with position-independent permeance and hence no force generation; mu\_r=1


julia> Help.help("HelpTestbed", "Analog")
Package `HelpTestbed`,  Analog

Library for analog electrical models

Modelica.Electrical.Analog: Modelica.Electrical.Analog



Library for analog electrical models

Information
===========

::

This package contains packages for analog electrical components:

-   Basic: basic components (resistor, capacitor, conductor, inductor,
    transformer, gyrator)
-   Semiconductors: semiconductor devices (diode, bipolar and MOS
    transistors)
-   Lines: transmission lines (lossy and lossless)
-   Ideal: ideal elements (switches, diode, transformer, idle, short,
    ...)
-   Sources: time-dependend and controlled voltage and current sources
-   Sensors: sensors to measure potential, voltage, and current

  Main Authors:
      Christoph Clauß <Christoph.Clauss@eas.iis.fraunhofer.de> André
      Schneider <Andre.Schneider@eas.iis.fraunhofer.de> Fraunhofer
      Institute for Integrated Circuits Design Automation Department
      Zeunerstraße 38 D-01069 Dresden, Germany

Copyright © 1998-2010, Modelica Association and Fraunhofer-Gesellschaft.

This Modelica package is free software and the use is completely at your
own risk; it can be redistributed and/or modified under the terms of the
Modelica License 2. For license conditions (including the disclaimer of
warranty) see Modelica.UsersGuide.ModelicaLicense2 or visit
http://www.modelica.org/licenses/ModelicaLicense2.

::

Extends from Modelica.Icons.Package (Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  [image8] Examples                             Examples that demonstrate
                                                the usage of the Analog
                                                electrical components

  [image9] Basic                                Basic electrical
                                                components

  [image10] Ideal                               Ideal electrical elements
                                                such as switches, diode,
                                                transformer, operational
                                                amplifier

  [image11] Interfaces                          Connectors and partial
                                                models for Analog
                                                electrical components

  [image12] Lines                               Lossy and lossless
                                                segmented transmission
                                                lines, and LC distributed
                                                line models

  [image13] Semiconductors                      Semiconductor devices such
                                                as diode, MOS and bipolar
                                                transistor

  [image14] Sensors                             Potential, voltage,
                                                current, and power sensors

  [image15] Sources                             Time-dependend and
                                                controlled voltage and
                                                current sources
  ------------------------------------------------------------------------

* * * * *

Automatically generated Fri Nov 12 16:27:51 2010.

```

Nothing is started on the browser-based help.

## Status

This is just a playground.

Code is MIT licensed. The help files are were released by
the Modelica organization under the Modelica license v2.
