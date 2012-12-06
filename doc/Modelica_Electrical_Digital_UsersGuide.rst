======================================
Modelica.Electrical.Digital.UsersGuide
======================================

|Modelica.Electrical.Digital.UsersGuide| `Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.UsersGuide
-------------------------------------------------------------------------------------------------------------------------------------------------

::

Library **Electrical.Digital** is a **free** Modelica package providing
components to model **digital** electronic systems based on
combinational and sequential logic in a convenient way. This package
contains the **User's Guide** for the library and has the following
content:

#. `Release
   Notes <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide.ReleaseNotes>`_
   summarizes the differences between different versions of this
   library.
#. `Literature <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide.Literature>`_
   provides references that have been used to design and implement this
   library.
#. `Contact <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide.Contact>`_
   provides information about the authors of the library as well as
   acknowledgments.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
| Name                                                                                                                                                                      | Description     |
+===========================================================================================================================================================================+=================+
| |image4| `ReleaseNotes <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide.ReleaseNotes>`_                                                | Release notes   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
| |image5| `Literature <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide.Literature>`_                                                    | Literature      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+
| |image6| `Contact <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide.Contact>`_                                                          | Contact         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+

--------------

|image7| `Modelica.Electrical.Digital.UsersGuide <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide>`_.ReleaseNotes
----------------------------------------------------------------------------------------------------------------------------------------------------

::

Version 1.0.8, 2009-10-01
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Package Register with Flip-Flops and Latches added
-  InertialDealySensitiveVector added

Version 1.0.7, 2005-07-01
^^^^^^^^^^^^^^^^^^^^^^^^^

-  InertialDelaySensitive improved
-  Minor errors fixed in basic and delay models (final introduced)
-  Sources.Pulse rewritten to avoid a warning
-  Minor errors in default values of sources fixed

Version 1.0.6, 2004-10-18
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Missing HTML tags added (problems with mismatched pre tags fixed).
-  CVS ID string deleted.

Version 1.0.5, 2004-10-01
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Wrong identifiers x0 and Tdel in HalfAdder example fixed.
-  Experiment command in FlipFlop example deleted.
-  Known issue: Pulse source causes a warning in Dymola. It is
   recommended to use Clock source.

Version 1.0.4, 2004-09-30
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Documentation improved.

Version 1.0.3, 2004-09-21
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Table names changed from "map" to "Table".
-  Icons for converters modified.
-  LogicValueType renamed to Logic. For the Electrical.Digital library
   the type Logic has a fundamental meaning. Logic is similar to Real,
   Integer or Boolean in other packages. Names for converters are now
   more consistent (LogicToBoolean, RealToLogic etc.).
-  Icons for gates and sources improved.
-  New examples added.
-  Internal names for signals and ports unified.
-  Simple Clock source added in addition to Pulse source (for
   convenience reasons).

Version 1.0.2, 2004-09-13
^^^^^^^^^^^^^^^^^^^^^^^^^

-  First prerelease for discussions at the 40th Modelica Design Meeting.

Version 1.0.1, 2004-06-01
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Packages Tables, Basic, and Gates implemented.
-  Transport and inertial delay implemented and successfully tested.

Version 1.0.0, 2003-05-01
^^^^^^^^^^^^^^^^^^^^^^^^^

-  A first version has been implemented for case studies.

::

Extends from
`Modelica.Icons.ReleaseNotes <Modelica_Icons.html#Modelica.Icons.ReleaseNotes>`_
(Icon for release notes in documentation).

--------------

|image8| `Modelica.Electrical.Digital.UsersGuide <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide>`_.Literature
--------------------------------------------------------------------------------------------------------------------------------------------------

::

The Electrical.Digital library is based on the following references:

Ashenden, P. J.:
    **The Designer's Guide to VHDL.** San Francisco: Morgan Kaufmann,
    1995, 688 p. ISBN 1-55860-270-4.

IEEE 1076-1993:
    **IEEE Standard VHDL Language Reference Manual (ANSI).** 288 p. ISBN
    1-55937-376-8. IEEE Ref. SH16840-NYF.

IEEE 1164-1993:
    **IEEE Standard Multivalue Logic System for VHDL Model
    Interoperability (Std\_logic\_1164).** 24 p. ISBN 1-55937-299-0.
    IEEE Ref. SH16097-NYF.

Lipsett, R.; Schaefer, C.; Ussery, C.:
    **VHDL: Hardware Description and Design.** Boston: Kluwer, 1989, 299
    p. ISBN 079239030X.

Navabi, Z:
    **VHDL: Analysis and Modeling of Digital Systems.** New York:
    McGraw-Hill, 1993, 375 p. ISBN 0070464723.

::

     

Extends from
`Modelica.Icons.References <Modelica_Icons.html#Modelica.Icons.References>`_
(Icon for external references).

--------------

|image9| `Modelica.Electrical.Digital.UsersGuide <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide>`_.Contact
-----------------------------------------------------------------------------------------------------------------------------------------------

::

**Main Authors:**

Christoph Clauß
<`Christoph.Clauss@eas.iis.fraunhofer.de <mailto:Christoph.Clauss@eas.iis.fraunhofer.de>`_>
 André Schneider
<`Andre.Schneider@eas.iis.fraunhofer.de <mailto:Andre.Schneider@eas.iis.fraunhofer.de>`_>
 Ulrich Donath
<`Ulrich.Donath@eas.iis.fraunhofer.de <mailto:Ulrich.Donath@eas.iis.fraunhofer.de>`_>
 Fraunhofer Institute for Integrated Circuits (IIS)
 Design Automation Department (EAS)
 Zeunerstraße 38
 D-01069 Dresden
 Germany

**Acknowledgements:**
    We thank our students Teresa Schlegel and Enrico Weber for
    implementing and carefully testing many models and examples.

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:19
2010.

.. |Modelica.Electrical.Digital.UsersGuide| image:: Modelica.Electrical.Digital.UsersGuideI.png
.. |Modelica.Electrical.Digital.UsersGuide.ReleaseNotes| image:: Modelica.Electrical.Digital.UsersGuide.ReleaseNotesS.png
.. |Modelica.Electrical.Digital.UsersGuide.Literature| image:: Modelica.Electrical.Digital.UsersGuide.LiteratureS.png
.. |Modelica.Electrical.Digital.UsersGuide.Contact| image:: Modelica.Electrical.Digital.UsersGuide.ContactS.png
.. |image4| image:: Modelica.Electrical.Digital.UsersGuide.ReleaseNotesS.png
.. |image5| image:: Modelica.Electrical.Digital.UsersGuide.LiteratureS.png
.. |image6| image:: Modelica.Electrical.Digital.UsersGuide.ContactS.png
.. |image7| image:: Modelica.Electrical.Digital.UsersGuide.ReleaseNotesI.png
.. |image8| image:: Modelica.Electrical.Digital.UsersGuide.LiteratureI.png
.. |image9| image:: Modelica.Electrical.Digital.UsersGuide.ContactI.png
