% Modelica.Utilities.Files
% 
% 

[Modelica.Utilities](Modelica_Utilities.html#Modelica.Utilities).Files
======================================================================

**Functions to work with files and directories**

Information
-----------

::

This package contains functions to work with files and directories. As a
general convention of this package, '/' is used as directory separator
both for input and output arguments of all functions. For example:

    exist("Modelica/Mechanics/Rotational.mo");

The functions provide the mapping to the directory separator of the
underlying operating system. Note, that on Windows system the usage of
'\\' as directory separator would be inconvenient, because this
character is also the escape character in Modelica and C Strings.

In the table below an example call to every function is given:

  ------------------------------------------------------------------------
  ***Function/type***                           ***Description***
  --------------------------------------------- --------------------------
  [list](Modelica_Utilities_Files.html#Modelica List content of file or of
  .Utilities.Files.list)(name)                  directory.

  [copy](Modelica_Utilities_Files.html#Modelica Generate a copy of a file
  .Utilities.Files.copy)(oldName,               or of a directory.
  newName)                                      
    ~ [copy](Modelica_Utilities_Files.html#Mode 
  lica.Utilities.Files.copy)(oldName,           
      newName, replace=false)                   
                                                
                                                

  [move](Modelica_Utilities_Files.html#Modelica Move a file or a directory
  .Utilities.Files.move)(oldName,               to another place.
  newName)                                      
    ~ [move](Modelica_Utilities_Files.html#Mode 
  lica.Utilities.Files.move)(oldName,           
      newName, replace=false)                   
                                                
                                                

  [remove](Modelica_Utilities_Files.html#Modeli Remove file or directory
  ca.Utilities.Files.remove)(name)              (ignore call, if it does
                                                not exist).

  [removeFile](Modelica_Utilities_Files.html#Mo Remove file (ignore call,
  delica.Utilities.Files.removeFile)(name)      if it does not exist)

  [createDirectory](Modelica_Utilities_Files.ht Create directory (if
  ml#Modelica.Utilities.Files.createDirectory)( directory already exists,
  name)                                         ignore call).

  result =                                      Inquire whether file or
  [exist](Modelica_Utilities_Files.html#Modelic directory exists.
  a.Utilities.Files.exist)(name)                

  [assertNew](Modelica_Utilities_Files.html#Mod Trigger an assert, if a
  elica.Utilities.Files.assertNew)(name,message file or directory exists.
  )                                             

  fullName =                                    Get full path name of file
  [fullPathName](Modelica_Utilities_Files.html# or directory name.
  Modelica.Utilities.Files.fullPathName)(name)  

  (directory, name, extension) =                Split path name in
  [splitPathName](Modelica_Utilities_Files.html directory, file name
  #Modelica.Utilities.Files.splitPathName)(name kernel, file name
  )                                             extension.

  fileName =                                    Return arbitrary name of a
  [temporaryFileName](Modelica_Utilities_Files. file that does not exist
  html#Modelica.Utilities.Files.temporaryFileNa   ~ and is in a directory
  me)()                                             where access rights
                                                    allow to write to this
                                                    file (useful for
                                                    temporary output of
                                                    files).
                                                
                                                
  ------------------------------------------------------------------------

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                              Description
  --------------------------------- --------------------------------------
  ![image11](Modelica.Utilities.Fil List content of file or directory
  es.listS.png)                     
  [list](Modelica_Utilities_Files.h 
  tml#Modelica.Utilities.Files.list 
  )                                 

  ![image12](Modelica.Utilities.Fil Generate a copy of a file or of a
  es.listS.png)                     directory
  [copy](Modelica_Utilities_Files.h 
  tml#Modelica.Utilities.Files.copy 
  )                                 

  ![image13](Modelica.Utilities.Fil Move a file or a directory to another
  es.listS.png)                     place
  [move](Modelica_Utilities_Files.h 
  tml#Modelica.Utilities.Files.move 
  )                                 

  ![image14](Modelica.Utilities.Fil Remove file or directory (ignore call,
  es.listS.png)                     if it does not exist)
  [remove](Modelica_Utilities_Files 
  .html#Modelica.Utilities.Files.re 
  move)                             

  ![image15](Modelica.Utilities.Fil Remove file (ignore call, if it does
  es.listS.png)                     not exist)
  [removeFile](Modelica_Utilities_F 
  iles.html#Modelica.Utilities.File 
  s.removeFile)                     

  ![image16](Modelica.Utilities.Fil Create directory (if directory already
  es.listS.png)                     exists, ignore call)
  [createDirectory](Modelica_Utilit 
  ies_Files.html#Modelica.Utilities 
  .Files.createDirectory)           

  ![image17](Modelica.Utilities.Fil Inquire whether file or directory
  es.listS.png)                     exists
  [exist](Modelica_Utilities_Files. 
  html#Modelica.Utilities.Files.exi 
  st)                               

  ![image18](Modelica.Utilities.Fil Trigger an assert, if a file or
  es.listS.png)                     directory exists
  [assertNew](Modelica_Utilities_Fi 
  les.html#Modelica.Utilities.Files 
  .assertNew)                       

  ![image19](Modelica.Utilities.Fil Get full path name of file or
  es.listS.png)                     directory name
  [fullPathName](Modelica_Utilities 
  _Files.html#Modelica.Utilities.Fi 
  les.fullPathName)                 

  ![image20](Modelica.Utilities.Fil Split path name in directory, file
  es.listS.png)                     name kernel, file name extension
  [splitPathName](Modelica_Utilitie 
  s_Files.html#Modelica.Utilities.F 
  iles.splitPathName)               

  ![image21](Modelica.Utilities.Fil Return arbitrary name of a file that
  es.listS.png)                     does not exist and is in a directory
  [temporaryFileName](Modelica_Util where access rights allow to write to
  ities_Files.html#Modelica.Utiliti this file (useful for temporary output
  es.Files.temporaryFileName)       of files)
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).list
======================================================================================================================================

**List content of file or directory**

Information
-----------

::

### Syntax

>     Files.list(name);

### Description

If "name" is a regular file, the content of the file is printed.

If "name" is a directory, the directory and file names in the "name"
directory are printed in sorted order.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type   Name  Default Description
  ------ ----- ------- -----------------------------------------------------
  String name          If name is a directory, list directory content. If it
                       is a file, list the file content
  --------------------------------------------------------------------------

Modelica definition
-------------------

    function list "List content of file or directory"
      extends Modelica.Icons.Function;
      input String name 
        "If name is a directory, list directory content. If it is a file, list the file content";
    //..............................................................
    protected 
      Types.FileType fileType;

      function listFile "List content of file"
         input String name;
      protected 
         String file[Streams.countLines(name)] =  Streams.readFile(name);
      algorithm 
         for i in 1:min(size(file,1), 100) loop
            Streams.print(file[i]);
         end for;
      end listFile;

      function sortDirectory 
        "Sort directory in directories and files with alphabetic order"
         input String directory 
          "Directory that was read (including a trailing '/')";
         input String names[:] 
          "File and directory names of a directory in any order";
         output String orderedNames[size(names,1)] 
          "Names of directories followed by names of files";
         output Integer nDirectories 
          "The first nDirectories entries in orderedNames are directories";
      protected 
         Integer nEntries = size(names,1);
         Integer nFiles;
         Integer lenDirectory = Strings.length(directory);
         String directory2;
      algorithm 
         // Construct directory with a trailing "/"
         directory2 := if Strings.substring(directory,lenDirectory,lenDirectory) == "/" then 
                          directory else directory + "/";

         // Distinguish directories and files
         nDirectories := 0;
         nFiles := 0;
         for i in 1:nEntries loop
            if Modelica.Utilities.Internal.FileSystem.stat(
                             directory2 + names[i]) == Types.FileType.Directory then
               nDirectories := nDirectories + 1;
               orderedNames[nDirectories] := names[i];
            else
               nFiles := nFiles + 1;
               orderedNames[nEntries - nFiles + 1] := names[i];
            end if;
         end for;

         // Sort files and directories alphabetically
         if nDirectories > 0 then
            orderedNames[1:nDirectories] := Strings.sort(orderedNames[1:nDirectories], caseSensitive=false);
         end if;
         if nFiles > 0 then
            orderedNames[nDirectories+1:nEntries] :=
                    Strings.sort(orderedNames[nDirectories+1:nEntries], caseSensitive=false);
         end if;
      end sortDirectory;

      function listDirectory "List content of directory"
         input String directoryName;
         input Integer nEntries;
      protected 
         String files[nEntries];
         Integer nDirectories;
      algorithm 
         if nEntries > 0 then
            Streams.print("\nDirectory \"" + directoryName + "\":");
            files :=  Modelica.Utilities.Internal.FileSystem.readDirectory(
                                             directoryName, nEntries);
            (files, nDirectories) := sortDirectory(directoryName, files);

            // List directories
            if nDirectories > 0 then
               Streams.print("  Subdirectories:");
               for i in 1:nDirectories loop
                  Streams.print("    " + files[i]);
               end for;
               Streams.print(" ");
            end if;

            // List files
            if nDirectories < nEntries then
               Streams.print("  Files:");
               for i in nDirectories+1:nEntries loop
                  Streams.print("    " + files[i]);
               end for;
            end if;
         else
            Streams.print("... Directory\"" + directoryName + "\" is empty");
         end if;
      end listDirectory;
    algorithm 
      fileType := Modelica.Utilities.Internal.FileSystem.stat(
                                name);
      if fileType == Types.FileType.RegularFile then
         listFile(name);
      elseif fileType == Types.FileType.Directory then
         listDirectory(name, Modelica.Utilities.Internal.FileSystem.getNumberOfFiles(
                                                       name));
      elseif fileType == Types.FileType.SpecialFile then
         Streams.error("Cannot list file \"" + name + "\"\n" +
                       "since it is not a regular file (pipe, device, ...)");
      else
         Streams.error("Cannot list file or directory \"" + name + "\"\n" +
                       "since it does not exist");
      end if;

    end list;

* * * * *

![image23](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).copy
======================================================================================================================================

**Generate a copy of a file or of a directory**

Information
-----------

::

### Syntax

>     Files.copy(oldName, newName);
>     Files.copy(oldName, newName, replace = true);

### Description

Function **copy**(..) copies a file or a directory to a new location.
Via the optional argument **replace** it can be defined whether an
already existing file may be replaced by the required copy.

If oldName/newName are directories, then the newName directory may
exist. In such a case the content of oldName is copied into directory
newName. If replace = **false** it is required that the existing files
in newName are different from the existing files in oldName.

### Example

>     copy("C:/test1/directory1", "C:/test2/directory2");
>        -> the content of directory1 is copied into directory2
>           if "C:/test2/directory2" does not exist, it is newly
>           created. If "replace=true", files in directory2
>           may be overwritten by their copy
>     copy("test1.txt", "test2.txt")
>        -> make a copy of file "test1.txt" with the name "test2.txt"
>           in the current directory

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type     Name     Default  Description
  -------- -------- -------- -----------------------------------------------
  String   oldName           Name of file or directory to be copied

  String   newName           Name of copy of the file or of the directory

  Boolean  replace  false    = true, if an existing file may be replaced by
                             the required copy
  --------------------------------------------------------------------------

Modelica definition
-------------------

    function copy "Generate a copy of a file or of a directory"
      extends Modelica.Icons.Function;
      input String oldName "Name of file or directory to be copied";
      input String newName "Name of copy of the file or of the directory";
      input Boolean replace=false 
        "= true, if an existing file may be replaced by the required copy";
    //..............................................................
    protected 
      function copyDirectory "Copy a directory"
         input String oldName 
          "Old directory name without trailing '/'; existance is guaranteed";
         input String newName 
          "New diretory name without trailing '/'; directory was already created";
         input Boolean replace "= true, if an existing newName may be replaced";
      protected 
         Integer nNames = Modelica.Utilities.Internal.FileSystem.getNumberOfFiles(
                                                    oldName);
         String oldNames[nNames];
         String oldName_i;
         String newName_i;
      algorithm 
         oldNames :=Modelica.Utilities.Internal.FileSystem.readDirectory(
                                           oldName, nNames);
         for i in 1:nNames loop
            oldName_i := oldName + "/" + oldNames[i];
            newName_i := newName + "/" + oldNames[i];
            Files.copy(oldName_i, newName_i, replace);
         end for;
      end copyDirectory;
    //..............................................................

      Integer lenOldName = Strings.length(oldName);
      Integer lenNewName = Strings.length(newName);
      String oldName2 = if Strings.substring(oldName,lenOldName,lenOldName) == "/" then 
                           Strings.substring(oldName,1,lenOldName-1) else oldName;
      String newName2 = if Strings.substring(newName,lenNewName,lenNewName) == "/" then 
                           Strings.substring(newName,1,lenNewName-1) else newName;
      Types.FileType oldFileType = Modelica.Utilities.Internal.FileSystem.stat(
                                                 oldName2);
      Types.FileType newFileType;
    algorithm 
      if oldFileType == Types.FileType.NoFile then
         Streams.error("It is not possible to copy the file or directory\n" +
                       "\"" + oldName2 + "\" because it does not exist.");
      elseif oldFileType == Types.FileType.Directory then
         newFileType :=Modelica.Utilities.Internal.FileSystem.stat(
                                     newName2);
         if newFileType == Types.FileType.NoFile then
            createDirectory(newName2);
         elseif newFileType == Types.FileType.RegularFile or 
                newFileType == Types.FileType.SpecialFile then
            if replace then
               Files.removeFile(newName2);
               Files.createDirectory(newName2);
            else
               Streams.error("Directory \"" + oldName2 + "\" should be copied to\n" +
                             "\"" + newName2 + "\" which is an existing file.\n" +
                             "Since argument replace=false, this is not allowed");
            end if;
         end if;
         copyDirectory(oldName2, newName2, replace);
      else // regular or special file
         if replace then
            Files.removeFile(newName2);
         else
            Files.assertNew(newName2, "File \"" + oldName2 + "\" should be copied or moved to\n" +
                                      "\"" + newName2 + "\" which is an existing file or directory.\n" +
                                      "Since argument replace=false, this is not allowed");
         end if;
         Modelica.Utilities.Internal.FileSystem.copyFile(
                           oldName2, newName2);
      end if;

    end copy;

* * * * *

![image24](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).move
======================================================================================================================================

**Move a file or a directory to another place**

Information
-----------

::

### Syntax

>     Files.move(oldName, newName);
>     Files.move(oldName, newName, replace = true);

### Description

Function **move**(..) moves a file or a directory to a new location. Via
the optional argument **replace** it can be defined whether an already
existing file may be replaced.

If oldName/newName are directories, then the newName directory may
exist. In such a case the content of oldName is moved into directory
newName. If replace = **false** it is required that the existing files
in newName are different from the existing files in oldName.

### Example

>     move("C:/test1/directory1", "C:/test2/directory2");
>        -> the content of directory1 is moved into directory2.
>           Afterwards directory1 is deleted.
>           if "C:/test2/directory2" does not exist, it is newly
>           created. If "replace=true", files in directory2
>           may be overwritten
>      move("test1.txt", "test2.txt")
>        -> rename file "test1.txt" into "test2.txt"
>           within the current directory

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type     Name     Default  Description
  -------- -------- -------- ---------------------------------------------
  String   oldName           Name of file or directory to be moved

  String   newName           New name of the moved file or directory

  Boolean  replace  false    = true, if an existing file or directory may
                             be replaced
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function move "Move a file or a directory to another place"
      extends Modelica.Icons.Function;
      input String oldName "Name of file or directory to be moved";
      input String newName "New name of the moved file or directory";
      input Boolean replace=false 
        "= true, if an existing file or directory may be replaced";
    algorithm 
      // if both oldName and newName are in the current directory
      // use Internal.renameFile
      if Strings.find(oldName,"/") == 0 and Strings.find(newName,"/") == 0 then
         Modelica.Utilities.Internal.FileSystem.rename(
                         oldName, newName);
      else
         Files.copy(oldName, newName, replace);
         Files.remove(oldName);
      end if;

    end move;

* * * * *

![image25](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).remove
========================================================================================================================================

**Remove file or directory (ignore call, if it does not exist)**

Information
-----------

::

### Syntax

>     Files.remove(name);

### Description

Removes the file or directory "name". If "name" does not exist, the
function call is ignored. If "name" is a directory, first the content of
the directory is removed and afterwards the directory itself.

This function is silent, i.e., it does not print a message.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name     Default     Description
  ---------- -------- ----------- -----------------------------------------
  String     name                 Name of file or directory to be removed

Modelica definition
-------------------

    function remove 
      "Remove file or directory (ignore call, if it does not exist)"
      extends Modelica.Icons.Function;
      input String name "Name of file or directory to be removed";
    //..............................................................
    protected 
      function removeDirectory 
        "Remove a directory, even if it is not empty"
         input String name;
      protected 
         Integer nNames = Modelica.Utilities.Internal.FileSystem.getNumberOfFiles(
                                                    name);
         Integer lenName = Strings.length(name);
         String fileNames[nNames];
         // remove an optional trailing "/"
         String name2 = if Strings.substring(name,lenName,lenName) == "/" then 
                           Strings.substring(name,lenName-1,lenName-1) else name;
      algorithm 
         fileNames :=Modelica.Utilities.Internal.FileSystem.readDirectory(
                                            name2, nNames);
         for i in 1:nNames loop
            Files.remove(name2 + "/" + fileNames[i]);
         end for;
         Modelica.Utilities.Internal.FileSystem.rmdir(
                        name2);
      end removeDirectory;
    //..............................................................
      String fullName = Files.fullPathName(name);
      Types.FileType fileType=Modelica.Utilities.Internal.FileSystem.stat(
                                            fullName);
    algorithm 
      if fileType == Types.FileType.RegularFile or 
         fileType == Types.FileType.SpecialFile then
         Modelica.Utilities.Internal.FileSystem.removeFile(
                             fullName);
      elseif fileType == Types.FileType.Directory then
         removeDirectory(fullName);
      end if;

    end remove;

* * * * *

![image26](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).removeFile
============================================================================================================================================

**Remove file (ignore call, if it does not exist)**

Information
-----------

::

### Syntax

>     Files.removeFile(fileName);

### Description

Removes the file "fileName". If "fileName" does not exist, the function
call is ignored. If "fileName" exists but is no regular file (e.g.,
directory, pipe, device, etc.) an error is triggered.

This function is silent, i.e., it does not print a message.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name         Default     Description
  ---------- ------------ ----------- -------------------------------------
  String     fileName                 Name of file that should be removed

Modelica definition
-------------------

    function removeFile "Remove file (ignore call, if it does not exist)"
      extends Modelica.Icons.Function;
      input String fileName "Name of file that should be removed";
    protected 
      Types.FileType fileType = Modelica.Utilities.Internal.FileSystem.stat(
                                              fileName);
    algorithm 
      if fileType == Types.FileType.RegularFile then
         Modelica.Utilities.Internal.FileSystem.removeFile(
                             fileName);
      elseif fileType == Types.FileType.Directory then
         Streams.error("File \"" + fileName + "\" should be removed.\n" +
                       "This is not possible, because it is a directory");
      elseif fileType == Types.FileType.SpecialFile then
         Streams.error("File \"" + fileName + "\" should be removed.\n" +
                       "This is not possible, because it is a special file (pipe, device, etc.)");
      end if;

    end removeFile;

* * * * *

![image27](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).createDirectory
=================================================================================================================================================

**Create directory (if directory already exists, ignore call)**

Information
-----------

::

### Syntax

>     Files.createDirectory(directoryName);

### Description

Creates directory "directorName". If this directory already exists, the
function call is ignored. If several directories in "directoryName" do
not exist, all of them are created. For example, assume that directory
"E:/test1" exists and that directory "E:/test1/test2/test3" shall be
created. In this case the directories "test2" in "test1" and "test3" in
"test2" are created.

This function is silent, i.e., it does not print a message. In case of
error (e.g., "directoryName" is an existing regular file), an assert is
triggered.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type    Name         Default  Description
  ------- ------------ -------- -------------------------------------------
  String  directoryNam          Name of directory to be created (if
          e                     present, ignore call)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function createDirectory 
      "Create directory (if directory already exists, ignore call)"
      extends Modelica.Icons.Function;
      input String directoryName 
        "Name of directory to be created (if present, ignore call)";
    //..............................................................
    protected 
      function existDirectory 
        "Inquire whether directory exists; if present and not a directory, trigger an error"
         input String directoryName;
         output Boolean exists "true if directory exists";
      protected 
         Types.FileType fileType = Modelica.Utilities.Internal.FileSystem.stat(
                                                 directoryName);
      algorithm 
         if fileType == Types.FileType.RegularFile or 
            fileType == Types.FileType.SpecialFile then
            Streams.error("Directory \"" + directoryName + "\" cannot be created\n" +
                          "because this is an existing file.");
         elseif fileType == Types.FileType.Directory then
            exists :=true;
         else
            exists :=false;
         end if;
      end existDirectory;

      function assertCorrectIndex 
        "Print error, if index to last essential character in directory is wrong"
         input Integer index "Index must be > 0";
         input String directoryName "Directory name for error message";
      algorithm 
         if index < 1 then
            Streams.error("It is not possible to create the directory\n" +
                          "\"" + directoryName + "\"\n" +
                          "because this directory name is not valid");
         end if;
      end assertCorrectIndex;

    //..............................................................
      String fullName;
      Integer index;
      Integer oldIndex;
      Integer lastIndex;
      Boolean found;
      Boolean finished;
      Integer nDirectories = 0 "Number of directories that need to be generated";
    algorithm 
      // Ignore call, if directory exists
      if not existDirectory(directoryName) then
         fullName := Files.fullPathName(directoryName);

         // Remove a trailing "/"
            index :=Strings.length(fullName);
            if Strings.substring(fullName,index,index) == "/" then
               index :=index - 1;
               assertCorrectIndex(index,fullName);
            end if;
            lastIndex := index;
            fullName := Strings.substring(fullName,1,index);

         // Search upper directories until a directory is found that exists
         // ??? check the following while loop later, if also cases such as
         //  "c:/", "c:", "//name" are handled correctly ???
            found := false;
            while not found loop
               oldIndex := index;
               index := Strings.findLast(fullName,"/",startIndex=index);
               if index == 0 then
                  index := oldIndex;
                  found := true;
               else
                  index := index - 1;
                  assertCorrectIndex(index, fullName);
                  found := existDirectory(Strings.substring(fullName,1,index));
               end if;
            end while;
            index := oldIndex;

         // Create directories
            finished := false;
            while not finished loop
               Modelica.Utilities.Internal.FileSystem.mkdir(
                              Strings.substring(fullName,1,index));
               if index >= lastIndex then
                  finished := true;
               elseif index < lastIndex then
                  index := Strings.find(fullName, "/", startIndex=index+2);
                  if index == 0 then
                     index :=lastIndex;
                  end if;
               end if;
            end while;
      end if;

    end createDirectory;

* * * * *

![image28](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).exist
=======================================================================================================================================

**Inquire whether file or directory exists**

Information
-----------

::

### Syntax

>     result = Files.exist(name);

### Description

Returns true, if "name" is an existing file or directory. If this is not
the case, the function returns false.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name      Default      Description
  ----------- --------- ------------ ------------------------------
  String      name                   Name of file or directory

Outputs
-------

  Type         Name        Description
  ------------ ----------- ----------------------------------------
  Boolean      result      = true, if file or directory exists

Modelica definition
-------------------

    function exist "Inquire whether file or directory exists"
      extends Modelica.Icons.Function;
      input String name "Name of file or directory";
      output Boolean result "= true, if file or directory exists";
    algorithm 
      result := Modelica.Utilities.Internal.FileSystem.stat(
                              name) > Types.FileType.NoFile;

    end exist;

* * * * *

![image29](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).assertNew
===========================================================================================================================================

**Trigger an assert, if a file or directory exists**

Information
-----------

::

### Syntax

>     Files.assertNew(name);
>     Files.assertNew(name, message="This is not allowed");

### Description

Triggers an assert, if "name" is an existing file or directory. The
error message has the following structure:

    File "<name>" already exists.
    <message>

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type   Name   Default         Description
  ------ ------ --------------- -------------------------------------------
  String name                   Name of file or directory

  String messag "This is not    Message that should be printed after the
         e      allowed."       default message in a new line
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function assertNew "Trigger an assert, if a file or directory exists"
      extends Modelica.Icons.Function;
      input String name "Name of file or directory";
      input String message="This is not allowed." 
        "Message that should be printed after the default message in a new line";
    protected 
      Types.FileType fileType = Modelica.Utilities.Internal.FileSystem.stat(
                                              name);
    algorithm 
      if fileType == Types.FileType.RegularFile then
         Streams.error("File \"" + name + "\" already exists.\n" + message);
      elseif fileType == Types.FileType.Directory then
         Streams.error("Directory \"" + name + "\" already exists.\n" + message);
      elseif fileType == Types.FileType.SpecialFile then
         Streams.error("A special file (pipe, device, etc.) \"" + name + "\" already exists.\n" + message);
      end if;

    end assertNew;

* * * * *

![image30](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).fullPathName
==============================================================================================================================================

**Get full path name of file or directory name**

Information
-----------

::

### Syntax

>     fullName = Files.fullPathName(name);

### Description

Returns the full path name of a file or directory "name".

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name     Default    Description
  --------- -------- ---------- -------------------------------------------
  String    name                Absolute or relative file or directory name

Outputs
-------

  Type        Name          Description
  ----------- ------------- ------------------------
  String      fullName      Full path of 'name'

Modelica definition
-------------------

    function fullPathName "Get full path name of file or directory name"
      extends Modelica.Icons.Function;
      input String name "Absolute or relative file or directory name";
      output String fullName "Full path of 'name'";
    external "C" fullName = ModelicaInternal_fullPathName(name);

    end fullPathName;

* * * * *

![image31](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).splitPathName
===============================================================================================================================================

**Split path name in directory, file name kernel, file name extension**

Information
-----------

::

### Syntax

>     (directory, name, extension) = Files.splitPathName(pathName);

### Description

Function **splitPathName**(..) splits a path name into its parts.

### Example

    (directory, name, extension) = Files.splitPathName("C:/user/test/input.txt")

    -> directory = "C:/user/test/"
       name      = "input"
       extension = ".txt"

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type      Name        Default    Description
  --------- ----------- ---------- -----------------------------------------
  String    pathName               Absolute or relative file or directory
                                   name
  --------------------------------------------------------------------------

Outputs
-------

  Type       Name          Description
  ---------- ------------- ------------------------------------------------
  String     directory     Name of the directory including a trailing '/'
  String     name          Name of the file without the extension
  String     extension     Extension of the file name. Starts with '.'

Modelica definition
-------------------

    function splitPathName 
      "Split path name in directory, file name kernel, file name extension"
      extends Modelica.Icons.Function;
      input String pathName "Absolute or relative file or directory name";
      output String directory "Name of the directory including a trailing '/'";
      output String name "Name of the file without the extension";
      output String extension "Extension of the file name. Starts with '.'";

    protected 
      Integer lenPath = Strings.length(pathName);
      Integer i = lenPath;
      Integer indexDot = 0;
      Integer indexSlash = 0;
      String c;
    algorithm 
      while i >= 1 loop
        c :=Strings.substring(pathName, i, i);
        if c == "." then
           indexDot := i;
           i := 0;
        elseif c == "/" then
           indexSlash := i;
           i := 0;
        else
           i := i - 1;
        end if;
      end while;

      if indexSlash == lenPath then
         directory := pathName;
         name      := "";
         extension := "";
      elseif indexDot > 0 then
         indexSlash :=Strings.findLast(pathName, "/", startIndex=indexDot - 1);
         if indexSlash == 0 then
            directory :="";
            name :=Strings.substring(pathName, 1, indexDot - 1);
         else
            directory :=Strings.substring(pathName, 1, indexSlash);
            name :=Strings.substring(pathName, indexSlash + 1, indexDot - 1);
         end if;
         extension :=Strings.substring(pathName, indexDot, lenPath);
       else
         extension :="";
         if indexSlash > 0 then
           directory :=Strings.substring(pathName, 1, indexSlash);
           name :=Strings.substring(pathName, indexSlash + 1, lenPath);
         else
           directory :="";
           name :=pathName;
         end if;
       end if;
    end splitPathName;

* * * * *

![image32](Modelica.Utilities.Files.listI.png) [Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files).temporaryFileName
===================================================================================================================================================

**Return arbitrary name of a file that does not exist and is in a
directory where access rights allow to write to this file (useful for
temporary output of files)**

Information
-----------

::

### Syntax

>     fileName = Files.temporaryFileName();

### Description

Return arbitrary name of a file that does not exist and is in a
directory where access rights allow to write to this file (useful for
temporary output of files).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Outputs
-------

  Type        Name          Description
  ----------- ------------- -------------------------------------
  String      fileName      Full path name of temporary file

Modelica definition
-------------------

    function temporaryFileName 
      "Return arbitrary name of a file that does not exist and is in a directory where access rights allow to write to this file (useful for temporary output of files)"
      extends Modelica.Icons.Function;
      output String fileName "Full path name of temporary file";
      external "C" fileName=ModelicaInternal_temporaryFileName(0);

    end temporaryFileName;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
