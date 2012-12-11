HelpTestbed.jl
==============

This package is for exploring options for help in Julia.

## Updates

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
"ModuleName.txt" or "README.md"). `@help package` could show the given
help file, and it could also show help keywords available within the
package.

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

Here is the start of the `_JL_INDEX_` file for
[RDatasets.jl](https://github.com/johnmyleswhite/RDatasets.jl):

```
RDatasets  README  A package with datasets originally distributed with R or R add-on packages
BOD  datasets/BOD  Biochemical Oxygen Demand
Formaldehyde  datasets/Formaldehyde  Determination of Formaldehyde
HairEyeColor  datasets/HairEyeColor  Hair and Eye Color of Statistics Students
InsectSprays  datasets/InsectSprays  Effectiveness of Insect Sprays
```

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
create reStructuredText (in `doc/`), plain text (in `doc/txt`), html
(in `doc/html`), and Markdown (in `doc/md`). The idea is that we can
use this as a testbed on a ridiculously large package with help in
different formats. Most of the files in this library document multiple
objects. Keywords are repeated.

## Packages that support this format

* [RDatasets.jl](https://github.com/johnmyleswhite/RDatasets.jl) --
  hundreds of datasets documented


## Examples

```julia
julia> load("HelpTestbed"); using Help

julia> @help sin
Loading help data...
Base.sin(x)

   Compute sine of "x"

julia> @help sin(1)
sin(Real,) at math.jl:86

Base.sin(x)

   Compute sine of "x"

julia> m = Modelica.MyType(1)
MyType(1)

julia> @help sin(m)
sin(MyType,) at /home/tshort/.julia/HelpTestbed/src/HelpTestbed.jl:166

Package `HelpTestbed`,  sin

Miscellaneous trig functions

# Basic trig operations

sin(x::MyType)
cos(x::MyType)

That's it...

Package `HelpTestbed`,  sin

Sine of complex number

Modelica.ComplexMath



Modelica.ComplexMath
====================

Library of complex mathematical functions (e.g., sin, cos) and of
functions operating on copmlex vectors and matrices

-- [long output truncated by hand] --



julia> @help m[1]
ref(MyType,Int64) at /home/tshort/.julia/HelpTestbed/src/HelpTestbed.jl:171

Package `HelpTestbed`,  ref

Referencing for MyType's

# Test help file for referencing MyType's

ref(x::MyType)
ref(x::MyType, a) 
ref(x::MyType, a::Int)
ref(x::MyType, a, b) 

That's it...

julia> apropos("regression")
Base.linreg(x, y)
Base.linreg(x, y, w)

 -- Package documentation available -- 

DataFrames		model_matrix		A ModelMatrix type used for regression modeling
RDatasets		anscombe		Anscombe's Quartet of 'Identical' Simple Linear Regressions
RDatasets		longley		Longley's Economic Regression Data
RDatasets		exAM		Example Data of Antille and May - for Simple Regression
RDatasets		Quartet		Four Regression Datasets
RDatasets		bivariate		Sample data for bivariate probit regression
RDatasets		grunfeld		Simulation Data for model Seemingly Unrelated Regression (sur) that corresponds to method SUR of systemfit


julia> apropos("HelpTestbed", "leakage")
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



julia> help("HelpTestbed", "Analog")
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

-- [long output truncated by hand] --

```

## Handling multiple dispatch

With the `@help` macro, we can find the signature of a function call.
We can use that to find the package. That narrows down the mapping
from a function signature to a documentation keyword.

That doesn't cover the case where functions refer to different things
within one package. For example, Tim Holy's
[HDF5](https://github.com/timholy/julia_hdf5) has `read` for plain
HDF5 files, Matlab HDF5 files, and JLD (Julia data) files. If these
are documented all in one place, the existing approach works fine.

We could go a step further and allow packagers to enter the function
signature as part of the `_JL_INDEX_` file. This would allow separate
documentation of the different versions of `read` within a package.
Entering many function signatures might be too tedious, especially
since Julia code can tend to have lots of versions of a function
defined.

If it's better to document these in separate places, the packager could
offer different keywords: "read_jld", "read_plain", "read_matio", and
"read" which is a short description pointing to the other keywords.

We could also allow a keyword to point to the file. Every function
signature has a pointer back to the file it was written in. We could
allow function keywords of the form "read#matio" and "read#jld"
where matio points to "src/matio.jl". The following would try to open
help for "read#matio"

```jul
file = jldopen("mydata.jld", "r")
@help read(file, "A")
```

## Aliases

Aliases might help for cases where multiple keywords point to the same
thing. We could have a `_JL_ALIASES_` file in addition to
`_JL_INDEX_`. This could map from keyword to main keyword. Here is an
example:

```
_JL_INDEX_:
ref_dataframe   dataframe  Indexing DataFrames
ref_datavec     datavec    Indexing DataVecs

_JL_ALIASES_:
ref           ref_dataframe
ref#dataframe ref_dataframe
ref#datavec   ref_datavec  
```



## What we can learn from R's help

R generally has comprehensive documentation. Here are it's main
strengths and how that might apply to Julia:

* *Functions well documented* -- Almost every function points to a
   documentation page. Each of these has a consistent structure. Two
   things may help Julia achieve this: (1) making it as easy as
   possible to document things, and (2) have some sort of
   `Pkg.check(packagename)` that runs to make sure every exported
   function has a documentation entry.

* *Examples* -- Most function documentation has an "Examples" section.
  You can also run examples with `example(mean)`. For Julia, we can
  encourage having an "Examples" documentation section. To get the
  equivalent of `example(mean)`, we may need to specify exactly how to
  bookmark example sections.

* *Multiple backends* -- Users can access help in multiple ways:
   in the REPL, HTML help, PDF files of help, and Emacs/ESS help. This
   should be straightforward to implement in Julia.

* *Nice HTML interface* -- R includes a built-in webserver that
   organizes and feeds results to the browser. It allows on-the-fly
   lookup of help keywords. It provides a really nice interface. We
   could use Julia's webserver to do something similar.

Here are some weaknesses with R's help system and how we might improve upon
them in Julia:

* *Packages have awful default documentation* -- The default package
   documentation is just a straight listing of the help for individual
   functions and data in the package with no organization. Julia and
   most Julia packages already do a better job of providing the "big picture".

* *Little connection between user's manuals, vignettes, and function
   documentation* -- In Julia, it would be nice to have ways to
   cross-reference between these.

* *Poor documentation for S4 classes* -- S4 is R's advanced type
   system that supports multiple dispatch. I can never figure out help
   for packages that use S4. For Julia to handle documentation for
   multiple dispatch, tying function calls to documentation keywords
   is key. The `@help` macro can help with that.

* *No graphics support* -- Help files and manuals don't include
   graphics. R's documentation format is rather "old-fashioned". HTML,
   Markdown, or reStructuredText shouldn't have these problems. One
   question is whether we should try to support vector graphic formats.

R's system is a decentralized system. Each package has a
"help/AnIndex" or "help/aliases.rds" (binary) file that gives a
keyword lookups. There's also a main "Index" file with keyword entries
and one-line descriptions. The help system does lookups of these on
the fly. It is relatively speedy even with many packages. R's indexing
files are generated when a package is installed. I'm proposing to
leave that up to the package manager. Tools like Sphinx could be set
up to generate that file automatically. We could provide a function
that can check the `_JL_INDEX_` file to make sure that all keywords
point to documentation in one of the required formats.

## Status

This is mainly just a playground so far.

Browser-based help hasn't been started.

Code is MIT licensed. The help files are were released by
the Modelica organization under the Modelica license v2.
