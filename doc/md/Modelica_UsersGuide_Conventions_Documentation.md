% Modelica.UsersGuide.Conventions.Documentation
% 
% 

![Modelica.UsersGuide.Conventions.Documentation](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions](Modelica_UsersGuide_Conventions.html#Modelica.UsersGuide.Conventions).Documentation
============================================================================================================================================================================================================

::

[HTML](http://www.w3c.org/) documentation of Modelica classes.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                               Descr
                                                                     iptio
                                                                     n
  ------------------------------------------------------------------ -----
  ![image3](Modelica.UsersGuide.Conventions.DocumentationS.png)      Forma
  [Format](Modelica_UsersGuide_Conventions_Documentation_Format.html t
  #Modelica.UsersGuide.Conventions.Documentation.Format)             

  ![image4](Modelica.UsersGuide.Conventions.DocumentationS.png)      Struc
  [Structure](Modelica_UsersGuide_Conventions_Documentation.html#Mod ture
  elica.UsersGuide.Conventions.Documentation.Structure)              
  ------------------------------------------------------------------------

* * * * *

![image5](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions.Documentation](Modelica_UsersGuide_Conventions_Documentation.html#Modelica.UsersGuide.Conventions.Documentation).Structure
===========================================================================================================================================================================================================

::

### General

1.  In the HTML documentation of any Modelica library, the headings
    `<h1>`, `<h2>` and `<h3>` should not be used, because they are
    utilized by the automatically generated documentation.
2.  The utilized heading format starts with `<h4>` and terminates with
    `</h4>`, e.g., `<h4>Description</h4>`
3.  The `<h4>` and `<h5>` headings must not be terminated by a colon
    (:).
4.  For additional structuring `<h5>` and `</h5>` may be used as
    demonstrated below.

### Structure

The following parts should be added to the documentation of each
component:

1.  General information without additional subsection explains how the
    class works
2.  **Syntax** (for functions only): shows syntax of function call with
    minimum and full input parameters
3.  **Implementation** (optional): explains how the implementation is
    made
4.  **Limitations** (optional): explains the limitations of the
    component
5.  **Notes** (optional): if required/useful
6.  **Examples** (optional): if required/useful
7.  **Acknowledgments** (optional): if required
8.  **See also**: shows hyperlinks to related models
9.  **Revision history** (optional): if required/intended for a
    package/model, the revision history should be placed in
    `annotation(Documentation(revisions="..."));`

These sections should appear in the listed order. The only exceptions
are hierachically structured notes and examples as explained in the
following.

### Additional notes and examples

Some additional notes or examples may require additional `<h5>`
headings. For either notes or examples the following cases may be
applied:

#### Example 1

This is an example of a single note.

    <h5>Note</h5>
    <p>This is the note.</p>

#### Example 2

This is an example of a very simple structure.

    <h5>Notes</h5>
    <p>This is the first note.</p>
    <p>This is the second note.</p>

#### Example 3

This example shows a more complex structure with enumeration.

    <h5>Note 1</h5>
    ...
    <h5>Note 2</h5>
    ...

### Automatically created documentation

For parameters, connectors, as well as inputs and outputs of function
automatic documentation is generated by the tool from the quoted
comments.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:29 2010.
