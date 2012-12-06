=========================
Modelica.Utilities.System
=========================

`Modelica.Utilities <Modelica_Utilities.html#Modelica.Utilities>`_.System
-------------------------------------------------------------------------

**Interaction with environment**

Information
~~~~~~~~~~~

::

This package contains functions to interact with the environment.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+
| Name                                                                                                                                                             | Description                                   |
+==================================================================================================================================================================+===============================================+
| |image6| `getWorkDirectory <Modelica_Utilities_System.html#Modelica.Utilities.System.getWorkDirectory>`_                                                         | Get full path name of work directory          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+
| |image7| `setWorkDirectory <Modelica_Utilities_System.html#Modelica.Utilities.System.setWorkDirectory>`_                                                         | Set work directory                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+
| |image8| `getEnvironmentVariable <Modelica_Utilities_System.html#Modelica.Utilities.System.getEnvironmentVariable>`_                                             | Get content of environment variable           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+
| |image9| `setEnvironmentVariable <Modelica_Utilities_System.html#Modelica.Utilities.System.setEnvironmentVariable>`_                                             | Set content of local environment variable     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+
| |image10| `command <Modelica_Utilities_System.html#Modelica.Utilities.System.command>`_                                                                          | Execute command in default shell              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+
| |image11| `exit <Modelica_Utilities_System.html#Modelica.Utilities.System.exit>`_                                                                                | Terminate execution of Modelica environment   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------+

--------------

|image12| `Modelica.Utilities.System <Modelica_Utilities_System.html#Modelica.Utilities.System>`_.getWorkDirectory
------------------------------------------------------------------------------------------------------------------

**Get full path name of work directory**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Outputs
~~~~~~~

+----------+-------------+------------------------------------+
| Type     | Name        | Description                        |
+==========+=============+====================================+
| String   | directory   | Full path name of work directory   |
+----------+-------------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function getWorkDirectory "Get full path name of work directory"
      extends Modelica.Icons.Function;
      output String directory "Full path name of work directory";
    // POSIX function "getcwd"
      external "C" directory = ModelicaInternal_getcwd(0);
    end getWorkDirectory;

--------------

|image13| `Modelica.Utilities.System <Modelica_Utilities_System.html#Modelica.Utilities.System>`_.setWorkDirectory
------------------------------------------------------------------------------------------------------------------

**Set work directory**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+-------------+-----------+----------------------+
| Type     | Name        | Default   | Description          |
+==========+=============+===========+======================+
| String   | directory   |           | New work directory   |
+----------+-------------+-----------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function setWorkDirectory "Set work directory"
      extends Modelica.Icons.Function;
      input String directory "New work directory";
    // POSIX function "chdir"
    external "C" ModelicaInternal_chdir(directory);
    end setWorkDirectory;

--------------

|image14| `Modelica.Utilities.System <Modelica_Utilities_System.html#Modelica.Utilities.System>`_.getEnvironmentVariable
------------------------------------------------------------------------------------------------------------------------

**Get content of environment variable**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+------------------+-----------+----------------------------------------------------------------------------+
| Type      | Name             | Default   | Description                                                                |
+===========+==================+===========+============================================================================+
| String    | name             |           | Name of environment variable                                               |
+-----------+------------------+-----------+----------------------------------------------------------------------------+
| Boolean   | convertToSlash   | false     | True, if native directory separators in 'result' shall be changed to '/'   |
+-----------+------------------+-----------+----------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-----------+-------------------------------------------------------------------------+
| Type      | Name      | Description                                                             |
+===========+===========+=========================================================================+
| String    | content   | Content of environment variable (empty, if not existent)                |
+-----------+-----------+-------------------------------------------------------------------------+
| Boolean   | exist     | = true, if environment variable exists; = false, if it does not exist   |
+-----------+-----------+-------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image15| `Modelica.Utilities.System <Modelica_Utilities_System.html#Modelica.Utilities.System>`_.setEnvironmentVariable
------------------------------------------------------------------------------------------------------------------------

**Set content of local environment variable**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------------+-----------+------------------------------------------------------------------------------+
| Type      | Name               | Default   | Description                                                                  |
+===========+====================+===========+==============================================================================+
| String    | name               |           | Name of environment variable                                                 |
+-----------+--------------------+-----------+------------------------------------------------------------------------------+
| String    | content            |           | Value of the environment variable                                            |
+-----------+--------------------+-----------+------------------------------------------------------------------------------+
| Boolean   | convertFromSlash   | false     | True, if '/' in content shall be changed to the native directory separator   |
+-----------+--------------------+-----------+------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function setEnvironmentVariable 
      "Set content of local environment variable"
      extends Modelica.Icons.Function;
      input String name "Name of environment variable";
      input String content "Value of the environment variable";
      input Boolean convertFromSlash =  false 
        "True, if '/' in content shall be changed to the native directory separator";
    external "C" ModelicaInternal_setenv(name, content, convertFromSlash);
    end setEnvironmentVariable;

--------------

|image16| `Modelica.Utilities.System <Modelica_Utilities_System.html#Modelica.Utilities.System>`_.command
---------------------------------------------------------------------------------------------------------

**Execute command in default shell**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+----------+-----------+--------------------------------+
| Type     | Name     | Default   | Description                    |
+==========+==========+===========+================================+
| String   | string   |           | String to be passed to shell   |
+----------+----------+-----------+--------------------------------+

Outputs
~~~~~~~

+-----------+----------+------------------------------------------------------+
| Type      | Name     | Description                                          |
+===========+==========+======================================================+
| Integer   | result   | Return value from command (depends on environment)   |
+-----------+----------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function command "Execute command in default shell"
      extends Modelica.Icons.Function;
      input String string "String to be passed to shell";
      output Integer result "Return value from command (depends on environment)";
      external "C" result = system(string);
    end command;

--------------

|image17| `Modelica.Utilities.System <Modelica_Utilities_System.html#Modelica.Utilities.System>`_.exit
------------------------------------------------------------------------------------------------------

**Terminate execution of Modelica environment**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+----------+-----------+----------------------------------------------------------+
| Type      | Name     | Default   | Description                                              |
+===========+==========+===========+==========================================================+
| Integer   | status   | 0         | Result to be returned by environment (0 means success)   |
+-----------+----------+-----------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function exit "Terminate execution of Modelica environment"
      extends Modelica.Icons.Function;
      input Integer status=0 
        "Result to be returned by environment (0 means success)";
      external "C" ModelicaInternal_exit(status);

    end exit;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Utilities.System.getWorkDirectory| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |Modelica.Utilities.System.setWorkDirectory| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |Modelica.Utilities.System.getEnvironmentVariable| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |Modelica.Utilities.System.setEnvironmentVariable| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |Modelica.Utilities.System.command| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |Modelica.Utilities.System.exit| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image6| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image7| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image8| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image9| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image10| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image11| image:: Modelica.Utilities.Strings.Advanced.scanRealS.png
.. |image12| image:: Modelica.Utilities.System.getWorkDirectoryI.png
.. |image13| image:: Modelica.Utilities.System.getWorkDirectoryI.png
.. |image14| image:: Modelica.Utilities.System.getWorkDirectoryI.png
.. |image15| image:: Modelica.Utilities.System.getWorkDirectoryI.png
.. |image16| image:: Modelica.Utilities.System.getWorkDirectoryI.png
.. |image17| image:: Modelica.Utilities.System.getWorkDirectoryI.png
