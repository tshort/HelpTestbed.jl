% Modelica.Utilities.System
% 
% 

[Modelica.Utilities](Modelica_Utilities.html#Modelica.Utilities).System
=======================================================================

**Interaction with environment**

Information
-----------

::

This package contains functions to interact with the environment.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image6](Modelica.Utilities.Strings.Advanced.scanRealS Get full path
  .png)                                                   name of work
  [getWorkDirectory](Modelica_Utilities_System.html#Model directory
  ica.Utilities.System.getWorkDirectory)                  

  ![image7](Modelica.Utilities.Strings.Advanced.scanRealS Set work
  .png)                                                   directory
  [setWorkDirectory](Modelica_Utilities_System.html#Model 
  ica.Utilities.System.setWorkDirectory)                  

  ![image8](Modelica.Utilities.Strings.Advanced.scanRealS Get content of
  .png)                                                   environment
  [getEnvironmentVariable](Modelica_Utilities_System.html variable
  #Modelica.Utilities.System.getEnvironmentVariable)      

  ![image9](Modelica.Utilities.Strings.Advanced.scanRealS Set content of
  .png)                                                   local
  [setEnvironmentVariable](Modelica_Utilities_System.html environment
  #Modelica.Utilities.System.setEnvironmentVariable)      variable

  ![image10](Modelica.Utilities.Strings.Advanced.scanReal Execute command
  S.png)                                                  in default shell
  [command](Modelica_Utilities_System.html#Modelica.Utili 
  ties.System.command)                                    

  ![image11](Modelica.Utilities.Strings.Advanced.scanReal Terminate
  S.png)                                                  execution of
  [exit](Modelica_Utilities_System.html#Modelica.Utilitie Modelica
  s.System.exit)                                          environment
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Utilities.System.getWorkDirectoryI.png) [Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System).getWorkDirectory
==================================================================================================================================================================

**Get full path name of work directory**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Outputs
-------

  Type        Name           Description
  ----------- -------------- -------------------------------------
  String      directory      Full path name of work directory

Modelica definition
-------------------

    function getWorkDirectory "Get full path name of work directory"
      extends Modelica.Icons.Function;
      output String directory "Full path name of work directory";
    // POSIX function "getcwd"
      external "C" directory = ModelicaInternal_getcwd(0);
    end getWorkDirectory;

* * * * *

![image13](Modelica.Utilities.System.getWorkDirectoryI.png) [Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System).setWorkDirectory
==================================================================================================================================================================

**Set work directory**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name           Default      Description
  ----------- -------------- ------------ -----------------------
  String      directory                   New work directory

Modelica definition
-------------------

    function setWorkDirectory "Set work directory"
      extends Modelica.Icons.Function;
      input String directory "New work directory";
    // POSIX function "chdir"
    external "C" ModelicaInternal_chdir(directory);
    end setWorkDirectory;

* * * * *

![image14](Modelica.Utilities.System.getWorkDirectoryI.png) [Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System).getEnvironmentVariable
========================================================================================================================================================================

**Get content of environment variable**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type    Name        Default Description
  ------- ----------- ------- ----------------------------------------------
  String  name                Name of environment variable

  Boolean convertToSl false   True, if native directory separators in
          ash                 'result' shall be changed to '/'
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type     Name     Description
  -------- -------- ------------------------------------------------------
  String   content  Content of environment variable (empty, if not
                    existent)

  Boolean  exist    = true, if environment variable exists; = false, if it
                    does not exist
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function getEnvironmentVariable "Get content of environment variable"
      extends Modelica.Icons.Function;
      input String name "Name of environment variable";
      input Boolean convertToSlash =  false 
        "True, if native directory separators in 'result' shall be changed to '/'";
      output String content 
        "Content of environment variable (empty, if not existent)";
      output Boolean exist 
        "= true, if environment variable exists; = false, if it does not exist";
      external "C" ModelicaInternal_getenv(name, convertToSlash, content, exist);
    end getEnvironmentVariable;

* * * * *

![image15](Modelica.Utilities.System.getWorkDirectoryI.png) [Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System).setEnvironmentVariable
========================================================================================================================================================================

**Set content of local environment variable**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type   Name         Defaul Description
                      t      
  ------ ------------ ------ ---------------------------------------------
  String name                Name of environment variable

  String content             Value of the environment variable

  Boolea convertFromS false  True, if '/' in content shall be changed to
  n      lash                the native directory separator
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function setEnvironmentVariable 
      "Set content of local environment variable"
      extends Modelica.Icons.Function;
      input String name "Name of environment variable";
      input String content "Value of the environment variable";
      input Boolean convertFromSlash =  false 
        "True, if '/' in content shall be changed to the native directory separator";
    external "C" ModelicaInternal_setenv(name, content, convertFromSlash);
    end setEnvironmentVariable;

* * * * *

![image16](Modelica.Utilities.System.getWorkDirectoryI.png) [Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System).command
=========================================================================================================================================================

**Execute command in default shell**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type        Name        Default      Description
  ----------- ----------- ------------ ---------------------------------
  String      string                   String to be passed to shell

Outputs
-------

  Type        Name       Description
  ----------- ---------- --------------------------------------------------
  Integer     result     Return value from command (depends on environment)

Modelica definition
-------------------

    function command "Execute command in default shell"
      extends Modelica.Icons.Function;
      input String string "String to be passed to shell";
      output Integer result "Return value from command (depends on environment)";
      external "C" result = system(string);
    end command;

* * * * *

![image17](Modelica.Utilities.System.getWorkDirectoryI.png) [Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System).exit
======================================================================================================================================================

**Terminate execution of Modelica environment**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type      Name     Default   Description
  --------- -------- --------- ---------------------------------------------
  Integer   status   0         Result to be returned by environment (0 means
                               success)
  --------------------------------------------------------------------------

Modelica definition
-------------------

    function exit "Terminate execution of Modelica environment"
      extends Modelica.Icons.Function;
      input Integer status=0 
        "Result to be returned by environment (0 means success)";
      external "C" ModelicaInternal_exit(status);

    end exit;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
