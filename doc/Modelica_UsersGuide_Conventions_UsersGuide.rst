==========================================
Modelica.UsersGuide.Conventions.UsersGuide
==========================================

|Modelica.UsersGuide.Conventions.UsersGuide| `Modelica.UsersGuide.Conventions <Modelica_UsersGuide_Conventions.html#Modelica.UsersGuide.Conventions>`_.UsersGuide
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

::

The UsersGuide of each package should consist of the following classes

#. `Contact <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.Contact>`_
   information of the library officer and the co-authors
#. Optional `Implementation
   Notes <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.Implementation>`_
   to give general information about the implementation
#. `References <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.References>`_
   for summarizing the literature of the package
#. `Revision
   history <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistory>`_
   to summarize the most important changes and improvements of the
   package

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+
| Name                                                                                                                                                                                           | Description            |
+================================================================================================================================================================================================+========================+
| |image5| `Implementation <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.Implementation>`_                                                         | Implementation notes   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+
| |image6| `References <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.References>`_                                                                 | References             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+
| |image7| `Contact <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.Contact>`_                                                                       | Contact                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+
| |image8| `RevisionHistory <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistory>`_                                                       | Revision History       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+

--------------

|image9| `Modelica.UsersGuide.Conventions.UsersGuide <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide>`_.Implementation
------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

This class summarizes general information about the implementation which
is not stated elsewhere.

#. The ``<caption>`` tag is currently not supported in some tools.
#. The ``&sim;`` symbol (i.e., '∼' ) is currently not supported in some
   tools.
#. The ``&prop;`` symbol (i.e., '∝' ) is currently not supported in some
   tools.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image10| `Modelica.UsersGuide.Conventions.UsersGuide <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide>`_.References
---------------------------------------------------------------------------------------------------------------------------------------------------------------

::

#. Citation formats should be unified according to IEEE Transactions
   style.
#. Reference should be formated as tables with two columns.

In the following the reference formats will be explained based on five
examples:

-  Journal (or conference) [Gao2008]
-  Book [Andronov1973]
-  Master's thesis [Woehrnschimmel1998]
-  PhD thesis [Farnleitner1999]
-  Technical report [Marlino2005]

The
`citation <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.References>`_
is also explained.

Example
^^^^^^^

::

    <table border="0" cellspacing="0" cellpadding="2">
        <tr>
          <td valign="top">[Gao2008]</td>
          <td valign="top">Z. Gao, T. G. Habetler, R. G. Harley, and R. S. Colby,
            "A sensorless  rotor temperature estimator for induction
                     machines based on a current harmonic spectral
                     estimation scheme,"
            <i>IEEE Transactions on Industrial Electronics</i>,
            vol. 55, no. 1, pp. 407-416, Jan. 2008.</td>
        </tr>
        <tr>
          <td valign="top">[Andronov1973]</td>
          <td valign="top">A. Andronov, E. Leontovich, I. Gordon, and A. Maier,
            <i>Theory of  Bifurcations of Dynamic Systems on a plane</i>,
            1st ed. New York: J. Wiley & Sons, 1973.</td>
        </tr>
        <tr>
          <td valign="top">[Woehrnschimmel1998]</td>
          <td valign="top">R. Wöhrnschimmel,
            "Simulation, modeling and fault detection for vector
                  controlled induction machines,"
            Master';s thesis, Vienna University of Technology,
            Vienna, Austria, 1998.</td>
        </tr>
        <tr>
          <td valign="top">[Farnleitner1999]</td>
          <td valign="top">E. Farnleitner,
            "Computational ?uid dynamics analysis for rotating
                  electrical machinery,"
            Ph.D. dissertation, University of Leoben,
            Department  of Applied Mathematics, Leoben, Austria, 1999.</td>
        </tr>
        <tr>
          <td valign="top">[Marlino2005]</td>
          <td valign="top">L. D. Marlino,
            "Oak ridge national laboratory annual progress report for the
                  power electronics and electric machinery program,"
          Oak Ridge National Laboratory, prepared for the U.S. Department of Energy,
          Tennessee, USA, Tech. Rep. FY2004 Progress Report, January 2005.</td>
        </tr>
    </table>

appears as

+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Gao08]                | Z. Gao, T. G. Habetler, R. G. Harley, and R. S. Colby, "A sensorless rotor temperature estimator for induction machines based on a current harmonic spectral estimation scheme," *IEEE Transactions on Industrial Electronics*, vol. 55, no. 1, pp. 407-416, Jan. 2008.       |
+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Andronov1973]         | A. Andronov, E. Leontovich, I. Gordon, and A. Maier, *Theory of Bifurcations of Dynamic Systems on a plane*, 1st ed. New York: J. Wiley & Sons, 1973.                                                                                                                         |
+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Woehrnschimmel1998]   | R. Wöhrnschimmel, "Simulation, modeling and fault detection for vector controlled induction machines," Master';s thesis, Vienna University of Technology, Vienna, Austria, 1998.                                                                                              |
+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Farnleitner1999]      | E. Farnleitner, "Computational Fluid dynamics analysis for rotating electrical machinery," Ph.D. dissertation, University of Leoben, Department of Applied Mathematics, Leoben, Austria, 1999.                                                                                |
+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Marlino2005]          | L. D. Marlino, "Oak ridge national laboratory annual progress report for the power electronics and electric machinery program," Oak Ridge National Laboratory, prepared for the U.S. Department of Energy, Tennessee, USA, Tech. Rep. FY2004 Progress Report, January 2005.   |
+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

::

Extends from
`Modelica.Icons.References <Modelica_Icons.html#Modelica.Icons.References>`_
(Icon for external references).

--------------

|image11| `Modelica.UsersGuide.Conventions.UsersGuide <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide>`_.Contact
------------------------------------------------------------------------------------------------------------------------------------------------------------

::

This class summarizes contact information of the contributing persons.

Example
'''''''

::

    <p>This package is developed an maintained by the following contributors</p>
      <table border="1" cellspacing="0" cellpadding="2">
        <tr>
          <th></th>
          <th>Name</th>
          <th>Affiliation</th>
        </tr>
        <tr>
          <td valign="top">Library officer</td>
          <td valign="top">
          <a href="mailto:a.haumer@haumer.at">A. Haumer</a>
          </td>
          <td valign="top">
            <a href="http://www.haumer.at">Technical Consulting &amp; Electrical Engineering</a><br>
            3423 St.Andrae-Woerdern<br>
            Austria
          </td>
        </tr>
        <tr>
          <td valign="top">Contributor</td>
          <td valign="top">
            <a href="mailto:christian.kral@ait.ac.at">C. Kral</a>
          </td>
          <td valign="top">
            <a href="http://www.ait.ac.at">Austrian Institute of Technology, AIT</a>, Mobility Department<br>
            Giefinggasse 2<br>
            1210 Vienna<br>
            Austria
          </td>
        </tr>
      </table>

appears as

This package is developed an maintained by the following contributors

+-------------------+------------------------------------------------+----------------------------------------------------------------------------------------+
|                   | Name                                           | Affiliation                                                                            |
+===================+================================================+========================================================================================+
| Library officer   | `A. Haumer <mailto:a.haumer@haumer.at>`_       | `Technical Consulting & Electrical Engineering <http://www.haumer.at>`_                |
|                   |                                                |  3423 St.Andrae-Woerdern                                                               |
|                   |                                                |  Austria                                                                               |
+-------------------+------------------------------------------------+----------------------------------------------------------------------------------------+
| Contributor       | `C. Kral <mailto:christian.kral@ait.ac.at>`_   | `Austrian Institute of Technology, AIT <http://www.ait.ac.at>`_, Mobility Department   |
|                   |                                                |  Giefinggasse 2                                                                        |
|                   |                                                |  1210 Vienna                                                                           |
|                   |                                                |  Austria                                                                               |
+-------------------+------------------------------------------------+----------------------------------------------------------------------------------------+
| Contributor       | `D. Winkler <http://claimid.com/dietmarw>`_    | `Telemark University College <http://www.hit.no>`_                                     |
|                   |                                                |  PO box 203                                                                            |
|                   |                                                |  3901 Porsgrunn                                                                        |
|                   |                                                |  Norway                                                                                |
+-------------------+------------------------------------------------+----------------------------------------------------------------------------------------+

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

|image12| `Modelica.UsersGuide.Conventions.UsersGuide <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide>`_.RevisionHistory
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

#. The revision history needs to answer the question: What has changed
   and what are the improvements over the previous versions and
   revision.
#. The revision history includes the documentation of the development
   history of each class and/or package.
#. Version number, revision number, date, author and comments shall be
   included.

Example
'''''''

::

    <table border="1" cellspacing="0" cellpadding="2">
        <tr>
          <th>Version</th>
          <th>Revision</th>
          <th>Date</th>
          <th>Author</th>
          <th>Comment</th>
        </tr>
        ...
        <tr>
          <td valign="top">1.0.1</td>
          <td valign="top">828</td>
          <td valign="top">2008-05-26</td>
          <td valign="top">A. Haumer<br>C. Kral</td>
          <td valign="top">Fixed bug in documentation</td>
        </tr>
        <tr>
          <td valign="top">1.0.0</td>
          <td valign="top">821</td>
          <td valign="top">2008-05-21</td>
          <td valign="top">A. Haumer</td>
          <td valign="top"></td>
        </tr>
    </table>

This code appears then as in the "Revisions" section below.

::

Extends from
`Modelica.Icons.ReleaseNotes <Modelica_Icons.html#Modelica.Icons.ReleaseNotes>`_
(Icon for release notes in documentation).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:29
2010.

.. |Modelica.UsersGuide.Conventions.UsersGuide| image:: Modelica.UsersGuide.ConventionsI.png
.. |Modelica.UsersGuide.Conventions.UsersGuide.Implementation| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.UsersGuide.References| image:: Modelica.UsersGuide.Conventions.UsersGuide.ReferencesS.png
.. |Modelica.UsersGuide.Conventions.UsersGuide.Contact| image:: Modelica.UsersGuide.Conventions.UsersGuide.ContactS.png
.. |Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistory| image:: Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryS.png
.. |image5| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image6| image:: Modelica.UsersGuide.Conventions.UsersGuide.ReferencesS.png
.. |image7| image:: Modelica.UsersGuide.Conventions.UsersGuide.ContactS.png
.. |image8| image:: Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryS.png
.. |image9| image:: Modelica.UsersGuide.ConventionsI.png
.. |image10| image:: Modelica.UsersGuide.Conventions.UsersGuide.ReferencesI.png
.. |image11| image:: Modelica.UsersGuide.Conventions.UsersGuide.ContactI.png
.. |image12| image:: Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png
