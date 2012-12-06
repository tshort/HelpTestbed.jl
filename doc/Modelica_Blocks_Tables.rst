======================
Modelica.Blocks.Tables
======================

`Modelica.Blocks <Modelica_Blocks.html#Modelica.Blocks>`_.Tables
----------------------------------------------------------------

**Library of blocks to interpolate in one and two-dimensional tables**

Information
~~~~~~~~~~~

::

This package contains blocks for one- and two-dimensional interpolation
in tables.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Name                                                                                                                         | Description                                                                 |
+==============================================================================================================================+=============================================================================+
| |image3| `CombiTable1D <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables.CombiTable1D>`_                                   | Table look-up in one dimension (matrix/file) with n inputs and n outputs    |
+------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image4| `CombiTable1Ds <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables.CombiTable1Ds>`_                                 | Table look-up in one dimension (matrix/file) with one input and n outputs   |
+------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image5| `CombiTable2D <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables.CombiTable2D>`_                                   | Table look-up in two dimensions (matrix/file)                               |
+------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+

--------------

|image6| `Modelica.Blocks.Tables <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables>`_.CombiTable1D
----------------------------------------------------------------------------------------------------

**Table look-up in one dimension (matrix/file) with n inputs and n
outputs**

.. figure:: Modelica.Blocks.Tables.CombiTable1DD.png
   :align: center
   :alt: Modelica.Blocks.Tables.CombiTable1D

   Modelica.Blocks.Tables.CombiTable1D

Information
~~~~~~~~~~~

::

**Linear interpolation** in **one** dimension of a **table**. Via
parameter **columns** it can be defined how many columns of the table
are interpolated. If, e.g., columns={2,4}, it is assumed that 2 input
and 2 output signals are present and that the first output interpolates
the first input via column 2 and the second output interpolates the
second input via column 4 of the table matrix.

The grid points and function values are stored in a matrix "table[i,j]",
where the first column "table[:,1]" contains the grid points and the
other columns contain the data to be interpolated. Example:

::

       table = [0,  0;
                1,  1;
                2,  4;
                4, 16]
       If, e.g., the input u = 1.0, the output y =  1.0,
           e.g., the input u = 1.5, the output y =  2.5,
           e.g., the input u = 2.0, the output y =  4.0,
           e.g., the input u =-1.0, the output y = -1.0 (i.e., extrapolation).

-  The interpolation is **efficient**, because a search for a new
   interpolation starts at the interval used in the last call.
-  If the table has only **one row**, the table value is returned,
   independent of the value of the input signal.
-  If the input signal **u[i]** is **outside** of the defined
   **interval**, i.e., u[i] > table[size(table,1),i+1] or u[i] <
   table[1,1], the corresponding value is also determined by linear
   interpolation through the last or first two points of the table.
-  The grid values (first column) have to be **strict** monotonically
   increasing.

The table matrix can be defined in the following ways:

#. Explicitly supplied as **parameter matrix** "table", and the other
   parameters have the following values:

   ::

          tableName is "NoName" or has only blanks,
          fileName  is "NoName" or has only blanks.

#. **Read** from a **file** "fileName" where the matrix is stored as
   "tableName". Both ASCII and binary file format is possible. (the
   ASCII format is described below). It is most convenient to generate
   the binary file from Matlab (Matlab 4 storage format), e.g., by
   command

   ::

          save tables.mat tab1 tab2 tab3 -V4

   when the three tables tab1, tab2, tab3 should be used from the model.

#. Statically stored in function "usertab" in file "usertab.c". The
   matrix is identified by "tableName". Parameter fileName = "NoName" or
   has only blanks.

Table definition methods (1) and (3) do **not** allocate dynamic memory,
and do not access files, whereas method (2) does. Therefore (1) and (3)
are suited for hardware-in-the-loop simulation (e.g., with dSpace
hardware). When the constant "NO\_FILE" is defined in "usertab.c", all
parts of the source code of method (2) are removed by the
C-preprocessor, such that no dynamic memory allocation and no access to
files takes place.

If tables are read from an ASCII-file, the file need to have the
following structure ("-----" is not part of the file content):

::

    -----------------------------------------------------
    #1
    double tab1(5,2)   # comment line
      0   0
      1   1
      2   4
      3   9
      4  16
    double tab2(5,2)   # another comment line
      0   0
      2   2
      4   8
      6  18
      8  32
    -----------------------------------------------------

Note, that the first two characters in the file need to be "#1".
Afterwards, the corresponding matrix has to be declared with type, name
and actual dimensions. Finally, in successive rows of the file, the
elements of the matrix have to be given. Several matrices may be defined
one after another.

::

Extends from
`Modelica.Blocks.Interfaces.MIMOs <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs>`_
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Type                                                                          | Name          | Default                           | Description                                                |
+===============================================================================+===============+===================================+============================================================+
| Integer                                                                       | n             | size(columns, 1)                  | Number of inputs (= number of outputs)                     |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| table data definition                                                         |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Boolean                                                                       | tableOnFile   | false                             | true, if table is defined on file or in function usertab   |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Real                                                                          | table[:, :]   | fill(0.0, 0, 2)                   | table matrix (grid = first column; e.g., table=[0,2])      |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| String                                                                        | tableName     | "NoName"                          | table name on file or in function usertab (see docu)       |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| String                                                                        | fileName      | "NoName"                          | file where matrix is stored                                |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| table data interpretation                                                     |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Integer                                                                       | columns[:]    | 2:size(table, 2)                  | columns of table to be interpolated                        |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| `Smoothness <Modelica_Blocks_Types.html#Modelica.Blocks.Types.Smoothness>`_   | smoothness    | Types.Smoothness.LinearSegme...   | smoothness of table interpolation                          |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n]   | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CombiTable1D 
      "Table look-up in one dimension (matrix/file) with n inputs and n outputs "
      import Modelica.Blocks.Types;
      parameter Boolean tableOnFile=false 
        "true, if table is defined on file or in function usertab";
      parameter Real table[:, :]=fill(0.0,0,2) 
        "table matrix (grid = first column; e.g., table=[0,2])";
      parameter String tableName="NoName" 
        "table name on file or in function usertab (see docu)";
      parameter String fileName="NoName" "file where matrix is stored";
      parameter Integer columns[:]=2:size(table, 2) 
        "columns of table to be interpolated";
      parameter Modelica.Blocks.Types.Smoothness smoothness=Types.Smoothness.LinearSegments 
        "smoothness of table interpolation";
      extends Modelica.Blocks.Interfaces.MIMOs(final n=size(columns, 1));

    protected 
      Integer tableID;

      function tableInit 
        "Initialize 1-dim. table defined by matrix (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input String tableName;
        input String fileName;
        input Real table[ :, :];
        input Modelica.Blocks.Types.Smoothness smoothness;
        output Integer tableID;
      external "C" tableID=  ModelicaTables_CombiTable1D_init(
                     tableName, fileName, table, size(table, 1), size(table, 2),
                     smoothness);
      end tableInit;

      function tableIpo 
        "Interpolate 1-dim. table defined by matrix (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        input Integer icol;
        input Real u;
        output Real value;
      external "C" value =
                         ModelicaTables_CombiTable1D_interpolate(tableID, icol, u);
      end tableIpo;
    equation 
      if tableOnFile then
        assert(tableName<>"NoName", "tableOnFile = true and no table name given");
      end if;
      if not tableOnFile then
        assert(size(table,1) > 0 and size(table,2) > 0, "tableOnFile = false and parameter table is an empty matrix");
      end if;

      for i in 1:n loop
        y[i] = if not tableOnFile and size(table,1)==1 then 
                 table[1, columns[i]] else tableIpo(tableID, columns[i], u[i]);
      end for;
      when initial() then
        tableID=tableInit(if tableOnFile then tableName else "NoName",
                          if tableOnFile then fileName else "NoName", table, smoothness);
      end when;
    end CombiTable1D;

--------------

|image7| `Modelica.Blocks.Tables <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables>`_.CombiTable1Ds
-----------------------------------------------------------------------------------------------------

**Table look-up in one dimension (matrix/file) with one input and n
outputs**

.. figure:: Modelica.Blocks.Tables.CombiTable1DsD.png
   :align: center
   :alt: Modelica.Blocks.Tables.CombiTable1Ds

   Modelica.Blocks.Tables.CombiTable1Ds

Information
~~~~~~~~~~~

::

**Linear interpolation** in **one** dimension of a **table**. Via
parameter **columns** it can be defined how many columns of the table
are interpolated. If, e.g., icol={2,4}, it is assumed that one input and
2 output signals are present and that the first output interpolates via
column 2 and the second output interpolates via column 4 of the table
matrix.

The grid points and function values are stored in a matrix "table[i,j]",
where the first column "table[:,1]" contains the grid points and the
other columns contain the data to be interpolated. Example:

::

       table = [0,  0;
                1,  1;
                2,  4;
                4, 16]
       If, e.g., the input u = 1.0, the output y =  1.0,
           e.g., the input u = 1.5, the output y =  2.5,
           e.g., the input u = 2.0, the output y =  4.0,
           e.g., the input u =-1.0, the output y = -1.0 (i.e., extrapolation).

-  The interpolation is **efficient**, because a search for a new
   interpolation starts at the interval used in the last call.
-  If the table has only **one row**, the table value is returned,
   independent of the value of the input signal.
-  If the input signal **u** is **outside** of the defined **interval**,
   i.e., u > table[size(table,1),1] or u < table[1,1], the corresponding
   value is also determined by linear interpolation through the last or
   first two points of the table.
-  The grid values (first column) have to be **strict** monotonically
   increasing.

The table matrix can be defined in the following ways:

#. Explicitly supplied as **parameter matrix** "table", and the other
   parameters have the following values:

   ::

          tableName is "NoName" or has only blanks,
          fileName  is "NoName" or has only blanks.

#. **Read** from a **file** "fileName" where the matrix is stored as
   "tableName". Both ASCII and binary file format is possible. (the
   ASCII format is described below). It is most convenient to generate
   the binary file from Matlab (Matlab 4 storage format), e.g., by
   command

   ::

          save tables.mat tab1 tab2 tab3 -V4

   when the three tables tab1, tab2, tab3 should be used from the model.

#. Statically stored in function "usertab" in file "usertab.c". The
   matrix is identified by "tableName". Parameter fileName = "NoName" or
   has only blanks.

Table definition methods (1) and (3) do **not** allocate dynamic memory,
and do not access files, whereas method (2) does. Therefore (1) and (3)
are suited for hardware-in-the-loop simulation (e.g., with dSpace
hardware). When the constant "NO\_FILE" is defined, all parts of the
source code of method (2) are removed by the C-preprocessor, such that
no dynamic memory allocation and no access to files takes place.

If tables are read from an ASCII-file, the file need to have the
following structure ("-----" is not part of the file content):

::

    -----------------------------------------------------
    #1
    double tab1(5,2)   # comment line
      0   0
      1   1
      2   4
      3   9
      4  16
    double tab2(5,2)   # another comment line
      0   0
      2   2
      4   8
      6  18
      8  32
    -----------------------------------------------------

Note, that the first two characters in the file need to be "#1".
Afterwards, the corresponding matrix has to be declared with type, name
and actual dimensions. Finally, in successive rows of the file, the
elements of the matrix have to be given. Several matrices may be defined
one after another.

::

Extends from
`Modelica.Blocks.Interfaces.SIMO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SIMO>`_
(Single Input Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Type                                                                          | Name          | Default                           | Description                                                |
+===============================================================================+===============+===================================+============================================================+
| Integer                                                                       | nout          | size(columns, 1)                  | Number of outputs                                          |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| table data definition                                                         |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Boolean                                                                       | tableOnFile   | false                             | true, if table is defined on file or in function usertab   |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Real                                                                          | table[:, :]   | fill(0.0, 0, 2)                   | table matrix (grid = first column; e.g., table=[0,2])      |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| String                                                                        | tableName     | "NoName"                          | table name on file or in function usertab (see docu)       |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| String                                                                        | fileName      | "NoName"                          | file where matrix is stored                                |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| table data interpretation                                                     |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| Integer                                                                       | columns[:]    | 2:size(table, 2)                  | columns of table to be interpolated                        |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+
| `Smoothness <Modelica_Blocks_Types.html#Modelica.Blocks.Types.Smoothness>`_   | smoothness    | Types.Smoothness.LinearSegme...   | smoothness of table interpolation                          |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u         | Connector of Real input signal     |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CombiTable1Ds 
      "Table look-up in one dimension (matrix/file) with one input and n outputs"

      import Modelica.Blocks.Types;
      parameter Boolean tableOnFile=false 
        "true, if table is defined on file or in function usertab";
      parameter Real table[:, :]=fill(0.0,0,2) 
        "table matrix (grid = first column; e.g., table=[0,2])";
      parameter String tableName="NoName" 
        "table name on file or in function usertab (see docu)";
      parameter String fileName="NoName" "file where matrix is stored";
      parameter Integer columns[:]=2:size(table, 2) 
        "columns of table to be interpolated";
      parameter Modelica.Blocks.Types.Smoothness smoothness=Types.Smoothness.LinearSegments 
        "smoothness of table interpolation";
      extends Modelica.Blocks.Interfaces.SIMO(final nout=size(columns, 1));

    protected 
      Integer tableID;

      function tableInit 
        "Initialize 1-dim. table defined by matrix (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input String tableName;
        input String fileName;
        input Real table[ :, :];
        input Modelica.Blocks.Types.Smoothness smoothness;
        output Integer tableID;
      external "C" tableID=  ModelicaTables_CombiTable1D_init(
                     tableName, fileName, table, size(table, 1), size(table, 2),
                     smoothness);
      end tableInit;

      function tableIpo 
        "Interpolate 1-dim. table defined by matrix (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        input Integer icol;
        input Real u;
        output Real value;
      external "C" value =
                         ModelicaTables_CombiTable1D_interpolate(tableID, icol, u);
      end tableIpo;

    equation 
      if tableOnFile then
        assert(tableName<>"NoName", "tableOnFile = true and no table name given");
      end if;
      if not tableOnFile then
        assert(size(table,1) > 0 and size(table,2) > 0, "tableOnFile = false and parameter table is an empty matrix");
      end if;

      for i in 1:nout loop
        y[i] = if not tableOnFile and size(table,1)==1 then 
                 table[1, columns[i]] else tableIpo(tableID, columns[i], u);
      end for;
      when initial() then
        tableID=tableInit(if tableOnFile then tableName else "NoName",
                          if tableOnFile then fileName else "NoName", table, smoothness);
      end when;
    end CombiTable1Ds;

--------------

|image8| `Modelica.Blocks.Tables <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables>`_.CombiTable2D
----------------------------------------------------------------------------------------------------

**Table look-up in two dimensions (matrix/file)**

.. figure:: Modelica.Blocks.Tables.CombiTable2DD.png
   :align: center
   :alt: Modelica.Blocks.Tables.CombiTable2D

   Modelica.Blocks.Tables.CombiTable2D

Information
~~~~~~~~~~~

::

**Linear interpolation** in **two** dimensions of a **table**. The grid
points and function values are stored in a matrix "table[i,j]", where:

-  the first column "table[2:,1]" contains the u[1] grid points,
-  the first row "table[1,2:]" contains the u[2] grid points,
-  the other rows and columns contain the data to be interpolated.

Example:

::

               |       |       |       |
               |  1.0  |  2.0  |  3.0  |  // u2
           ----*-------*-------*-------*
           1.0 |  1.0  |  3.0  |  5.0  |
           ----*-------*-------*-------*
           2.0 |  2.0  |  4.0  |  6.0  |
           ----*-------*-------*-------*
         // u1
       is defined as
          table = [0.0,   1.0,   2.0,   3.0;
                   1.0,   1.0,   3.0,   5.0;
                   2.0,   2.0,   4.0,   6.0]
       If, e.g., the input u is [1.0;1.0], the output y is 1.0,
           e.g., the input u is [2.0;1.5], the output y is 3.0.

-  The interpolation is **efficient**, because a search for a new
   interpolation starts at the interval used in the last call.
-  If the table has only **one element**, the table value is returned,
   independent of the value of the input signal.
-  If the input signal **u1** or **u2** is **outside** of the defined
   **interval**, the corresponding value is also determined by linear
   interpolation through the last or first two points of the table.
-  The grid values (first column and first row) have to be **strict**
   monotonically increasing.

The table matrix can be defined in the following ways:

#. Explicitly supplied as **parameter matrix** "table", and the other
   parameters have the following values:

   ::

          tableName is "NoName" or has only blanks,
          fileName  is "NoName" or has only blanks.

#. **Read** from a **file** "fileName" where the matrix is stored as
   "tableName". Both ASCII and binary file format is possible. (the
   ASCII format is described below). It is most convenient to generate
   the binary file from Matlab (Matlab 4 storage format), e.g., by
   command

   ::

          save tables.mat tab1 tab2 tab3 -V4

   when the three tables tab1, tab2, tab3 should be used from the model.

#. Statically stored in function "usertab" in file "usertab.c". The
   matrix is identified by "tableName". Parameter fileName = "NoName" or
   has only blanks.

Table definition methods (1) and (3) do **not** allocate dynamic memory,
and do not access files, whereas method (2) does. Therefore (1) and (3)
are suited for hardware-in-the-loop simulation (e.g., with dSpace
hardware). When the constant "NO\_FILE" is defined, all parts of the
source code of method (2) are removed by the C-preprocessor, such that
no dynamic memory allocation and no access to files takes place.

If tables are read from an ASCII-file, the file need to have the
following structure ("-----" is not part of the file content):

::

    -----------------------------------------------------
    #1
    double table2D_1(3,4)   # comment line
    0.0  1.0  2.0  3.0  # u[2] grid points
    1.0  1.0  3.0  5.0
    2.0  2.0  4.0  6.0

    double table2D_2(4,4)   # comment line
    0.0  1.0  2.0  3.0  # u[2] grid points
    1.0  1.0  3.0  5.0
    2.0  2.0  4.0  6.0
    3.0  3.0  5.0  7.0
    -----------------------------------------------------

Note, that the first two characters in the file need to be "#1".
Afterwards, the corresponding matrix has to be declared with type, name
and actual dimensions. Finally, in successive rows of the file, the
elements of the matrix have to be given. Several matrices may be defined
one after another. The matrix elements are interpreted in exactly the
same way as if the matrix is given as a parameter. For example, the
first column "table2D\_1[2:,1]" contains the u[1] grid points, and the
first row "table2D\_1[1,2:]" contains the u[2] grid points.

::

Extends from
`Modelica.Blocks.Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| Type                                                                          | Name          | Default                           | Description                                                                         |
+===============================================================================+===============+===================================+=====================================================================================+
| table data definition                                                         |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| Boolean                                                                       | tableOnFile   | false                             | true, if table is defined on file or in function usertab                            |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| Real                                                                          | table[:, :]   | fill(0.0, 0, 2)                   | table matrix (grid u1 = first column, grid u2 = first row; e.g., table=[0,0;0,1])   |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| String                                                                        | tableName     | "NoName"                          | table name on file or in function usertab (see docu)                                |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| String                                                                        | fileName      | "NoName"                          | file where matrix is stored                                                         |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| table data interpretation                                                     |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Smoothness <Modelica_Blocks_Types.html#Modelica.Blocks.Types.Smoothness>`_   | smoothness    | Types.Smoothness.LinearSegme...   | smoothness of table interpolation                                                   |
+-------------------------------------------------------------------------------+---------------+-----------------------------------+-------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CombiTable2D "Table look-up in two dimensions (matrix/file) "

      import Modelica.Blocks.Types;
      extends Modelica.Blocks.Interfaces.SI2SO;

      parameter Boolean tableOnFile=false 
        "true, if table is defined on file or in function usertab";
      parameter Real table[:, :]=fill(0.0,0,2) 
        "table matrix (grid u1 = first column, grid u2 = first row; e.g., table=[0,0;0,1])";
      parameter String tableName="NoName" 
        "table name on file or in function usertab (see docu)";
      parameter String fileName="NoName" "file where matrix is stored";
      parameter Modelica.Blocks.Types.Smoothness smoothness=Types.Smoothness.LinearSegments 
        "smoothness of table interpolation";
    protected 
      Integer tableID;

      function tableInit 
        "Initialize 2-dim. table defined by matrix (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"

        input String tableName;
        input String fileName;
        input Real table[ :, :];
        input Modelica.Blocks.Types.Smoothness smoothness;
        output Integer tableID;
      external "C" tableID=  ModelicaTables_CombiTable2D_init(
                     tableName, fileName, table, size(table, 1), size(table, 2),
                     smoothness);
      end tableInit;

      function tableIpo 
        "Interpolate 2-dim. table defined by matrix (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        input Real u1;
        input Real u2;
        output Real value;
      external "C" value =
                         ModelicaTables_CombiTable2D_interpolate(tableID, u1, u2);
      end tableIpo;

    equation 
      if tableOnFile then
        assert(tableName<>"NoName", "tableOnFile = true and no table name given");
      end if;
      if not tableOnFile then
        assert(size(table,1) > 0 and size(table,2) > 0, "tableOnFile = false and parameter table is an empty matrix");
      end if;

      y = tableIpo(tableID, u1, u2);
      when initial() then
        tableID=tableInit(if tableOnFile then tableName else "NoName",
                          if tableOnFile then fileName else "NoName", table, smoothness);
      end when;
    end CombiTable2D;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:40
2010.

.. |Modelica.Blocks.Tables.CombiTable1D| image:: Modelica.Blocks.Tables.CombiTable1DS.png
.. |Modelica.Blocks.Tables.CombiTable1Ds| image:: Modelica.Blocks.Tables.CombiTable1DS.png
.. |Modelica.Blocks.Tables.CombiTable2D| image:: Modelica.Blocks.Tables.CombiTable2DS.png
.. |image3| image:: Modelica.Blocks.Tables.CombiTable1DS.png
.. |image4| image:: Modelica.Blocks.Tables.CombiTable1DS.png
.. |image5| image:: Modelica.Blocks.Tables.CombiTable2DS.png
.. |image6| image:: Modelica.Blocks.Tables.CombiTable1DI.png
.. |image7| image:: Modelica.Blocks.Tables.CombiTable1DI.png
.. |image8| image:: Modelica.Blocks.Tables.CombiTable2DI.png
