% Modelica.Utilities.Internal.FileSystem
% 
% 

[Modelica.Utilities.Internal](Modelica_Utilities_Internal.html#Modelica.Utilities.Internal).FileSystem
======================================================================================================

**Internal package with external functions as interface to the file
system**

Information
-----------

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
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image8](Modelica.Utilities.Internal.FileSyst Make directory (POSIX:
  em.mkdirS.png)                                 'mkdir')
  [mkdir](Modelica_Utilities_Internal_FileSystem 
  .html#Modelica.Utilities.Internal.FileSystem.m 
  kdir)                                          

  ![image9](Modelica.Utilities.Internal.FileSyst Remove empty directory
  em.mkdirS.png)                                 (POSIX function 'rmdir')
  [rmdir](Modelica_Utilities_Internal_FileSystem 
  .html#Modelica.Utilities.Internal.FileSystem.r 
  mdir)                                          

  ![image10](Modelica.Utilities.Internal.FileSys Inquire file information
  tem.mkdirS.png)                                (POSIX function 'stat')
  [stat](Modelica_Utilities_Internal_FileSystem. 
  html#Modelica.Utilities.Internal.FileSystem.st 
  at)                                            

  ![image11](Modelica.Utilities.Internal.FileSys Rename existing file or
  tem.mkdirS.png)                                directory (C function
  [rename](Modelica_Utilities_Internal_FileSyste 'rename')
  m.html#Modelica.Utilities.Internal.FileSystem. 
  rename)                                        

  ![image12](Modelica.Utilities.Internal.FileSys Remove existing file (C
  tem.mkdirS.png)                                function 'remove')
  [removeFile](Modelica_Utilities_Internal_FileS 
  ystem.html#Modelica.Utilities.Internal.FileSys 
  tem.removeFile)                                

  ![image13](Modelica.Utilities.Internal.FileSys Copy existing file (C
  tem.mkdirS.png)                                functions 'fopen',
  [copyFile](Modelica_Utilities_Internal_FileSys 'getc', 'putc', 'fclose')
  tem.html#Modelica.Utilities.Internal.FileSyste 
  m.copyFile)                                    

  ![image14](Modelica.Utilities.Internal.FileSys Read names of a directory
  tem.mkdirS.png)                                (POSIX functions opendir,
  [readDirectory](Modelica_Utilities_Internal_Fi readdir, closedir)
  leSystem.html#Modelica.Utilities.Internal.File 
  System.readDirectory)                          

  ![image15](Modelica.Utilities.Internal.FileSys Get number of files and
  tem.mkdirS.png)                                directories in a
  [getNumberOfFiles](Modelica_Utilities_Internal directory (POSIX
  _FileSystem.html#Modelica.Utilities.Internal.F functions opendir,
  ileSystem.getNumberOfFiles)                    readdir, closedir)
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).mkdir
================================================================================================================================================================================================

**Make directory (POSIX: 'mkdir')**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name               Default      Description
  ----------- ------------------ ------------ -------------------------
  String      directoryName                   Make a new directory

Modelica definition
-------------------

    function mkdir "Make directory (POSIX: 'mkdir')"
      extends Modelica.Icons.Function;
      input String directoryName "Make a new directory";
    external "C" ModelicaInternal_mkdir(directoryName);

    end mkdir;

* * * * *

![image17](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).rmdir
================================================================================================================================================================================================

**Remove empty directory (POSIX function 'rmdir')**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name              Default     Description
  ---------- ----------------- ----------- --------------------------------
  String     directoryName                 Empty directory to be removed

Modelica definition
-------------------

    function rmdir 
      "Remove empty directory (POSIX function 'rmdir')"
      extends Modelica.Icons.Function;
      input String directoryName "Empty directory to be removed";
    external "C" ModelicaInternal_rmdir(directoryName);

    end rmdir;

* * * * *

![image18](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).stat
===============================================================================================================================================================================================

**Inquire file information (POSIX function 'stat')**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name      Default      Description
  ----------- --------- ------------ ---------------------------------------
  String      name                   Name of file, directory, pipe etc.

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name     Descriptio
                                                                n
  ---------------------------------------------------- -------- ----------
  [FileType](Modelica_Utilities_Types.html#Modelica.Ut fileType Type of
  ilities.Types.FileType)                                       file
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function stat 
      "Inquire file information (POSIX function 'stat')"
      extends Modelica.Icons.Function;
      input String name "Name of file, directory, pipe etc.";
      output Types.FileType fileType "Type of file";
    external "C" fileType = ModelicaInternal_stat(name);

    end stat;

* * * * *

![image19](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).rename
=================================================================================================================================================================================================

**Rename existing file or directory (C function 'rename')**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name         Default      Description
  ----------- ------------ ------------ -----------------
  String      oldName                   Current name
  String      newName                   New name

Modelica definition
-------------------

    function rename 
      "Rename existing file or directory (C function 'rename')"
      extends Modelica.Icons.Function;
      input String oldName "Current name";
      input String newName "New name";
    external "C" ModelicaInternal_rename(oldName, newName);

    end rename;

* * * * *

![image20](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).removeFile
=====================================================================================================================================================================================================

**Remove existing file (C function 'remove')**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name          Default      Description
  ----------- ------------- ------------ -----------------------
  String      fileName                   File to be removed

Modelica definition
-------------------

    function removeFile 
      "Remove existing file (C function 'remove')"
      extends Modelica.Icons.Function;
      input String fileName "File to be removed";
    external "C" ModelicaInternal_removeFile(fileName);

    end removeFile;

* * * * *

![image21](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).copyFile
===================================================================================================================================================================================================

**Copy existing file (C functions 'fopen', 'getc', 'putc', 'fclose')**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name          Default      Description
  ----------- ------------- ------------ ------------------------------
  String      fromName                   Name of file to be copied
  String      toName                     Name of copy of file

Modelica definition
-------------------

    function copyFile 
      "Copy existing file (C functions 'fopen', 'getc', 'putc', 'fclose')"
      extends Modelica.Icons.Function;
      input String fromName "Name of file to be copied";
      input String toName "Name of copy of file";
    external "C" ModelicaInternal_copyFile(fromName, toName);

    end copyFile;

* * * * *

![image22](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).readDirectory
========================================================================================================================================================================================================

**Read names of a directory (POSIX functions opendir, readdir,
closedir)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type     Name      Default  Description
  -------- --------- -------- ----------------------------------------------
  String   directory          Name of the directory from which information
                              is desired

  Integer  nNames             Number of names that are returned (inquire
                              with getNumberOfFiles)
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type    Name         Description
  ------- ------------ ---------------------------------------------------
  String  names[nNames All file and directory names in any order from the
          ]            desired directory
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image23](Modelica.Utilities.Internal.FileSystem.mkdirI.png) [Modelica.Utilities.Internal.FileSystem](Modelica_Utilities_Internal_FileSystem.html#Modelica.Utilities.Internal.FileSystem).getNumberOfFiles
===========================================================================================================================================================================================================

**Get number of files and directories in a directory (POSIX functions
opendir, readdir, closedir)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name           Default      Description
  ----------- -------------- ------------ -------------------
  String      directory                   Directory name

Outputs
-------

  ------------------------------------------------------------------------
  Type       Name      Description
  ---------- --------- ---------------------------------------------------
  Integer    result    Number of files and directories present in
                       'directory'
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function getNumberOfFiles 
      "Get number of files and directories in a directory (POSIX functions opendir, readdir, closedir)"
      extends Modelica.Icons.Function;
      input String directory "Directory name";
      output Integer result 
        "Number of files and directories present in 'directory'";
      external "C" result = ModelicaInternal_getNumberOfFiles(directory);

    end getNumberOfFiles;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
