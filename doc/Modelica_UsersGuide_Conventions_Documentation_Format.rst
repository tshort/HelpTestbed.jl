====================================================
Modelica.UsersGuide.Conventions.Documentation.Format
====================================================

|Modelica.UsersGuide.Conventions.Documentation.Format| `Modelica.UsersGuide.Conventions.Documentation <Modelica_UsersGuide_Conventions_Documentation.html#Modelica.UsersGuide.Conventions.Documentation>`_.Format
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

In this section the format UsersGuide of the HTML documentation are
specified. The
`structure <Modelica_UsersGuide_Conventions_Documentation.html#Modelica.UsersGuide.Conventions.Documentation.Structure>`_
of the documentation is specified separately.

Paragraphs
^^^^^^^^^^

#. In each section the paragraphs should start with ``<p>`` and
   terminate with ``</p>``.
#. Do not write plain text without putting it in a paragraph.
#. No artificial line breaks ``<br>``
    should be added within text paragraphs.
#. After a colon (:) continue with capital letter if new sentence
   starts; for text fragments continue with lower case letter

Emphasis
^^^^^^^^

#. For **emphasizing** text fragments ``<b>`` and ``<b>`` has to be
   used.
#. Modelica terms such as expandable bus, array, etc. should not be
   emphasized anyhow.

Capitalization of Text
^^^^^^^^^^^^^^^^^^^^^^

#. Table headers and entries should start with capital letters
#. Table entries should start with lower case letter if only text
   fragments are used.
#. Table and figure captions start with a capital letter

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                          | Description   |
+===============================================================================================================================================================================================================+===============+
| |image9| `Cases <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Cases>`_                                                                      | Cases         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image10| `Code <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Code>`_                                                                       | Code          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image11| `Equations <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Equations>`_                                                             | Equations     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image12| `Figures <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Figures>`_                                                                 | Figures       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image13| `Hyperlinks <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Hyperlinks>`_                                                           | Hyperlinks    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image14| `Lists <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Lists>`_                                                                     | Lists         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image15| `References <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.References>`_                                                           | References    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image16| `Tables <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format.Tables>`_                                                                   | Tables        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image17| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Cases
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

In the Modelica documentation sometimes different cases have to be
distinguished. If the case distinction refers to Modelica parameters or
variables (boolean expressions) the comparisons should be written in the
style of Modelica code within ``<code>`` and ``</code>``

Example 1
'''''''''

``<p>If <code>useCage == true</code>, a damper cage is considered in the model...</p>``

appears as

If ``useCage == true``, a damper cage is considered in the model...

For more complex case scenarios a unordered list should be used. In this
case only Modelica specific code segments and boolean expressions.

Example 2
'''''''''

::

    <ul>
      <li> If <code>useCage == true</code>, a damper cage is considered in the model.
           Cage parameters must be specified in this case.</li>
      <li> If <code>useCage == false</code>, the damper cage is omitted.</li>
    </ul>

appears as

-  If ``useCage == true``, a damper cage is considered in the model.
   Cage parameters must be specified in this case.
-  If ``useCage == false``, the damper cage is omitted.

In a more equation oriented case additional equations or code segments
can be added.

Example 3
'''''''''

::

    <ul>
      <li>if <code>usePolar == true</code>, assign magnitude and angle to output <br>
      <!-- insert graphical representation of equations -->
      y[i,1] = sqrt( a[i]^2 + b[i]^2 ) <br>
      y[i,2] = atan2( b[i], a[i] )
      </li>
      <li>if <code>usePolar == false</code>, assign cosine and sine to output <br>
      <!-- insert graphical representation of equations -->
      y[i,1] = a[i] <br>
      y[i,2] = b[i]
      </li>
    </ul>

appears as

-  if ``usePolar == true``, assign magnitude and angle to output
    |image18|
    |image19|
-  if ``usePolar == false``, assign cosine and sine to output
    |image20|
    |image21|

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image22| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Code
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Code
^^^^

`Modelica
code <Modelica_UsersGuide_Conventions_ModelicaCode.html#Modelica.UsersGuide.Conventions.ModelicaCode>`_
conventions of class and instance names, parameters and variables are
specified separately. In this section it is summarized how to refer to
Modelica code in the HTML documentation.

#. For constants, parameters and variables in code segments ``<code>``
   and ``</code>`` should to be used, e.g.,
   ``parameter Modelica.SIunits.Time tStart "Start time"``
#. Write multi or single line code segments using ``<pre>`` and
   ``</pre>``.
#. Multi line or single line code shall not be indented.
#. Inline code segments may be typeset with ``<code>`` and ``</code>``.
#. In code segements use bold to emphasize Modelica keywords.

Example 1
'''''''''

::

    <pre>
    <b>connector</b> Frame
       ...
       <b>flow</b> SI.Force f[Woehrnschimmel1998] <b>annotation</b>(unassignedMessage="...");
    <b>end</b> Frame;
    </pre>

appears as

::

    connector Frame
       ...
       flow SI.Force f[Woehrnschimmel1998] annotation(unassignedMessage="...");
    end Frame;

Example 2
'''''''''

::

    <pre>
    <b>parameter</b> Modelica.SIunits.Conductance G=1 "Conductance";</pre>

appears as

::

    parameter Modelica.SIunits.Conductance G=1 "Conductance";

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image23| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Equations
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

In the context of `HTML <http://www.w3c.org/>`_ documentation equations
should have a graphical representation in PNG format. For that purpose
tool specific math typing capabilites can be used. Alternatively the
LaTeX to HTML translator `LaTeX2HTML <http://www.latex2html.org>`_, or
the `Online Equation
Editor <http://www.homeschoolmath.net/worksheets/equation_editor.php>`_
or `codecogs <http://www.codecogs.com/components/eqneditor/editor.php>`_
can be used.

A typical equation, e.g., of a Fourier synthesis, could look like
 |image24|
 or
 |y=a\_1+a\_2|
 In an ``alt`` tag the original equation can be stored, e.g.

::

    <img
     src="modelica://Modelica/Resources/Images/UsersGuide/Conventions/Documentation/Format/Equations/sample.png"
     alt="y=a_1+a_2">

If one wants to refer to particular variables and parameters in the
documentation text, either a graphical representation (PNG file) or
italic fonts for regular physical symbols and lower case `greek
letters <http://www.w3.org/TR/html4/sgml/entities.html>`_ should be
used. Full word variables and full word indices should be spelled within
<code> and </code>. Vector and array indices should be typeset as
subscripts using the <sub> and </sub> tags. Examples for such variables
and parameters are: *φ*, *φ*\ :sub:`ref`\ , *v\ :sub:`2`\ *,
``useDamperCage``.

Numbered equations
^^^^^^^^^^^^^^^^^^

For numbering equations a one row table with two columns should be used.
The equation number should be placed in the right column:

::

    <table border="0" cellspacing="10" cellpadding="2">
      <tr>
          <td><img
          src="modelica://Modelica/Resources/Images/UsersGuide/Conventions/Documentation/Format/Equations/sample.png"
          alt="y=a_1+a_2"> </td>
          <td>(1)</td>
      </tr>
    </table>

appears as:

+-------------+-------+
| |image27|   | (1)   |
+-------------+-------+

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image28| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Figures
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Figures
^^^^^^^

Figures should in particular be included to examples to discuss the
problems and results of the respective model. The library developers are
yet encouraged to add figures to the documentation of other components
to support the understanding of the users of the library.

#. Figures have to be placed outside of paragraphs to be HTML compliant.
#. Technical figures should be placed within a table environment. Each
   technical figure should then also have a caption. The figure caption
   starts with a capital letter.
#. Illustration can be embedded without table environment.

Location of files
^^^^^^^^^^^^^^^^^

The ``PNG`` files should be placed in a folder which exactly represents
the package structure.

Example 1
'''''''''

This example shows how an illustration should be embedded in the Example
`PID\_Controller <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.PID_Controller>`_
of the `Blocks <Modelica_Blocks.html#Modelica.Blocks>`_ package.

::

    <img src="modelica://Modelica/Resources/Images/UsersGuide/Conventions/Images/Blocks/Examples/PID_controller.png">

Example 2
'''''''''

This is a simple example of a technical figure with caption.

::

    <table border="0" cellspacing="0" cellpadding="2">
      <caption align="bottom">Caption starts with a capital letter</caption>
      <tr>
        <td>
          <img src="modelica://Modelica/Resources/Images/UsersGuide/Conventions/Images/Blocks/Examples/PID_controller.png">
        </td>
      </tr>
    </table>

Example 3
'''''''''

To refer to a certain figure, a figure number may be added. In such case
the figure name (Fig.) including the figure enumeration (1,2,...) have
to be displayed bold using ``<b>`` and ``</b>``. The figure name and
enumeration should look like this: **Fig. 1:** Figures have to be
enumerated manually.

::

    <table border="0" cellspacing="0" cellpadding="2">
      <caption align="bottom"><b>Fig. 2: </b>Caption starts with a capital letter</caption>
      <tr>
        <td>
          <img src="modelica://Modelica/Resources/Images/UsersGuide/Conventions/Images/Blocks/Examples/PID_controller.png">
        </td>
      </tr>
    </table>

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image29| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Hyperlinks
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

#. Hyperlinks should always be made when referring to a component or
   package.
#. The hyperlink text in between ``<a href="...">`` and ``</a>`` should
   include the full main package name.
#. A link to an external component should include the full name of the
   package that it is refered to.
#. Modelica hyperlinks have to use the scheme ``"modelica://..."``
#. For hyperlinks referring to a Modelica component, see Example 1 and
   2.
#. No links to commercial web sites are allowed.

Example 1
'''''''''

::

    <a href="modelica://Modelica.Mechanics.MultiBody.UsersGuide.Tutorial.LoopStructures.PlanarLoops">
             Modelica.Mechanics.MultiBody.UsersGuide.Tutorial.LoopStructures.PlanarLoops</a>

appears as

`Modelica.Mechanics.MultiBody.UsersGuide.Tutorial.LoopStructures.PlanarLoops <Modelica_Mechanics_MultiBody_UsersGuide_Tutorial_LoopStructures.html#Modelica.Mechanics.MultiBody.UsersGuide.Tutorial.LoopStructures.PlanarLoops>`_

Example 2
'''''''''

::

    <p>
      The feeder calbles are connected to an
      <a href="modelica://Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage">
      induction machine</a>.
    </p>

appears as

The feeder calbles are connected to an `induction
machine <Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage>`_.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image30| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Lists
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Lists
^^^^^

#. Items of a list shall start with

   -  a capital letter if each item is a full sentence
   -  a small letter, if only text fragments are used or the list is
      fragment of a sentence

Example 1
'''''''''

This is a simple example of an enumerated (ordered) list

::

    <ol>
      <li>item 1</li>
      <li>item 2</li>
    </ol>

appears as

#. item 1
#. item 2

Example 2
'''''''''

This is a simple example of an unnumbered list.

::

    <ul>
      <li>item 1</li>
      <li>item 2</li>
    </ul>

appears as

-  item 1
-  item 2

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image31| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.References
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

General
^^^^^^^

#. Refer to references by [1], [Andronov1973], etc. by hyperlink and
   summarize literature in the references subsection of
   `Conventions.UsersGuide.References <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.References>`_.
#. There has to be made at least one citation to each reference.

Example
'''''''

::

    <p>
      More details about sensorless rotor temperature estimation
      can be found in <a href="modelica://Modelica.UsersGuide.Conventions.UsersGuide.References">[Gao2008]</a.>
    </p>

appears as

More details about sensorless rotor temperature estimation can be found
in
`[Gao2008] <Modelica_UsersGuide_Conventions_UsersGuide.html#Modelica.UsersGuide.Conventions.UsersGuide.References>`_.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image32| `Modelica.UsersGuide.Conventions.Documentation.Format <Modelica_UsersGuide_Conventions_Documentation_Format.html#Modelica.UsersGuide.Conventions.Documentation.Format>`_.Tables
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Tables
^^^^^^

#. Tables should always be typeset with ``<table>`` and ``</table>``,
   not with ``<pre>`` and ``</pre>``.
#. Tables have to be placed outside of paragraphs to be HTML compliant.
#. Each table must have a table caption.
#. Table headers and entries start with capital letters.

Example 1
'''''''''

This is a simple example of a table.

::

    <table border="1" cellspacing="0" cellpadding="2">
      <caption align="bottom">Caption starts with a capital letter</caption>
      <tr>
        <th>Head 1</th>
        <th>Head 2</th>
      </tr>
      <tr>
        <td>Entry 1</td>
        <td>Entry 2</td>
      </tr>
      <tr>
        <td>Entry 3</td>
        <td>Entry 4</td>
      </tr>
    </table>

appears as

Caption starts with a capital letter

**Head 1**

**Head 2**

Entry 1

Entry 2

Entry 3

Entry 4

Example 2
'''''''''

In this case of table captions, the table name (Tab.) including the
table enumeration (1,2,...) has to be displayed bold using ``<b>`` and
``</b>``. The table name and enumeration should look like this: **Tab.
1:** Tables have to be enumerated manually.

::

    <table border="1" cellspacing="0" cellpadding="2">
      <caption align="bottom"><b>Tab 2: </b>Caption starts with a capital letter</caption>
      <tr>
        <th>Head 1</th>
        <th>Head 2</th>
      </tr>
      <tr>
        <td>Entry 1</td>
        <td>Entry 2</td>
      </tr>
      <tr>
        <td>Entry 3</td>
        <td>Entry 4</td>
      </tr>
    </table>

appears as

**Tab. 2:**Caption starts with a capital letter

Head 1

Head 2

Entry 1

Entry 2

Entry 3

Entry 4

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:29
2010.

.. |Modelica.UsersGuide.Conventions.Documentation.Format| image:: Modelica.UsersGuide.ConventionsI.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Cases| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Code| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Equations| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Figures| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Hyperlinks| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Lists| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.References| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |Modelica.UsersGuide.Conventions.Documentation.Format.Tables| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image9| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image10| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image11| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image12| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image13| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image14| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image15| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image16| image:: Modelica.UsersGuide.Conventions.DocumentationS.png
.. |image17| image:: Modelica.UsersGuide.ConventionsI.png
.. |image18| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Cases/y_i1_polar.png
.. |image19| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Cases/y_i2_polar.png
.. |image20| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Cases/y_i1_rect.png
.. |image21| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Cases/y_i2_rect.png
.. |image22| image:: Modelica.UsersGuide.ConventionsI.png
.. |image23| image:: Modelica.UsersGuide.ConventionsI.png
.. |image24| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Equations/fourier.png
.. |y=a\_1+a\_2| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Equations/sample.png
.. |image26| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Equations/sample.png
.. |image27| image:: ../Resources/Images/UsersGuide/Conventions/Documentation/Format/Equations/sample.png
.. |image28| image:: Modelica.UsersGuide.ConventionsI.png
.. |image29| image:: Modelica.UsersGuide.ConventionsI.png
.. |image30| image:: Modelica.UsersGuide.ConventionsI.png
.. |image31| image:: Modelica.UsersGuide.ConventionsI.png
.. |image32| image:: Modelica.UsersGuide.ConventionsI.png
