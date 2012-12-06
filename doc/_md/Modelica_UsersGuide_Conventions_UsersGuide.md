% Modelica.UsersGuide.Conventions.UsersGuide
% 
% 

![Modelica.UsersGuide.Conventions.UsersGuide](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions](Modelica_UsersGuide_Conventions.html#Modelica.UsersGuide.Conventions).UsersGuide
======================================================================================================================================================================================================

::

The UsersGuide of each package should consist of the following classes

1.  [Contact](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.Contact)
    information of the library officer and the co-authors
2.  Optional [Implementation
    Notes](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.Implementation)
    to give general information about the implementation
3.  [References](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.References)
    for summarizing the literature of the package
4.  [Revision
    history](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistory)
    to summarize the most important changes and improvements of the
    package

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
  ![image5](Modelica.UsersGuide.Conventions.DocumentationS.png)   Implemen
  [Implementation](Modelica_UsersGuide_Conventions_UsersGuide.htm tation
  l#Modelica.UsersGuide.Conventions.UsersGuide.Implementation)    notes

  ![image6](Modelica.UsersGuide.Conventions.UsersGuide.References Referenc
  S.png)                                                          es
  [References](Modelica_UsersGuide_Conventions_UsersGuide.html#Mo 
  delica.UsersGuide.Conventions.UsersGuide.References)            

  ![image7](Modelica.UsersGuide.Conventions.UsersGuide.ContactS.p Contact
  ng)                                                             
  [Contact](Modelica_UsersGuide_Conventions_UsersGuide.html#Model 
  ica.UsersGuide.Conventions.UsersGuide.Contact)                  

  ![image8](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHi Revision
  storyS.png)                                                     History
  [RevisionHistory](Modelica_UsersGuide_Conventions_UsersGuide.ht 
  ml#Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistory)  
  ------------------------------------------------------------------------

* * * * *

![image9](Modelica.UsersGuide.ConventionsI.png) [Modelica.UsersGuide.Conventions.UsersGuide](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide).Implementation
=======================================================================================================================================================================================================

::

This class summarizes general information about the implementation which
is not stated elsewhere.

1.  The `<caption>` tag is currently not supported in some tools.
2.  The `&sim;` symbol (i.e., '∼' ) is currently not supported in some
    tools.
3.  The `&prop;` symbol (i.e., '∝' ) is currently not supported in some
    tools.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image10](Modelica.UsersGuide.Conventions.UsersGuide.ReferencesI.png) [Modelica.UsersGuide.Conventions.UsersGuide](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide).References
==========================================================================================================================================================================================================================

::

1.  Citation formats should be unified according to IEEE Transactions
    style.
2.  Reference should be formated as tables with two columns.

In the following the reference formats will be explained based on five
examples:

-   Journal (or conference) [Gao2008]
-   Book [Andronov1973]
-   Master's thesis [Woehrnschimmel1998]
-   PhD thesis [Farnleitner1999]
-   Technical report [Marlino2005]

The
[citation](Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.References)
is also explained.

### Example

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

  ------ -----------------------------------------------------------------
  [Gao08 Z.  Gao, T. G. Habetler, R. G. Harley, and R. S. Colby, "A
  ]          sensorless rotor temperature estimator for induction machines
             based on a current harmonic spectral estimation scheme,"
             *IEEE Transactions on Industrial Electronics*, vol. 55, no.
             1, pp. 407-416, Jan. 2008.
         

  [Andro A.  Andronov, E. Leontovich, I. Gordon, and A. Maier, *Theory of
  nov197     Bifurcations of Dynamic Systems on a plane*, 1st ed. New
  3]         York: J. Wiley & Sons, 1973.
         

  [Woehr R.  Wöhrnschimmel, "Simulation, modeling and fault detection for
  nschim     vector controlled induction machines," Master';s thesis,
  mel199     Vienna University of Technology, Vienna, Austria, 1998.
  8]     

  [Farnl E.  Farnleitner, "Computational Fluid dynamics analysis for
  eitner     rotating electrical machinery," Ph.D. dissertation,
  1999]      University of Leoben, Department of Applied Mathematics,
             Leoben, Austria, 1999.
         

  [Marli L.  D.  Marlino, "Oak ridge national laboratory annual progress
  no2005         report for the power electronics and electric machinery
  ]              program," Oak Ridge National Laboratory, prepared for the
                 U.S. Department of Energy, Tennessee, USA, Tech. Rep.
                 FY2004 Progress Report, January 2005.
         
         
  ------ -----------------------------------------------------------------

::

Extends from
[Modelica.Icons.References](Modelica_Icons.html#Modelica.Icons.References)
(Icon for external references).

* * * * *

![image11](Modelica.UsersGuide.Conventions.UsersGuide.ContactI.png) [Modelica.UsersGuide.Conventions.UsersGuide](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide).Contact
====================================================================================================================================================================================================================

::

This class summarizes contact information of the contributing persons.

#### Example

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

  -------------------------------------------------------------------------
            Name                   Affiliation
  --------- ---------------------- ----------------------------------------
  Library   [A.                    [Technical Consulting & Electrical
  officer   Haumer](mailto:a.haume Engineering](http://www.haumer.at)
            r@haumer.at)             ~ 3423 St.Andrae-Woerdern Austria
                                   
                                   

  Contribut [C.                    [Austrian Institute of Technology,
  or        Kral](mailto:christian AIT](http://www.ait.ac.at), Mobility
            .kral@ait.ac.at)       Department
                                     ~ Giefinggasse 2 1210 Vienna Austria
                                   
                                   

  Contribut [D.                    [Telemark University
  or        Winkler](http://claimi College](http://www.hit.no)
            d.com/dietmarw)          ~ PO box 203 3901 Porsgrunn Norway
                                   
                                   
  -------------------------------------------------------------------------

::

Extends from
[Modelica.Icons.Contact](Modelica_Icons.html#Modelica.Icons.Contact)
(Icon for contact information).

* * * * *

![image12](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.Conventions.UsersGuide](Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide).RevisionHistory
====================================================================================================================================================================================================================================

::

1.  The revision history needs to answer the question: What has changed
    and what are the improvements over the previous versions and
    revision.
2.  The revision history includes the documentation of the development
    history of each class and/or package.
3.  Version number, revision number, date, author and comments shall be
    included.

#### Example

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
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:29 2010.
