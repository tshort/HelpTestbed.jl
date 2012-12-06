==========================
Modelica.Utilities.Strings
==========================

`Modelica.Utilities <Modelica_Utilities.html#Modelica.Utilities>`_.Strings
--------------------------------------------------------------------------

**Operations on strings**

Information
~~~~~~~~~~~

::

Library content
^^^^^^^^^^^^^^^

Package **Strings** contains functions to manipulate strings.

In the table below an example call to every function is given using the
**default** options.

+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| ***Function***                                                                                                                           | ***Description***                                                             |
+==========================================================================================================================================+===============================================================================+
| len = `length <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.length>`_(string)                                              | Returns length of string                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| string2 = `substring <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.substring>`_(string1,startIndex,endIndex)               | Returns a substring defined by start and end index                            |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| result = `repeat <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.repeat>`_(n)                                                | Repeat a blank or a string n times.                                           |
|  result = `repeat <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.repeat>`_(n,string)                                        |                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| result = `compare <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.compare>`_(string1, string2)                               | Compares two substrings with regards to alphabetical order                    |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| identical = `isEqual <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.isEqual>`_(string1,string2)                             | Determine whether two strings are identical                                   |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| result = `count <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.count>`_(string,searchString)                                | Count the number of occurrences of a string                                   |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| index = `find <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.find>`_(string,searchString)                                   | Find first occurrence of a string in another string                           |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| index = `findLast <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.findLast>`_(string,searchString)                           | Find last occurrence of a string in another string                            |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| string2 = `replace <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.replace>`_(string,searchString,replaceString)             | Replace one or all occurrences of a string                                    |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| stringVector2 = `sort <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.sort>`_(stringVector1)                                 | Sort vector of strings in alphabetic order                                    |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (token, index) = `scanToken <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanToken>`_(string,startIndex)                  | Scan for a token (Real/Integer/Boolean/String/Identifier/Delimiter/NoToken)   |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (number, index) = `scanReal <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanReal>`_(string,startIndex)                   | Scan for a Real constant                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (number, index) = `scanInteger <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanInteger>`_(string,startIndex)             | Scan for an Integer constant                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (boolean, index) = `scanBoolean <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanBoolean>`_(string,startIndex)            | Scan for a Boolean constant                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (string2, index) = `scanString <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanString>`_(string,startIndex)              | Scan for a String constant                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (identifier, index) = `scanIdentifier <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanIdentifier>`_(string,startIndex)   | Scan for an identifier                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| (delimiter, index) = `scanDelimiter <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanDelimiter>`_(string,startIndex)      | Scan for delimiters                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| `scanNoToken <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanNoToken>`_(string,startIndex)                               | Check that remaining part of string consists solely of                        |
|                                                                                                                                          |  white space or line comments ("// ...\\n").                                  |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| `syntaxError <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.syntaxError>`_(string,index,message)                            | Print a "syntax error message" as well as a string and the                    |
|                                                                                                                                          |  index at which scanning detected an error                                    |
+------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

The functions "compare", "isEqual", "count", "find", "findLast",
"replace", "sort" have the optional input argument **caseSensitive**
with default **true**. If **false**, the operation is carried out
without taking into account whether a character is upper or lower case.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| Name                                                                                                                                        | Description                                                                          |
+=============================================================================================================================================+======================================================================================+
| |image20| `length <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.length>`_                                                     | Returns length of string                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image21| `substring <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.substring>`_                                               | Returns a substring defined by start and end index                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image22| `repeat <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.repeat>`_                                                     | Repeat a string n times                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image23| `compare <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.compare>`_                                                   | Compare two strings lexicographically                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image24| `isEqual <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.isEqual>`_                                                   | Determine whether two strings are identical                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image25| `count <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.count>`_                                                       | Count the number of non-overlapping occurrences of a string                          |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image26| `find <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.find>`_                                                         | Find first occurrence of a string within another string                              |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image27| `findLast <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.findLast>`_                                                 | Find last occurrence of a string within another string                               |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image28| `replace <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.replace>`_                                                   | Replace non-overlapping occurrences of a string from left to right                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image29| `sort <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.sort>`_                                                         | Sort vector of strings in alphabetic order                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image30| `scanToken <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanToken>`_                                               | Scan for the next token and return it                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image31| `scanReal <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanReal>`_                                                 | Scan for the next Real number and trigger an assert if not present                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image32| `scanInteger <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanInteger>`_                                           | Scan for the next Integer number and trigger an assert if not present                |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image33| `scanBoolean <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanBoolean>`_                                           | Scan for the next Boolean number and trigger an assert if not present                |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image34| `scanString <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanString>`_                                             | Scan for the next Modelica string and trigger an assert if not present               |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image35| `scanIdentifier <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanIdentifier>`_                                     | Scan for the next Identifier and trigger an assert if not present                    |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image36| `scanDelimiter <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanDelimiter>`_                                       | Scan for the next delimiter and trigger an assert if not present                     |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image37| `scanNoToken <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.scanNoToken>`_                                           | Scan string and check that it contains no more token                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image38| `syntaxError <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.syntaxError>`_                                           | Print an error message, a string and the index at which scanning detected an error   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
| |image39| `Advanced <Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced>`_                                        | Advanced scanning functions                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+

--------------

|image40| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.length
-----------------------------------------------------------------------------------------------------------

**Returns length of string**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Strings.length(string);

Description
^^^^^^^^^^^

Returns the number of characters of "string".

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+----------+-----------+---------------+
| Type     | Name     | Default   | Description   |
+==========+==========+===========+===============+
| String   | string   |           |               |
+----------+----------+-----------+---------------+

Outputs
~~~~~~~

+-----------+----------+----------------------------------+
| Type      | Name     | Description                      |
+===========+==========+==================================+
| Integer   | result   | Number of characters of string   |
+-----------+----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function length "Returns length of string"
      extends Modelica.Icons.Function;
      input String string;
      output Integer result "Number of characters of string";
    external "C" result = ModelicaStrings_length(string);
    end length;

--------------

|image41| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.substring
--------------------------------------------------------------------------------------------------------------

**Returns a substring defined by start and end index**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        string2 = Strings.substring(string, startIndex, endIndex);

Description
^^^^^^^^^^^

This function returns the substring from position startIndex up to and
including position endIndex of "string" .

If index, startIndex, or endIndex are not correct, e.g., if endIndex >
length(string), an assert is triggered.

Example
^^^^^^^

    ::

          string1 := "This is line 111";
          string2 := Strings.substring(string1,9,12); // string2 = "line"

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+--------------------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                                    |
+===========+==============+===========+================================================================================+
| String    | string       |           | String from which a substring is inquired                                      |
+-----------+--------------+-----------+--------------------------------------------------------------------------------+
| Integer   | startIndex   |           | Character position of substring begin (index=1 is first character in string)   |
+-----------+--------------+-----------+--------------------------------------------------------------------------------+
| Integer   | endIndex     |           | Character position of substring end                                            |
+-----------+--------------+-----------+--------------------------------------------------------------------------------+

Outputs
~~~~~~~

+----------+----------+-----------------------------------------------------------+
| Type     | Name     | Description                                               |
+==========+==========+===========================================================+
| String   | result   | String containing substring string[startIndex:endIndex]   |
+----------+----------+-----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function substring 
      "Returns a substring defined by start and end index"

      extends Modelica.Icons.Function;
      input String string "String from which a substring is inquired";
      input Integer startIndex(min=1) 
        "Character position of substring begin (index=1 is first character in string)";
      input Integer endIndex(min=1) "Character position of substring end";
      output String result 
        "String containing substring string[startIndex:endIndex]";
    external "C" result=ModelicaStrings_substring(string,startIndex,endIndex);
    end substring;

--------------

|image42| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.repeat
-----------------------------------------------------------------------------------------------------------

**Repeat a string n times**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        string2 = Strings.repeat(n);
        string2 = Strings.repeat(n, string=" ");

Description
^^^^^^^^^^^

The first form returns a string consisting of n blanks.

The second form returns a string consisting of n substrings defined by
the optional argument "string".

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+----------+-----------+---------------------------+
| Type      | Name     | Default   | Description               |
+===========+==========+===========+===========================+
| Integer   | n        | 1         | Number of occurences      |
+-----------+----------+-----------+---------------------------+
| String    | string   | " "       | String that is repeated   |
+-----------+----------+-----------+---------------------------+

Outputs
~~~~~~~

+----------+------------------+--------------------------------------------+
| Type     | Name             | Description                                |
+==========+==================+============================================+
| String   | repeatedString   | String containing n concatenated strings   |
+----------+------------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function repeat "Repeat a string n times"
      extends Modelica.Icons.Function;
      input Integer n(min=0) = 1 "Number of occurences";
      input String string=" " "String that is repeated";
      output String repeatedString "String containing n concatenated strings";
    algorithm 
      repeatedString :="";
      for i in 1:n loop
         repeatedString := repeatedString + string;
      end for;
    end repeat;

--------------

|image43| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.compare
------------------------------------------------------------------------------------------------------------

**Compare two strings lexicographically**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        result = Strings.compare(string1, string2);
        result = Strings.compare(string1, string2, caseSensitive=true);

Description
^^^^^^^^^^^

Compares two strings. If the optional argument caseSensitive=false,
upper case letters are treated as if they would be lower case letters.
The result of the comparison is returned as:

::

      result = Modelica.Utilities.Types.Compare.Less     // string1 < string2
             = Modelica.Utilities.Types.Compare.Equal    // string1 = string2
             = Modelica.Utilities.Types.Compare.Greater  // string1 > string2

Comparison is with regards to lexicographical order, e.g., "a" < "b";

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------+-----------+------------------------------------------+
| Type      | Name            | Default   | Description                              |
+===========+=================+===========+==========================================+
| String    | string1         |           |                                          |
+-----------+-----------------+-----------+------------------------------------------+
| String    | string2         |           |                                          |
+-----------+-----------------+-----------+------------------------------------------+
| Boolean   | caseSensitive   | true      | = false, if case of letters is ignored   |
+-----------+-----------------+-----------+------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+----------+------------------------+
| Type                                                                          | Name     | Description            |
+===============================================================================+==========+========================+
| `Compare <Modelica_Utilities_Types.html#Modelica.Utilities.Types.Compare>`_   | result   | Result of comparison   |
+-------------------------------------------------------------------------------+----------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function compare "Compare two strings lexicographically"
      extends Modelica.Icons.Function;
      input String string1;
      input String string2;
      input Boolean caseSensitive=true "= false, if case of letters is ignored";
      output Modelica.Utilities.Types.Compare result "Result of comparison";
    external "C" result = ModelicaStrings_compare(string1, string2, caseSensitive);
    end compare;

--------------

|image44| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.isEqual
------------------------------------------------------------------------------------------------------------

**Determine whether two strings are identical**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Strings.isEqual(string1, string2);
        Strings.isEqual(string1, string2, caseSensitive=true);

Description
^^^^^^^^^^^

Compare whether two strings are identical, optionally ignoring case.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------+-----------+-------------------------------------------------------------------+
| Type      | Name            | Default   | Description                                                       |
+===========+=================+===========+===================================================================+
| String    | string1         |           |                                                                   |
+-----------+-----------------+-----------+-------------------------------------------------------------------+
| String    | string2         |           |                                                                   |
+-----------+-----------------+-----------+-------------------------------------------------------------------+
| Boolean   | caseSensitive   | true      | = false, if lower and upper case are ignored for the comparison   |
+-----------+-----------------+-----------+-------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+--------------------------------------------+
| Type      | Name        | Description                                |
+===========+=============+============================================+
| Boolean   | identical   | True, if string1 is identical to string2   |
+-----------+-------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function isEqual "Determine whether two strings are identical"
      extends Modelica.Icons.Function;
      input String string1;
      input String string2;
      input Boolean caseSensitive=true 
        "= false, if lower and upper case are ignored for the comparison";
      output Boolean identical "True, if string1 is identical to string2";
    algorithm 
      identical :=compare(string1, string2, caseSensitive) == Types.Compare.Equal;
    end isEqual;

--------------

|image45| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.count
----------------------------------------------------------------------------------------------------------

**Count the number of non-overlapping occurrences of a string**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Strings.count(string, searchString)
        Strings.count(string, searchString, startIndex=1,
                             caseSensitive=true)

Description
^^^^^^^^^^^

Returns the number of non-overlapping occurrences of string
"searchString" in "string". The search is started at index "startIndex"
(default = 1). If the optional argument "caseSensitive" is false, for
the counting it does not matter whether a letter is upper or lower case.
/p>

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------+-----------+----------------------------------------------------------+
| Type      | Name            | Default   | Description                                              |
+===========+=================+===========+==========================================================+
| String    | string          |           | String that is analyzed                                  |
+-----------+-----------------+-----------+----------------------------------------------------------+
| String    | searchString    |           | String that is searched for in string                    |
+-----------+-----------------+-----------+----------------------------------------------------------+
| Integer   | startIndex      | 1         | Start search at index startIndex                         |
+-----------+-----------------+-----------+----------------------------------------------------------+
| Boolean   | caseSensitive   | true      | = false, if lower and upper case are ignored for count   |
+-----------+-----------------+-----------+----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+----------+-------------------------------------------------------+
| Type      | Name     | Description                                           |
+===========+==========+=======================================================+
| Integer   | result   | Number of occurrences of 'searchString' in 'string'   |
+-----------+----------+-------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function count 
      "Count the number of non-overlapping occurrences of a string"
      extends Modelica.Icons.Function;
      input String string "String that is analyzed";
      input String searchString "String that is searched for in string";
      input Integer startIndex(min=1)=1 "Start search at index startIndex";
      input Boolean caseSensitive=true 
        "= false, if lower and upper case are ignored for count";
      output Integer result "Number of occurrences of 'searchString' in 'string'";
    protected 
      Integer lenSearchString = length(searchString);
      Integer i = startIndex;
    algorithm 
      result := 0;
      while i <> 0 loop
         i := find(string, searchString, i, caseSensitive);
         if i > 0 then
            result := result + 1;
            i := i + lenSearchString;
         end if;
      end while;
    end count;

--------------

|image46| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.find
---------------------------------------------------------------------------------------------------------

**Find first occurrence of a string within another string**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        index = Strings.find(string, searchString);
        index = Strings.find(string, searchString, startIndex=1,
                             caseSensitive=true);

Description
^^^^^^^^^^^

Finds first occurence of "searchString" within "string" and return the
corresponding index. Start search at index "startIndex" (default = 1).
If the optional argument "caseSensitive" is false, lower and upper case
are ignored for the search. If "searchString" is not found, a value of
"0" is returned.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------+-----------+---------------------------------------------------------------+
| Type      | Name            | Default   | Description                                                   |
+===========+=================+===========+===============================================================+
| String    | string          |           | String that is analyzed                                       |
+-----------+-----------------+-----------+---------------------------------------------------------------+
| String    | searchString    |           | String that is searched for in string                         |
+-----------+-----------------+-----------+---------------------------------------------------------------+
| Integer   | startIndex      | 1         | Start search at index startIndex                              |
+-----------+-----------------+-----------+---------------------------------------------------------------+
| Boolean   | caseSensitive   | true      | = false, if lower and upper case are ignored for the search   |
+-----------+-----------------+-----------+---------------------------------------------------------------+

Outputs
~~~~~~~

+-----------+---------+------------------------------------------------------------------------------------------------------------+
| Type      | Name    | Description                                                                                                |
+===========+=========+============================================================================================================+
| Integer   | index   | Index of the beginning of the first occurrence of 'searchString' within 'string', or zero if not present   |
+-----------+---------+------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function find 
      "Find first occurrence of a string within another string"
      extends Modelica.Icons.Function;
      input String string "String that is analyzed";
      input String searchString "String that is searched for in string";
      input Integer startIndex(min=1)=1 "Start search at index startIndex";
      input Boolean caseSensitive=true 
        "= false, if lower and upper case are ignored for the search";
       output Integer index 
        "Index of the beginning of the first occurrence of 'searchString' within 'string', or zero if not present";
    protected 
      Integer lengthSearchString = length(searchString);
      Integer len = lengthSearchString-1;
      Integer i = startIndex;
      Integer i_max = length(string) - lengthSearchString + 1;
    algorithm 
      index := 0;
      while i <= i_max loop
         if isEqual(substring(string,i,i+len),
                    searchString, caseSensitive) then
            index := i;
            i := i_max + 1;
         else
            i := i+1;
         end if;
      end while;
    end find;

--------------

|image47| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.findLast
-------------------------------------------------------------------------------------------------------------

**Find last occurrence of a string within another string**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        index = Strings.findLast(string, searchString);
        index = Strings.findLast(string, searchString,
                                 startIndex=length(string), caseSensitive=true,

Description
^^^^^^^^^^^

Finds first occurence of "searchString" within "string" when searching
from the last character of "string" backwards, and return the
corresponding index. Start search at index "startIndex" (default =
length(string)). If the optional argument "caseSensitive" is false,
lower and upper case are ignored for the search. If "searchString" is
not found, a value of "0" is returned.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------+-----------+--------------------------------------------------------------------------------+
| Type      | Name            | Default   | Description                                                                    |
+===========+=================+===========+================================================================================+
| String    | string          |           | String that is analyzed                                                        |
+-----------+-----------------+-----------+--------------------------------------------------------------------------------+
| String    | searchString    |           | String that is searched for in string                                          |
+-----------+-----------------+-----------+--------------------------------------------------------------------------------+
| Integer   | startIndex      | 0         | Start search at index startIndex. If startIndex = 0, start at length(string)   |
+-----------+-----------------+-----------+--------------------------------------------------------------------------------+
| Boolean   | caseSensitive   | true      | = false, if lower and upper case are ignored for the search                    |
+-----------+-----------------+-----------+--------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------+---------+-----------------------------------------------------------------------------------------------------------+
| Type      | Name    | Description                                                                                               |
+===========+=========+===========================================================================================================+
| Integer   | index   | Index of the beginning of the last occurrence of 'searchString' within 'string', or zero if not present   |
+-----------+---------+-----------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function findLast 
      "Find last occurrence of a string within another string"
      extends Modelica.Icons.Function;
      input String string "String that is analyzed";
      input String searchString "String that is searched for in string";
      input Integer startIndex(min=0)=0 
        "Start search at index startIndex. If startIndex = 0, start at length(string)";
      input Boolean caseSensitive=true 
        "= false, if lower and upper case are ignored for the search";
      output Integer index 
        "Index of the beginning of the last occurrence of 'searchString' within 'string', or zero if not present";
    protected 
      Integer lenString = length(string);
      Integer lenSearchString = length(searchString);
      Integer i;
    algorithm 
      i := if startIndex == 0 then lenString-lenSearchString+1 else startIndex;
      index := 0;
      while i >= 1 loop
         if isEqual(substring(string,i,i+lenSearchString-1),
                    searchString, caseSensitive) then
            index := i;
            i := 0;
         else
            i := i-1;
         end if;
      end while;
    end findLast;

--------------

|image48| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.replace
------------------------------------------------------------------------------------------------------------

**Replace non-overlapping occurrences of a string from left to right**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Strings.replace(string, searchString, replaceString);
        Strings.replace(string, searchString, replaceString,
                        startIndex=1, replaceAll=true, caseSensitive=true);

Description
^^^^^^^^^^^

Search in "string" for "searchString" and replace the found substring by
"replaceString".

-  The search starts at the first character of "string", or at character
   position "startIndex", if this optional argument is provided.
-  If the optional argument "replaceAll" is **true** (default), all
   occurrences of "searchString" are replaced. If the argument is
   **false**, only the first occurrence is replaced.
-  The search for "searchString" distinguishes upper and lower case
   letters. If the optional argument "caseSensitive" is **false**, the
   search ignores whether letters are upper or lower case.

The function returns the "string" with the performed replacements.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+
| Type      | Name            | Default   | Description                                                                              |
+===========+=================+===========+==========================================================================================+
| String    | string          |           | String to be modified                                                                    |
+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+
| String    | searchString    |           | Replace non-overlapping occurrences of 'searchString' in 'string' with 'replaceString'   |
+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+
| String    | replaceString   |           | String that replaces 'searchString' in 'string'                                          |
+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+
| Integer   | startIndex      | 1         | Start search at index startIndex                                                         |
+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+
| Boolean   | replaceAll      | true      | if false, replace only the first occurrence, otherwise all occurrences                   |
+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+
| Boolean   | caseSensitive   | true      | = false, if lower and upper case are ignored when searching for searchString             |
+-----------+-----------------+-----------+------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+----------+----------+---------------------------------------------+
| Type     | Name     | Description                                 |
+==========+==========+=============================================+
| String   | result   | Resultant string of replacement operation   |
+----------+----------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function replace 
      "Replace non-overlapping occurrences of a string from left to right"
      extends Modelica.Icons.Function;
      input String string "String to be modified";
      input String searchString 
        "Replace non-overlapping occurrences of 'searchString' in 'string' with 'replaceString'";
      input String replaceString "String that replaces 'searchString' in 'string'";
      input Integer startIndex=1 "Start search at index startIndex";
      input Boolean replaceAll=true 
        "if false, replace only the first occurrence, otherwise all occurrences";
      input Boolean caseSensitive=true 
        "= false, if lower and upper case are ignored when searching for searchString";
      output String result "Resultant string of replacement operation";
    protected 
      Integer lenString = length(string);
      Integer lenSearchString = length(searchString);
      Integer i = startIndex;
      Integer i_found;
    algorithm 
      result := if startIndex == 1 then "" else substring(string,1,startIndex-1);
      while i > 0 loop
         i_found := find(string, searchString, i, caseSensitive);
         if i_found > 0 then
            result := if i_found == 1 then 
                         replaceString else 
                         result + (if i_found-1<i then "" else substring(string, i, i_found-1)) + replaceString;
            i := i_found + lenSearchString;
            if i > lenString then
               i := 0;
            elseif not replaceAll then
               result := result + substring(string, i, lenString);
               i := 0;
            end if;
         elseif lenString<i then
            i := 0;
         else
            result := result + substring(string, i, lenString);
            i := 0;
         end if;
      end while;
    end replace;

--------------

|image49| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.sort
---------------------------------------------------------------------------------------------------------

**Sort vector of strings in alphabetic order**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        stringVector2 = Streams.sort(stringVector1);
        stringVector2 = Streams.sort(stringVector1, caseSensitive=true);

Description
^^^^^^^^^^^

Function **sort**(..) sorts a string vector stringVector1 in
lexicographical order and returns the result in stringVector2. If the
optional argument "caseSensitive" is **false**, lower and upper case
letters are not distinguished.

Example
^^^^^^^

    ::

          s1 = {"force", "angle", "pressure"};
          s2 = Strings.sort(s1);
               -> s2 = {"angle", "force", "pressure"};

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------------+-----------+-----------------------------------------------------------------------------------------+
| Type      | Name               | Default   | Description                                                                             |
+===========+====================+===========+=========================================================================================+
| String    | stringVector1[:]   |           | vector of strings                                                                       |
+-----------+--------------------+-----------+-----------------------------------------------------------------------------------------+
| Boolean   | caseSensitive      | true      | = false, if lower and upper case are ignored when comparing elements of stringVector1   |
+-----------+--------------------+-----------+-----------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+----------+-----------------------------------------+----------------------------------------+
| Type     | Name                                    | Description                            |
+==========+=========================================+========================================+
| String   | stringVector2[size(stringVector1, 1)]   | string1 sorted in alphabetical order   |
+----------+-----------------------------------------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function sort "Sort vector of strings in alphabetic order"
      extends Modelica.Icons.Function;
      input String stringVector1[:] "vector of strings";
      input Boolean caseSensitive=true 
        "= false, if lower and upper case are ignored when comparing elements of stringVector1";
      output String stringVector2[size(stringVector1,1)] 
        "string1 sorted in alphabetical order";
      /* shellsort algorithm; should be improved later */
    protected 
      Integer gap;
      Integer i;
      Integer j;
      String tempString;
      Integer nStringVector1 = size(stringVector1,1);
      Boolean swap;
    algorithm 
      stringVector2 := stringVector1;
      gap := div(nStringVector1,2);

      while gap > 0 loop
         i := gap;
         while i < nStringVector1 loop
            j := i-gap;
            if j >= 0 then
               swap := compare(stringVector2[j+1], stringVector2[j+gap+1], caseSensitive)
                       == Modelica.Utilities.Types.Compare.Greater;
            else
               swap := false;
            end if;

            while swap loop
               tempString := stringVector2[j+1];
               stringVector2[j+1] := stringVector2[j+gap+1];
               stringVector2[j+gap+1] := tempString;
               j := j - gap;
               if j >= 0 then
                  swap := compare(stringVector2[j+1], stringVector2[j+gap+1], caseSensitive)
                          == Modelica.Utilities.Types.Compare.Greater;
               else
                  swap := false;
               end if;
            end while;
            i := i + 1;
         end while;
         gap := div(gap,2);
      end while;

    end sort;

--------------

|image50| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanToken
--------------------------------------------------------------------------------------------------------------

**Scan for the next token and return it**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        (token, nextIndex) = Strings.scanToken(string, startIndex, unsigned=false);

Description
^^^^^^^^^^^

Function **scanToken** scans the string starting at index "startIndex"
and returns the next token, as well as the index directly after the
token. The returned token is a record that holds the type of the token
and the value of the token:

+-------------------+-------------------------------------------------------------------------------------+
| token.tokenType   | Type of the token, see below                                                        |
+-------------------+-------------------------------------------------------------------------------------+
| token.real        | Real value if tokenType == TokenType.RealToken                                      |
+-------------------+-------------------------------------------------------------------------------------+
| token.integer     | Integer value if tokenType == TokenType.IntegerToken                                |
+-------------------+-------------------------------------------------------------------------------------+
| token.boolean     | Boolean value if tokenType == TokenType.BooleanToken                                |
+-------------------+-------------------------------------------------------------------------------------+
| token.string      | String value if tokenType == TokenType.StringToken/IdentifierToken/DelimiterToken   |
+-------------------+-------------------------------------------------------------------------------------+

Variable token.tokenType is an enumeration (emulated as a package with
constants) that can have the following values:

::

       import T = Modelica.Utilities.Types.TokenType;

+---------------------+----------------------------------------------------------+
| T.RealToken         | Modelica Real literal (e.g., 1.23e-4)                    |
+---------------------+----------------------------------------------------------+
| T.IntegerToken      | Modelica Integer literal (e.g., 123)                     |
+---------------------+----------------------------------------------------------+
| T.BooleanToken      | Modelica Boolean literal (e.g., false)                   |
+---------------------+----------------------------------------------------------+
| T.StringToken       | Modelica String literal (e.g., "string 123")             |
+---------------------+----------------------------------------------------------+
| T.IdentifierToken   | Modelica identifier (e.g., "force\_a")                   |
+---------------------+----------------------------------------------------------+
| T.DelimiterToken    | any character without white space that does not appear   |
|                     |  as first character in the tokens above (e.g., "&")      |
+---------------------+----------------------------------------------------------+
| T.NoToken           | White space, line comments and no other token            |
|                     |  until the end of the string                             |
+---------------------+----------------------------------------------------------+

Modelica line comments ("// ... end-of-line/end-of-string") as well as
white space is ignored. If "unsigned=true", a Real or Integer literal is
not allowed to start with a "+" or "-" sign.

Example
^^^^^^^

    ::

          import Modelica.Utilities.Strings.*;
          import T = Modelica.Utilities.Types.TokenType;
          (token, index) := scanToken(string);
          if token.tokenType == T.RealToken then
             realValue := token.real;
          elseif token.tokenType == T.IntegerToken then
             integerValue := token.integer;
          elseif token.tokenType == T.BooleanToken then
             booleanValue := token.boolean;
          elseif token.tokenType == T.Identifier then
             name := token.string;
          else
             syntaxError(string,index,"Expected Real, Integer, Boolean or identifier token");
          end if;

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+------------------------------------------------------------------+
| Type      | Name         | Default   | Description                                                      |
+===========+==============+===========+==================================================================+
| String    | string       |           | String to be scanned                                             |
+-----------+--------------+-----------+------------------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of string at character startIndex                 |
+-----------+--------------+-----------+------------------------------------------------------------------+
| Boolean   | unsigned     | false     | = true, if Real and Integer tokens shall not start with a sign   |
+-----------+--------------+-----------+------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+
| Type                                                                                | Name        | Description                                                 |
+=====================================================================================+=============+=============================================================+
| `TokenValue <Modelica_Utilities_Types.html#Modelica.Utilities.Types.TokenValue>`_   | token       | Scanned token                                               |
+-------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+
| Integer                                                                             | nextIndex   | Index of character after the found token; = 0, if NoToken   |
+-------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanToken "Scan for the next token and return it"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1) = 1 
        "Start scanning of string at character startIndex";
      input Boolean unsigned=false 
        "= true, if Real and Integer tokens shall not start with a sign";
      output Types.TokenValue token "Scanned token";
      output Integer nextIndex 
        "Index of character after the found token; = 0, if NoToken";
    protected 
      Integer startTokenIndex;
    algorithm 
      // Initialize token
      token.real :=0.0;
      token.integer :=0;
      token.boolean :=false;
      token.string :="";

      // skip white space and line comments
      startTokenIndex := Advanced.skipLineComments(string, startIndex);
      if startTokenIndex > length(string) then
        token.tokenType := Modelica.Utilities.Types.TokenType.NoToken;
        nextIndex := startTokenIndex;
      else
        // scan Integer number
          (nextIndex, token.integer) := Advanced.scanInteger(string, startTokenIndex, unsigned);
           token.tokenType := Types.TokenType.IntegerToken;

        // scan Real number
        if nextIndex == startTokenIndex then
          (nextIndex, token.real) :=Advanced.scanReal(string, startTokenIndex, unsigned);
           token.tokenType := Types.TokenType.RealToken;
        end if;

        // scan String
        if nextIndex == startTokenIndex then
           (nextIndex,token.string) := Advanced.scanString(string, startTokenIndex);
            token.tokenType:= Types.TokenType.StringToken;
        end if;

        // scan Identifier or Boolean
        if nextIndex == startTokenIndex then
           (nextIndex,token.string) := Advanced.scanIdentifier(string, startTokenIndex);
           if nextIndex > startTokenIndex then
              if token.string == "false" then
                 token.string := "";
                 token.boolean :=false;
                 token.tokenType := Types.TokenType.BooleanToken;
              elseif token.string == "true" then
                 token.string := "";
                 token.boolean := true;
                 token.tokenType := Types.TokenType.BooleanToken;
              else
                 token.tokenType := Types.TokenType.IdentifierToken;
              end if;
           end if;
        end if;

        // scan Delimiter
        if nextIndex == startTokenIndex then
           token.string :=substring(string, startTokenIndex, startTokenIndex);
           token.tokenType := Types.TokenType.DelimiterToken;
           nextIndex := startTokenIndex + 1;
        end if;
      end if;
    end scanToken;

--------------

|image51| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanReal
-------------------------------------------------------------------------------------------------------------

**Scan for the next Real number and trigger an assert if not present**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     number = Strings.scanReal(string);
        (number, nextIndex) = Strings.scanReal(string, startIndex=1,
                                                    unsigned=false, message="");

Description
^^^^^^^^^^^

The first form, "scanReal(string)", scans "string" for a Real number
with leading white space and returns the value.

The second form, "scanReal(string,startIndex,unsigned)", scans the
string starting at index "startIndex", checks whether the next token is
a Real literal and returns its value as a Real number, as well as the
index directly after the Real number. If the optional argument
"unsigned" is **true**, the real number shall not have a leading "+" or
"-" sign.

If the required Real number with leading white space is not present in
"string", an assert is triggered.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | String to be scanned                                      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of string at character startIndex          |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Boolean   | unsigned     | false     | = true, if Real token shall not start with a sign         |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+---------------------------------------------+
| Type      | Name        | Description                                 |
+===========+=============+=============================================+
| Real      | number      | Value of real number                        |
+-----------+-------------+---------------------------------------------+
| Integer   | nextIndex   | index of character after the found number   |
+-----------+-------------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanReal 
      "Scan for the next Real number and trigger an assert if not present"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of string at character startIndex";
      input Boolean unsigned=false 
        "= true, if Real token shall not start with a sign";
      input String message="" 
        "Message used in error message if scan is not successful";
      output Real number "Value of real number";
      output Integer nextIndex "index of character after the found number";
    algorithm 
      (nextIndex, number) :=Advanced.scanReal(string, startIndex, unsigned);
      if nextIndex == startIndex then
         nextIndex :=Advanced.skipWhiteSpace(string, startIndex);
         if unsigned then
            syntaxError(string, nextIndex, "Expected a Real number without a sign " + message);
         else
            syntaxError(string, nextIndex, "Expected a Real number " + message);
         end if;
      end if;
    end scanReal;

--------------

|image52| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanInteger
----------------------------------------------------------------------------------------------------------------

**Scan for the next Integer number and trigger an assert if not
present**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     number = Strings.scanInteger(string);
        (number, nextIndex) = Strings.scanInteger(string, startIndex=1,
                                                       unsigned=false, message="");

Description
^^^^^^^^^^^

Function **scanInteger** scans the string starting at index
"startIndex", checks whether the next token is an Integer literal and
returns its value as an Integer number, as well as the index directly
after the Integer number. An assert is triggered, if the scanned string
does not contain an Integer literal with optional leading white space.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | String to be scanned                                      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of string at character startIndex          |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Boolean   | unsigned     | false     | = true, if Integer token shall not start with a sign      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+---------------------------------------------+
| Type      | Name        | Description                                 |
+===========+=============+=============================================+
| Integer   | number      | Value of Integer number                     |
+-----------+-------------+---------------------------------------------+
| Integer   | nextIndex   | Index of character after the found number   |
+-----------+-------------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanInteger 
      "Scan for the next Integer number and trigger an assert if not present"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of string at character startIndex";
      input Boolean unsigned=false 
        "= true, if Integer token shall not start with a sign";
      input String message="" 
        "Message used in error message if scan is not successful";
      output Integer number "Value of Integer number";
      output Integer nextIndex "Index of character after the found number";
    algorithm 
      (nextIndex, number) :=Advanced.scanInteger(string, startIndex, unsigned);
      if nextIndex == startIndex then
         nextIndex :=Advanced.skipWhiteSpace(string, startIndex);
         if unsigned then
            syntaxError(string, nextIndex, "Expected an Integer number without a sign " + message);
         else
            syntaxError(string, nextIndex, "Expected an Integer number " + message);
         end if;
      end if;
    end scanInteger;

--------------

|image53| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanBoolean
----------------------------------------------------------------------------------------------------------------

**Scan for the next Boolean number and trigger an assert if not
present**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     number = Strings.scanBoolean(string);
        (number, nextIndex) = Strings.scanBoolean(string, startIndex=1, message="");

Description
^^^^^^^^^^^

Function **scanBoolean** scans the string starting at index
"startIndex", checks whether the next token is a Boolean literal (i.e.,
is either the string "false" or "true", if converted to lower case
letters) and returns its value as a Boolean number, as well as the index
directly after the Boolean number. An assert is triggered, if the
scanned string does not contain a Boolean literal with optional leading
white space.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | String to be scanned                                      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of string at character startIndex          |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+---------------------------------------------+
| Type      | Name        | Description                                 |
+===========+=============+=============================================+
| Boolean   | number      | Value of Boolean                            |
+-----------+-------------+---------------------------------------------+
| Integer   | nextIndex   | Index of character after the found number   |
+-----------+-------------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanBoolean 
      "Scan for the next Boolean number and trigger an assert if not present"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of string at character startIndex";
      input String message="" 
        "Message used in error message if scan is not successful";
      output Boolean number "Value of Boolean";
      output Integer nextIndex "Index of character after the found number";
    protected 
      String identifier;
    algorithm 
      (nextIndex, identifier) :=Advanced.scanIdentifier(string, startIndex);

      if nextIndex > startIndex then
         if identifier == "false" then
            number := false;
         elseif identifier == "true" then
            number := true;
         else
            nextIndex := startIndex;
         end if;
      end if;

      if nextIndex == startIndex then
         nextIndex :=Advanced.skipWhiteSpace(string, startIndex);
         syntaxError(string, nextIndex,
           "Expected a Boolean constant, i.e., \"false\" or \"true\" " + message);
      end if;
    end scanBoolean;

--------------

|image54| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanString
---------------------------------------------------------------------------------------------------------------

**Scan for the next Modelica string and trigger an assert if not
present**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     string2 = Strings.scanString(string);
        (string2, nextIndex) = Strings.scanString(string, startIndex=1, message="");

Description
^^^^^^^^^^^

Function **scanString** scans the string starting at index "startIndex",
checks whether the next token is a String literal and returns its value
as a String, as well as the index directly after the String. An assert
is triggered, if the scanned string does not contain a String literal
with optional leading white space.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | String to be scanned                                      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of string at character startIndex          |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+---------------------------------------------+
| Type      | Name        | Description                                 |
+===========+=============+=============================================+
| String    | result      | Value of string                             |
+-----------+-------------+---------------------------------------------+
| Integer   | nextIndex   | Index of character after the found string   |
+-----------+-------------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanString 
      "Scan for the next Modelica string and trigger an assert if not present"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of string at character startIndex";
      input String message="" 
        "Message used in error message if scan is not successful";
      output String result "Value of string";
      output Integer nextIndex "Index of character after the found string";
    algorithm 
      (nextIndex, result) :=Advanced.scanString(string, startIndex);
      if nextIndex == startIndex then
         nextIndex :=Advanced.skipWhiteSpace(string, startIndex);
         syntaxError(string, nextIndex, "Expected a string enclosed in double quotes " + message);
      end if;
    end scanString;

--------------

|image55| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanIdentifier
-------------------------------------------------------------------------------------------------------------------

**Scan for the next Identifier and trigger an assert if not present**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     identifier = Strings.scanIdentifier(string);
        (identifier, nextIndex) = Strings.scanIdentifier(string, startIndex=1, message="");

Description
^^^^^^^^^^^

Function **scanIdentifier** scans the string starting at index
"startIndex", checks whether the next token is an Identifier and returns
its value as a string, as well as the index directly after the
Identifier. An assert is triggered, if the scanned string does not
contain an Identifier with optional leading white space.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | String to be scanned                                      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of identifier at character startIndex      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+--------------+-------------------------------------------------+
| Type      | Name         | Description                                     |
+===========+==============+=================================================+
| String    | identifier   | Value of Identifier                             |
+-----------+--------------+-------------------------------------------------+
| Integer   | nextIndex    | Index of character after the found identifier   |
+-----------+--------------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanIdentifier 
      "Scan for the next Identifier and trigger an assert if not present"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of identifier at character startIndex";
      input String message="" 
        "Message used in error message if scan is not successful";
      output String identifier "Value of Identifier";
      output Integer nextIndex "Index of character after the found identifier";
    algorithm 
      (nextIndex, identifier) :=Advanced.scanIdentifier(string, startIndex);
      if nextIndex == startIndex then
         nextIndex :=Advanced.skipWhiteSpace(string, startIndex);
         syntaxError(string, nextIndex, "Expected an identifier " + message);
      end if;
    end scanIdentifier;

--------------

|image56| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanDelimiter
------------------------------------------------------------------------------------------------------------------

**Scan for the next delimiter and trigger an assert if not present**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     delimiter = Strings.scanDelimiter(string);
        (delimiter, nextIndex) = Strings.scanDelimiter(string, startIndex=1,
                                         requiredDelimiters={","}, message="");

Description
^^^^^^^^^^^

Function **scanDelimiter** scans the string starting at index
"startIndex", checks whether the next token is a delimiter string and
returns its value as a string, as well as the index directly after the
delimiter. An assert is triggered, if the scanned string does not
contain a delimiter out of the list of requiredDelimiters. Input
argument requiredDelimiters is a vector of strings. The elements may
have any length, including length 0. If an element of the
requiredDelimiters is zero, white space is treated as delimiter. The
function returns delimiter="" and nextIndex is the index of the first
non white space character.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-------------------------+-----------+-----------------------------------------------------------+
| Type      | Name                    | Default   | Description                                               |
+===========+=========================+===========+===========================================================+
| String    | string                  |           | String to be scanned                                      |
+-----------+-------------------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex              | 1         | Start scanning of delimiters at character startIndex      |
+-----------+-------------------------+-----------+-----------------------------------------------------------+
| String    | requiredDelimiters[:]   | {","}     | Delimiters that are searched                              |
+-----------+-------------------------+-----------+-----------------------------------------------------------+
| String    | message                 | ""        | Message used in error message if scan is not successful   |
+-----------+-------------------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+------------------------------------------------+
| Type      | Name        | Description                                    |
+===========+=============+================================================+
| String    | delimiter   | Found delimiter                                |
+-----------+-------------+------------------------------------------------+
| Integer   | nextIndex   | Index of character after the found delimiter   |
+-----------+-------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanDelimiter 
      "Scan for the next delimiter and trigger an assert if not present"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of delimiters at character startIndex";
      input String requiredDelimiters[:]={","} "Delimiters that are searched";
      input String message="" 
        "Message used in error message if scan is not successful";
      output String delimiter "Found delimiter";
      output Integer nextIndex "Index of character after the found delimiter";
    protected 
      Integer lenString = length(string);
      Integer lenDelimiter;
      Integer nDelimiters = size(requiredDelimiters,1);
      Integer endIndex;
      Boolean found;
      Integer i;

      encapsulated function concatenate "Concatenate strings together"
         input String strings[:];
         output String string;
      algorithm 
         string := "{\"";
         for i in 1:size(strings,1) loop
            if i == 1 then
               string := "{\"" + strings[1] + "\"";
            else
               string := string + ", \"" + strings[i] + "\"";
            end if;
         end for;
         string := string + "}";
      end concatenate;
    algorithm 
      nextIndex := Advanced.skipLineComments(string,startIndex);
      found := false;
      i := 1;
      while not found and i <= nDelimiters loop
         lenDelimiter :=length(requiredDelimiters[i]);
         if lenDelimiter == 0 then
            found := true;
            delimiter := "";
         else
            endIndex :=nextIndex + lenDelimiter - 1;
            if endIndex <= lenString then
               if substring(string,nextIndex,endIndex) == requiredDelimiters[i] then
                  found := true;
                  delimiter := requiredDelimiters[i];
               end if;
            end if;
            i := i + 1;
         end if;
      end while;

      if found then
          nextIndex := nextIndex + lenDelimiter;
      else
         if size(requiredDelimiters,1) == 1 then
            syntaxError(string, nextIndex, "Expected delimiter \"" + requiredDelimiters[1] + "\"\n" + message);
         else
            syntaxError(string, nextIndex, "Expected a delimiter out of " +
                        concatenate(requiredDelimiters) + "\n" + message);
         end if;
      end if;
    end scanDelimiter;

--------------

|image57| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.scanNoToken
----------------------------------------------------------------------------------------------------------------

**Scan string and check that it contains no more token**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Strings.scanNoToken(string, startIndex=1, message="");

Description
^^^^^^^^^^^

Function **scanNoToken** scans the string starting at index "startIndex"
and checks whether there is no more token in the string. An assert is
triggered if this is not the case, using the "message" argument as
additional explanation in the error text.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | String to be scanned                                      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of string at character startIndex          |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function scanNoToken 
      "Scan string and check that it contains no more token"
      extends Modelica.Icons.Function;
      input String string "String to be scanned";
      input Integer startIndex(min=1)=1 
        "Start scanning of string at character startIndex";
      input String message="" 
        "Message used in error message if scan is not successful";
    protected 
      Integer nextIndex;
    algorithm 
      nextIndex :=Advanced.skipLineComments(string, startIndex);
      if nextIndex <= length(string) then
         syntaxError(string, nextIndex, "Expected no more token " + message);
      end if;
    end scanNoToken;

--------------

|image58| `Modelica.Utilities.Strings <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings>`_.syntaxError
----------------------------------------------------------------------------------------------------------------

**Print an error message, a string and the index at which scanning
detected an error**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Strings.syntaxError(string, index, message);

Description
^^^^^^^^^^^

Function **syntaxError** prints an error message in the following form:

::

       Syntax error at column <index> of
       <string>
           ^       // shows character that is wrong
       <message>

where the strings withing <..> are the actual values of the input
arguments of the function.

If the given string is too long, only a relevant part of the string is
printed.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------+-----------+-------------------------------------------------------+
| Type      | Name      | Default   | Description                                           |
+===========+===========+===========+=======================================================+
| String    | string    |           | String that has an error at position index            |
+-----------+-----------+-----------+-------------------------------------------------------+
| Integer   | index     |           | Index of string at which scanning detected an error   |
+-----------+-----------+-----------+-------------------------------------------------------+
| String    | message   | ""        | String printed at end of error message                |
+-----------+-----------+-----------+-------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function syntaxError 
      "Print an error message, a string and the index at which scanning detected an error"
      extends Modelica.Icons.Function;
      input String string "String that has an error at position index";
      input Integer index "Index of string at which scanning detected an error";
      input String message="" "String printed at end of error message";

    protected 
      Integer maxIndex = 40;
      Integer maxLenString = 60;
      Integer lenString = length(string);
      String errString;
      Integer index2 = if index < 1 then 1 else if index > lenString then lenString else index;
    algorithm 
    // if "string" is too long, skip part of the string when printing it
       if index2 <= maxIndex then
         errString := string;
       else
         errString := "... " + substring(string, index2-maxIndex, lenString);
         index2 := maxIndex + 5; // To mark right position
       end if;

       if length(errString) > maxLenString then
          errString := substring(errString, 1, maxLenString) + " ...";
       end if;

    // Print error message
       Streams.error("Syntax error at character " + String(index) + " of\n" +
                     errString + "\n" +
                     repeat(index2-1, " ") + "*" + "\n" +
                     message);
    end syntaxError;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Utilities.Strings.length| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.substring| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.repeat| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.compare| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.isEqual| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.count| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.find| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.findLast| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.replace| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.sort| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanToken| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanReal| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanInteger| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanBoolean| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanString| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanIdentifier| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanDelimiter| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.scanNoToken| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.syntaxError| image:: Modelica.Utilities.Files.listS.png
.. |Modelica.Utilities.Strings.Advanced| image:: Modelica.Utilities.Strings.AdvancedS.png
.. |image20| image:: Modelica.Utilities.Files.listS.png
.. |image21| image:: Modelica.Utilities.Files.listS.png
.. |image22| image:: Modelica.Utilities.Files.listS.png
.. |image23| image:: Modelica.Utilities.Files.listS.png
.. |image24| image:: Modelica.Utilities.Files.listS.png
.. |image25| image:: Modelica.Utilities.Files.listS.png
.. |image26| image:: Modelica.Utilities.Files.listS.png
.. |image27| image:: Modelica.Utilities.Files.listS.png
.. |image28| image:: Modelica.Utilities.Files.listS.png
.. |image29| image:: Modelica.Utilities.Files.listS.png
.. |image30| image:: Modelica.Utilities.Files.listS.png
.. |image31| image:: Modelica.Utilities.Files.listS.png
.. |image32| image:: Modelica.Utilities.Files.listS.png
.. |image33| image:: Modelica.Utilities.Files.listS.png
.. |image34| image:: Modelica.Utilities.Files.listS.png
.. |image35| image:: Modelica.Utilities.Files.listS.png
.. |image36| image:: Modelica.Utilities.Files.listS.png
.. |image37| image:: Modelica.Utilities.Files.listS.png
.. |image38| image:: Modelica.Utilities.Files.listS.png
.. |image39| image:: Modelica.Utilities.Strings.AdvancedS.png
.. |image40| image:: Modelica.Utilities.Strings.lengthI.png
.. |image41| image:: Modelica.Utilities.Strings.lengthI.png
.. |image42| image:: Modelica.Utilities.Strings.lengthI.png
.. |image43| image:: Modelica.Utilities.Strings.lengthI.png
.. |image44| image:: Modelica.Utilities.Strings.lengthI.png
.. |image45| image:: Modelica.Utilities.Strings.lengthI.png
.. |image46| image:: Modelica.Utilities.Strings.lengthI.png
.. |image47| image:: Modelica.Utilities.Strings.lengthI.png
.. |image48| image:: Modelica.Utilities.Strings.lengthI.png
.. |image49| image:: Modelica.Utilities.Strings.lengthI.png
.. |image50| image:: Modelica.Utilities.Strings.lengthI.png
.. |image51| image:: Modelica.Utilities.Strings.lengthI.png
.. |image52| image:: Modelica.Utilities.Strings.lengthI.png
.. |image53| image:: Modelica.Utilities.Strings.lengthI.png
.. |image54| image:: Modelica.Utilities.Strings.lengthI.png
.. |image55| image:: Modelica.Utilities.Strings.lengthI.png
.. |image56| image:: Modelica.Utilities.Strings.lengthI.png
.. |image57| image:: Modelica.Utilities.Strings.lengthI.png
.. |image58| image:: Modelica.Utilities.Strings.lengthI.png
