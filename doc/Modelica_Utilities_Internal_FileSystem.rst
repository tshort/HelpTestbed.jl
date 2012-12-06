======================================
Modelica.Utilities.Internal.FileSystem
======================================

`Modelica.Utilities.Internal <Modelica_Utilities_Internal.html#Modelica.Utilities.Internal>`_.FileSystem
--------------------------------------------------------------------------------------------------------

**Internal package with external functions as interface to the file
system**

Information
~~~~~~~~~~~

::

Package **Internal.FileSystem** is an internal package that contains low
level functions as interface to the file system. These functions should
not be called directly in a scripting environment since more convenient
functions are provided in packages Files and Systems.

Note, the functions in this package are direct interfaces to functions
of POSIX and of the standard C library. Errors occuring in these
functions are treated by triggering a Modelica assert. Therefore, the
functions in this package return only for a successful operation.
Furthermore, the representation of a string is hidden by this interface,
especially if the operating system supports Unicode characters.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                  | Description                                                                                       |
+=======================================================================================================================================================================================+===================================================================================================+
| |image8| `mkdir <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.mkdir>`_                                                                          | Make directory (POSIX: 'mkdir')                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image9| `rmdir <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.rmdir>`_                                                                          | Remove empty directory (POSIX function 'rmdir')                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image10| `stat <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.stat>`_                                                                           | Inquire file information (POSIX function 'stat')                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image11| `rename <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.rename>`_                                                                       | Rename existing file or directory (C function 'rename')                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image12| `removeFile <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.removeFile>`_                                                               | Remove existing file (C function 'remove')                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image13| `copyFile <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.copyFile>`_                                                                   | Copy existing file (C functions 'fopen', 'getc', 'putc', 'fclose')                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image14| `readDirectory <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.readDirectory>`_                                                         | Read names of a directory (POSIX functions opendir, readdir, closedir)                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image15| `getNumberOfFiles <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem.getNumberOfFiles>`_                                                   | Get number of files and directories in a directory (POSIX functions opendir, readdir, closedir)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+

--------------

|image16| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.mkdir
----------------------------------------------------------------------------------------------------------------------------------------------

**Make directory (POSIX: 'mkdir')**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+-----------------+-----------+------------------------+
| Type     | Name            | Default   | Description            |
+==========+=================+===========+========================+
| String   | directoryName   |           | Make a new directory   |
+----------+-----------------+-----------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function mkdir "Make directory (POSIX: 'mkdir')"
      extends Modelica.Icons.Function;
      input String directoryName "Make a new directory";
    external "C" ModelicaInternal_mkdir(directoryName);

    end mkdir;

--------------

|image17| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.rmdir
----------------------------------------------------------------------------------------------------------------------------------------------

**Remove empty directory (POSIX function 'rmdir')**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+-----------------+-----------+---------------------------------+
| Type     | Name            | Default   | Description                     |
+==========+=================+===========+=================================+
| String   | directoryName   |           | Empty directory to be removed   |
+----------+-----------------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rmdir 
      "Remove empty directory (POSIX function 'rmdir')"
      extends Modelica.Icons.Function;
      input String directoryName "Empty directory to be removed";
    external "C" ModelicaInternal_rmdir(directoryName);

    end rmdir;

--------------

|image18| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.stat
---------------------------------------------------------------------------------------------------------------------------------------------

**Inquire file information (POSIX function 'stat')**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+--------+-----------+--------------------------------------+
| Type     | Name   | Default   | Description                          |
+==========+========+===========+======================================+
| String   | name   |           | Name of file, directory, pipe etc.   |
+----------+--------+-----------+--------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+------------+----------------+
| Type                                                                            | Name       | Description    |
+=================================================================================+============+================+
| `FileType <Modelica_Utilities_Types.html#Modelica.Utilities.Types.FileType>`_   | fileType   | Type of file   |
+---------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function stat 
      "Inquire file information (POSIX function 'stat')"
      extends Modelica.Icons.Function;
      input String name "Name of file, directory, pipe etc.";
      output Types.FileType fileType "Type of file";
    external "C" fileType = ModelicaInternal_stat(name);

    end stat;

--------------

|image19| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.rename
-----------------------------------------------------------------------------------------------------------------------------------------------

**Rename existing file or directory (C function 'rename')**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+-----------+-----------+----------------+
| Type     | Name      | Default   | Description    |
+==========+===========+===========+================+
| String   | oldName   |           | Current name   |
+----------+-----------+-----------+----------------+
| String   | newName   |           | New name       |
+----------+-----------+-----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rename 
      "Rename existing file or directory (C function 'rename')"
      extends Modelica.Icons.Function;
      input String oldName "Current name";
      input String newName "New name";
    external "C" ModelicaInternal_rename(oldName, newName);

    end rename;

--------------

|image20| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.removeFile
---------------------------------------------------------------------------------------------------------------------------------------------------

**Remove existing file (C function 'remove')**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+------------+-----------+----------------------+
| Type     | Name       | Default   | Description          |
+==========+============+===========+======================+
| String   | fileName   |           | File to be removed   |
+----------+------------+-----------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function removeFile 
      "Remove existing file (C function 'remove')"
      extends Modelica.Icons.Function;
      input String fileName "File to be removed";
    external "C" ModelicaInternal_removeFile(fileName);

    end removeFile;

--------------

|image21| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.copyFile
-------------------------------------------------------------------------------------------------------------------------------------------------

**Copy existing file (C functions 'fopen', 'getc', 'putc', 'fclose')**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+------------+-----------+-----------------------------+
| Type     | Name       | Default   | Description                 |
+==========+============+===========+=============================+
| String   | fromName   |           | Name of file to be copied   |
+----------+------------+-----------+-----------------------------+
| String   | toName     |           | Name of copy of file        |
+----------+------------+-----------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function copyFile 
      "Copy existing file (C functions 'fopen', 'getc', 'putc', 'fclose')"
      extends Modelica.Icons.Function;
      input String fromName "Name of file to be copied";
      input String toName "Name of copy of file";
    external "C" ModelicaInternal_copyFile(fromName, toName);

    end copyFile;

--------------

|image22| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.readDirectory
------------------------------------------------------------------------------------------------------------------------------------------------------

**Read names of a directory (POSIX functions opendir, readdir,
closedir)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-------------+-----------+---------------------------------------------------------------------+
| Type      | Name        | Default   | Description                                                         |
+===========+=============+===========+=====================================================================+
| String    | directory   |           | Name of the directory from which information is desired             |
+-----------+-------------+-----------+---------------------------------------------------------------------+
| Integer   | nNames      |           | Number of names that are returned (inquire with getNumberOfFiles)   |
+-----------+-------------+-----------+---------------------------------------------------------------------+

Outputs
~~~~~~~

+----------+-----------------+------------------------------------------------------------------------+
| Type     | Name            | Description                                                            |
+==========+=================+========================================================================+
| String   | names[nNames]   | All file and directory names in any order from the desired directory   |
+----------+-----------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function readDirectory 
      "Read names of a directory (POSIX functions opendir, readdir, closedir)"
      extends Modelica.Icons.Function;
      input String directory 
        "Name of the directory from which information is desired";
      input Integer nNames 
        "Number of names that are returned (inquire with getNumberOfFiles)";
      output String names[nNames] 
        "All file and directory names in any order from the desired directory";
      external "C" ModelicaInternal_readDirectory(directory,nNames,names);

    end readDirectory;

--------------

|image23| `Modelica.Utilities.Internal.FileSystem <Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem>`_.getNumberOfFiles
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Get number of files and directories in a directory (POSIX functions
opendir, readdir, closedir)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+-------------+-----------+------------------+
| Type     | Name        | Default   | Description      |
+==========+=============+===========+==================+
| String   | directory   |           | Directory name   |
+----------+-------------+-----------+------------------+

Outputs
~~~~~~~

+-----------+----------+----------------------------------------------------------+
| Type      | Name     | Description                                              |
+===========+==========+==========================================================+
| Integer   | result   | Number of files and directories present in 'directory'   |
+-----------+----------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function getNumberOfFiles 
      "Get number of files and directories in a directory (POSIX functions opendir, readdir, closedir)"
      extends Modelica.Icons.Function;
      input String directory "Directory name";
      output Integer result 
        "Number of files and directories present in 'directory'";
      external "C" result = ModelicaInternal_getNumberOfFiles(directory);

    end getNumberOfFiles;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Utilities.Internal.FileSystem.mkdir| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.rmdir| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.stat| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.rename| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.removeFile| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.copyFile| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.readDirectory| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |Modelica.Utilities.Internal.FileSystem.getNumberOfFiles| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image8| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image9| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image10| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image11| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image12| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image13| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image14| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image15| image:: Modelica.Utilities.Internal.FileSystem.mkdirS.png
.. |image16| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image17| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image18| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image19| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image20| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image21| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image22| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
.. |image23| image:: Modelica.Utilities.Internal.FileSystem.mkdirI.png
