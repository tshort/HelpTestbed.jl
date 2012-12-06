% Modelica.Utilities.UsersGuide
% 
% 

![Modelica.Utilities.UsersGuide](Modelica.Utilities.UsersGuideI.png) [Modelica.Utilities](Modelica_Utilities.html#Modelica.Utilities).UsersGuide
================================================================================================================================================

::

Library **Modelica.Utilities** contains Modelica **functions** that are
especially suited for **scripting**. Currently, only a rudimentary
User's Guide is present. This will be improved in the next releases. The
User's Guide has currently the following chapters:

1.  [Release
    Notes](Modelica_Utilities_UsersGuide.html#Modelica.Utilities.UsersGuide.ReleaseNotes)
    summarizes the differences between different versions of this
    library.
2.  [ImplementationNotes](Modelica_Utilities_UsersGuide.html#Modelica.Utilities.UsersGuide.ImplementationNotes)
    describes design decisions for this library especially for Modelica
    tool vendors.
3.  [Contact](Modelica_Utilities_UsersGuide.html#Modelica.Utilities.UsersGuide.Contact)
    provides information about the authors of the library as well as
    acknowledgments.

**Error handling**
  ~ In case of error, all functions in this library use a Modelica

"assert(..)" to provide an error message and to cancel all actions. This
means that functions do not return, if an error is triggered inside the
function. In the near future, an exception handling mechanism will be
introduced in Modelica that will allow to catch errors at a defined
place.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                           Descripti
                                                                 on
  -------------------------------------------------------------- ---------
  ![image4](Modelica.Utilities.UsersGuide.ImplementationNotesS.p Implement
  ng)                                                            ation
  [ImplementationNotes](Modelica_Utilities_UsersGuide.html#Model Notes
  ica.Utilities.UsersGuide.ImplementationNotes)                  

  ![image5](Modelica.Utilities.UsersGuide.ReleaseNotesS.png)     Release
  [ReleaseNotes](Modelica_Utilities_UsersGuide.html#Modelica.Uti notes
  lities.UsersGuide.ReleaseNotes)                                

  ![image6](Modelica.Utilities.UsersGuide.ContactS.png)          Contact
  [Contact](Modelica_Utilities_UsersGuide.html#Modelica.Utilitie 
  s.UsersGuide.Contact)                                          
  ------------------------------------------------------------------------

* * * * *

![image7](Modelica.Utilities.UsersGuideI.png) [Modelica.Utilities.UsersGuide](Modelica_Utilities_UsersGuide.html#Modelica.Utilities.UsersGuide).ImplementationNotes
===================================================================================================================================================================

::

Below the major design decisions of this library are summarized.

-   **C-Function Interface**
      ~ This library contains several interfaces to C-functions in order
        to

    operate with the environment. As will become clear, it is usally
    required that a Modelica tool vendor provides an implementation of
    these C-functions that are suited for his environment. In directory
    "Modelica/Resources/C-Sources" a reference implementation is given
    for Microsoft Windows Systems and for POSIX environments. The files
    "ModelicaInternal.c" and "ModelicaStrings.c" can be used as a basis
    for the integration in the vendors environment.
-   **Character Encoding**
      ~ The representation of characters is different in operating
        systems.

    The more modern ones (e.g., Windows-NT) use an early variant of
    Unicode (16 bit per character) other (e.g., Windows-ME) use 8-bit
    encoding. Also 32 bit per character and multi-byte representations
    are in use. This is important, since e.g., Japanese Modelica users
    need Unicode representation. The design in this library is done in
    such a way that a basic set of calls to the operating system hides
    the actual character representation. This means, that all functions
    of this package can be used independent from the underlying
    character representation. The C-interface of the Modelica language
    provides only an 8-bit character encoding passing mechanism of
    strings. As a result, the reference implementation in
    "Modelica.Utilities\\C-Source" needs to be adapted to the character
    representation supported in the Modelica vendor environment.
-   **Internal String Representation**
      ~ The design of this package was made in order that string
        handling is

    convenient. This is in contrast to, e.g., the C-language, where
    string handling is inconvenient, cumbersome and error prone, but on
    the other hand is in some sense "efficient". The standard reference
    implementation in "Modelica.Utilities\\C-Source" is based on the
    standard C definition of a string, i.e., a pointer to a sequence of
    characters, ended with a null terminating character. In order that
    the string handling in this package is convenient, some assumptions
    have been made, especially, that the access to a substring is
    efficient (O(1) access instead of O(n) as in standard C). This
    allows to hide string pointer arithmetic from the user. In such a
    case, a similiar efficiency as in C can be expected for most high
    level operations, such as find, sort, replace. The "efficient
    character access" can be reached if, e.g., the number of characters
    are stored in a string, and the length of a character is fixed, say
    16 or 32 bit (if all Unicode characters shall be represented). A
    vendor should adapt the reference implementation in this respect.
-   **String copy = pointer copy**
      ~ The Modelica language has no mechanism to change a character of
        a

    string. When a string has to be modified, the only way to achieve
    this is to generate it newly. The advantage is that a Modelica tool
    can treat a string as a constant entity and can replace (expensive)
    string copy operations by pointer copy operations. For example, when
    sorting a set of strings the following type of operations occur:

        String s[:], s_temp;
         ...
        s_temp := s[i];
        s[i]   := s[j];
        s[j]   := s_temp;

    Formally, three strings are copied. Due to the feature sketched
    above, a Modelica tool can replace this copy operation by pointer
    assignments, a very "cheap" operation. The Modelica.Utilities
    functions will perform efficiently, if such types of optimizations
    are supported by the tool.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image8](Modelica.Utilities.UsersGuide.ReleaseNotesI.png) [Modelica.Utilities.UsersGuide](Modelica_Utilities_UsersGuide.html#Modelica.Utilities.UsersGuide).ReleaseNotes
=========================================================================================================================================================================

::

### Version 1.0, 2004-09-29

First version implemented.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image9](Modelica.Utilities.UsersGuide.ContactI.png) [Modelica.Utilities.UsersGuide](Modelica_Utilities_UsersGuide.html#Modelica.Utilities.UsersGuide).Contact
===============================================================================================================================================================

::

**Responsible for Library:**

Dag Brück, Dassault Systèmes AB, Sweden.
  ~ email:
    [[Dag.BRUCK@3ds.com](mailto:Dag.BRUCK@3ds.com)](mailto:Dag.BRUCK@3ds.com)

**Acknowledgements:**

-   This library has been designed by:

    > Dag Brück, Dassault Systèmes AB, Sweden
    >   ~ Hilding Elmqvist, Dassault Systèmes AB, Sweden Hans Olsson,
    >     Dassault Systèmes AB, Sweden Martin Otter, DLR
    >     Oberpfaffenhofen, Germany.
    >
-   The library including the C reference implementation has been
    implemented by Martin Otter and Dag Brück.
-   The Examples.calculator demonstration to implement a calculator with
    this library is from Hilding Elmqvist.
-   Helpful comments from Kaj Nyström, PELAB, Linköping, Sweden, are
    appreciated, as well as discussions at the 34th, 36th, and 40th
    Modelica Design Meetings in Vienna, Linköping, and Dresden.

::

Extends from
[Modelica.Icons.Contact](Modelica_Icons.html#Modelica.Icons.Contact)
(Icon for contact information).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
