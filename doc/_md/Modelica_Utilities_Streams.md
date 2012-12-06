% Modelica.Utilities.Streams
% 
% 

[Modelica.Utilities](Modelica_Utilities.html#Modelica.Utilities).Streams
========================================================================

**Read from files and write to files**

Information
-----------

::

### Library content

Package **Streams** contains functions to input and output strings to a
message window or on files. Note that a string is interpreted and
displayed as html text (e.g., with print(..) or error(..)) if it is
enclosed with the Modelica html quotation, e.g.,

string = "<html\> first line <br\> second line </html\>".

It is a quality of implementation, whether (a) all tags of html are
supported or only a subset, (b) how html tags are interpreted if the
output device does not allow to display formatted text.

In the table below an example call to every function is given:

  ------------------------------------------------------------------------
  ***Function/type***                       ***Description***
  ----------------------------------------- ------------------------------
  [print](Modelica_Utilities_Streams.html#M Print string "string" or
  odelica.Utilities.Streams.print)(string)  vector of strings to message
    ~ [print](Modelica_Utilities_Streams.ht window or on file "fileName".
  ml#Modelica.Utilities.Streams.print)(stri 
  ng,fileName)                              
                                            
                                            

  stringVector =                            Read complete text file and
  [readFile](Modelica_Utilities_Streams.htm return it as a vector of
  l#Modelica.Utilities.Streams.readFile)(fi strings.
  leName)                                   

  (string, endOfFile) =                     Returns from the file the
  [readLine](Modelica_Utilities_Streams.htm content of line lineNumber.
  l#Modelica.Utilities.Streams.readLine)(fi 
  leName,                                   
  lineNumber)                               

  lines =                                   Returns the number of lines in
  [countLines](Modelica_Utilities_Streams.h a file.
  tml#Modelica.Utilities.Streams.countLines 
  )(fileName)                               

  [error](Modelica_Utilities_Streams.html#M Print error message "string"
  odelica.Utilities.Streams.error)(string)  to message window and cancel
                                            all actions

  [close](Modelica_Utilities_Streams.html#M Close file if it is still
  odelica.Utilities.Streams.close)(fileName open. Ignore call if file is
  )                                         already closed or does not
                                            exist.
  ------------------------------------------------------------------------

Use functions **scanXXX** from package
[Strings](Modelica_Utilities_Strings.html#Modelica.Utilities.Strings) to
parse a string.

If Real, Integer or Boolean values shall be printed or used in an error
message, they have to be first converted to strings with the builtin
operator
[String](../../ModelicaReference/help/ModelicaReference_Operators.html#ModelicaReference.Operators.string)(...).
Example:

    if x < 0 or x > 1 then
       Streams.error("x (= " + String(x) + ") has to be in the range 0 .. 1");
    end if;

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image6](Modelica.Utilities.Files.listS.png)    Print string to
  [print](Modelica_Utilities_Streams.html#Modelica terminal or file
  .Utilities.Streams.print)                        

  ![image7](Modelica.Utilities.Files.listS.png)    Read content of a file
  [readFile](Modelica_Utilities_Streams.html#Model and return it in a
  ica.Utilities.Streams.readFile)                  vector of strings

  ![image8](Modelica.Utilities.Files.listS.png)    Reads a line of text
  [readLine](Modelica_Utilities_Streams.html#Model from a file and returns
  ica.Utilities.Streams.readLine)                  it in a string

  ![image9](Modelica.Utilities.Files.listS.png)    Returns the number of
  [countLines](Modelica_Utilities_Streams.html#Mod lines in a file
  elica.Utilities.Streams.countLines)              

  ![image10](Modelica.Utilities.Files.listS.png)   Print error message and
  [error](Modelica_Utilities_Streams.html#Modelica cancel all actions
  .Utilities.Streams.error)                        

  ![image11](Modelica.Utilities.Files.listS.png)   Close file
  [close](Modelica_Utilities_Streams.html#Modelica 
  .Utilities.Streams.close)                        
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Utilities.Streams.printI.png) [Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams).print
================================================================================================================================================

**Print string to terminal or file**

Information
-----------

::

### Syntax

>     Streams.print(string);
>     Streams.print(string,fileName);

### Description

Function **print**(..) opens automatically the given file, if it is not
yet open. If the file does not exist, it is created. If the file does
exist, the given string is appended to the file. If this is not desired,
call "Files.remove(fileName)" before calling print ("remove(..)" is
silent, if the file does not exist). The Modelica environment may close
the file whenever appropriate. This can be enforced by calling
**Streams.close**(fileName). After every call of "print(..)" a "new
line" is printed automatically.

### Example

>     Streams.print("x = " + String(x));
>     Streams.print("y = " + String(y));
>     Streams.print("x = " + String(y), "mytestfile.txt");

### See also

[Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams),
[Streams.error](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams.error),
[String](../../ModelicaReference/help/ModelicaReference_Operators.html#ModelicaReference.Operators.string)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type     Name       Default   Description
  -------- ---------- --------- -------------------------------------------
  String   string     ""        String to be printed

  String   fileName   ""        File where to print (empty string is the
                                terminal)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function print "Print string to terminal or file"
      extends Modelica.Icons.Function;
      input String string="" "String to be printed";
      input String fileName="" "File where to print (empty string is the terminal)";
    external "C" ModelicaInternal_print(string, fileName);
    end print;

* * * * *

![image13](Modelica.Utilities.Streams.printI.png) [Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams).readFile
===================================================================================================================================================

**Read content of a file and return it in a vector of strings**

Information
-----------

::

### Syntax

>     stringVector = Streams.readFile(fileName)

### Description

Function **readFile**(..) opens the given file, reads the complete
content, closes the file and returns the content as a vector of strings.
Lines are separated by LF or CR-LF; the returned strings do not contain
the line separators.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name         Default     Description
  ---------- ------------ ----------- -------------------------------------
  String     fileName                 Name of the file that shall be read

Outputs
-------

  Type        Name                                    Description
  ----------- --------------------------------------- --------------------
  String      stringVector[countLines(fileName)]      Content of file

Modelica definition
-------------------

    function readFile 
      "Read content of a file and return it in a vector of strings"
      extends Modelica.Icons.Function;
      input String fileName "Name of the file that shall be read";
      output String stringVector[countLines(fileName)] "Content of file";

    algorithm 
      for i in  1:size(stringVector, 1) loop
        stringVector[i] := readLine(fileName, i);
      end for;
      Streams.close(fileName);
    end readFile;

* * * * *

![image14](Modelica.Utilities.Streams.printI.png) [Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams).readLine
===================================================================================================================================================

**Reads a line of text from a file and returns it in a string**

Information
-----------

::

### Syntax

>     (string, endOfFile) = Streams.readLine(fileName, lineNumber)

### Description

Function **readLine**(..) opens the given file, reads enough of the
content to get the requested line, and returns the line as a string.
Lines are separated by LF or CR-LF; the returned string does not contain
the line separator. The file might remain open after the call.

If lineNumber \> countLines(fileName), an empty string is returned and
endOfFile=true. Otherwise endOfFile=false.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name          Default    Description
  ---------- ------------- ---------- ------------------------------------
  String     fileName                 Name of the file that shall be read
  Integer    lineNumber               Number of line to read

Outputs
-------

  ------------------------------------------------------------------------
  Type      Name        Description
  --------- ----------- --------------------------------------------------
  String    string      Line of text

  Boolean   endOfFile   If true, end-of-file was reached when trying to
                        read line
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function readLine 
      "Reads a line of text from a file and returns it in a string"
      extends Modelica.Icons.Function;
      input String fileName "Name of the file that shall be read";
      input Integer lineNumber(min=1) "Number of line to read";
      output String string "Line of text";
      output Boolean endOfFile 
        "If true, end-of-file was reached when trying to read line";
     external "C" string = ModelicaInternal_readLine(fileName,lineNumber,endOfFile);
    end readLine;

* * * * *

![image15](Modelica.Utilities.Streams.printI.png) [Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams).countLines
=====================================================================================================================================================

**Returns the number of lines in a file**

Information
-----------

::

### Syntax

>     numberOfLines = Streams.countLines(fileName)

### Description

Function **countLines**(..) opens the given file, reads the complete
content, closes the file and returns the number of lines. Lines are
separated by LF or CR-LF.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name         Default     Description
  ---------- ------------ ----------- -------------------------------------
  String     fileName                 Name of the file that shall be read

Outputs
-------

  Type         Name               Description
  ------------ ------------------ ----------------------------
  Integer      numberOfLines      Number of lines in file

Modelica definition
-------------------

    function countLines "Returns the number of lines in a file"
      extends Modelica.Icons.Function;
      input String fileName "Name of the file that shall be read";

      output Integer numberOfLines "Number of lines in file";
    external "C" numberOfLines = ModelicaInternal_countLines(fileName);
    end countLines;

* * * * *

![image16](Modelica.Utilities.Streams.printI.png) [Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams).error
================================================================================================================================================

**Print error message and cancel all actions**

Information
-----------

::

### Syntax

>     Streams.error(string);

### Description

Print the string "string" as error message and cancel all actions. Line
breaks are characterized by "\\n" in the string.

### Example

>     Streams.error("x (= " + String(x) + ")\nhas to be in the range 0 .. 1");

### See also

[Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams),
[Streams.print](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams.print),
[String](../../ModelicaReference/help/ModelicaReference_Operators.html#ModelicaReference.Operators.string)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type      Name      Default    Description
  --------- --------- ---------- ------------------------------------------
  String    string               String to be printed to error message
                                 window
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function error "Print error message and cancel all actions"
      extends Modelica.Icons.Function;
      input String string "String to be printed to error message window";
      external "C" ModelicaError(string);
    end error;

* * * * *

![image17](Modelica.Utilities.Streams.printI.png) [Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams).close
================================================================================================================================================

**Close file**

Information
-----------

::

### Syntax

>     Streams.close(fileName)

### Description

Close file if it is open. Ignore call if file is already closed or does
not exist.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name         Default     Description
  ---------- ------------ ----------- --------------------------------------
  String     fileName                 Name of the file that shall be closed

Modelica definition
-------------------

    function close "Close file"
      extends Modelica.Icons.Function;
      input String fileName "Name of the file that shall be closed";
      external "C" ModelicaStreams_closeFile(fileName);
    end close;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
