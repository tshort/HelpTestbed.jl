% Modelica.Utilities.Strings.Advanced
% 
% 

[Modelica.Utilities.Strings](Modelica_Utilities_Strings.html#Modelica.Utilities.Strings).Advanced
=================================================================================================

**Advanced scanning functions**

Information
-----------

::

### Library content

Package **Strings.Advanced** contains basic scanning functions. These
functions should be **not called** directly, because it is much simpler
to utilize the higher level functions "Strings.scanXXX". The functions
of the "Strings.Advanced" library provide the basic interface in order
to implement the higher level functions in package "Strings".

Library "Advanced" provides the following functions:

    (nextIndex, realNumber)    = scanReal        (string, startIndex, unsigned=false);
    (nextIndex, integerNumber) = scanInteger     (string, startIndex, unsigned=false);
    (nextIndex, string2)       = scanString      (string, startIndex);
    (nextIndex, identifier)    = scanIdentifier  (string, startIndex);
     nextIndex                 = skipWhiteSpace  (string, startIndex);
     nextIndex                 = skipLineComments(string, startIndex);

All functions perform the following actions:

1.  Scanning starts at character position "startIndex" of "string"
    (startIndex has a default of 1).
2.  First, white space is skipped, such as blanks (" "), tabs ("\\t"),
    or newline ("\\n")
3.  Afterwards, the required token is scanned.
4.  If successful, on return nextIndex = index of character directly
    after the found token and the token value is returned as second
    output argument. If not successful, on return nextIndex =
    startIndex.

The following additional rules apply for the scanning:

-   Function
    [scanReal](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced.scanReal):
    Scans a full number including one optional leading "+" or "-" (if
    unsigned=false) according to the Modelica grammar. For example,
    "+1.23e-5", "0.123" are Real numbers, but ".1" is not. Note, an
    Integer number, such as "123" is also treated as a Real number.
-   Function
    [scanInteger](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced.scanInteger):
    Scans an Integer number including one optional leading "+" or "-"
    (if unsigned=false) according to the Modelica (and C/C++) grammar.
    For example, "+123", "20" are Integer numbers. Note, a Real number,
    such as "123.4" is not an Integer and scanInteger returns nextIndex
    = startIndex.
-   Function
    [scanString](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced.scanString):
    Scans a String according to the Modelica (and C/C++) grammar, e.g.,
    "This is a "string"" is a valid string token.
-   Function
    [scanIdentifier](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced.scanIdentifier):
    Scans a Modelica identifier, i.e., the identifier starts either with
    a letter, followed by letters, digits or "\_". For example,
    "w\_rel", "T12".
-   Function
    [skipLineComments](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced.skipLineComments)
    Skips white space and Modelica (C/C++) line comments iteratively. A
    line comment starts with "//" and ends either with an end-of-line
    ("\\n") or the end of the "string".

::

Package Content
---------------

  -------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ ------------
  ![image6](Modelica.Utilities.Strings.Advanced.scanRealS.png) Scans a
  [scanReal](Modelica_Utilities_Strings_Advanced.html#Modelica signed real
  .Utilities.Strings.Advanced.scanReal)                        number

  ![image7](Modelica.Utilities.Strings.Advanced.scanRealS.png) Scans signed
  [scanInteger](Modelica_Utilities_Strings_Advanced.html#Model integer
  ica.Utilities.Strings.Advanced.scanInteger)                  number

  ![image8](Modelica.Utilities.Strings.Advanced.scanRealS.png) Scan string
  [scanString](Modelica_Utilities_Strings_Advanced.html#Modeli 
  ca.Utilities.Strings.Advanced.scanString)                    

  ![image9](Modelica.Utilities.Strings.Advanced.scanRealS.png) Scans simple
  [scanIdentifier](Modelica_Utilities_Strings_Advanced.html#Mo identifiers
  delica.Utilities.Strings.Advanced.scanIdentifier)            

  ![image10](Modelica.Utilities.Strings.Advanced.scanRealS.png Scans white
  )                                                            space
  [skipWhiteSpace](Modelica_Utilities_Strings_Advanced.html#Mo 
  delica.Utilities.Strings.Advanced.skipWhiteSpace)            

  ![image11](Modelica.Utilities.Strings.Advanced.scanRealS.png Scans
  )                                                            comments and
  [skipLineComments](Modelica_Utilities_Strings_Advanced.html# white space
  Modelica.Utilities.Strings.Advanced.skipLineComments)        
  -------------------------------------------------------------------------

* * * * *

![image12](Modelica.Utilities.Strings.Advanced.scanRealI.png) [Modelica.Utilities.Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).scanReal
==========================================================================================================================================================================================

**Scans a signed real number**

Information
-----------

::

### Syntax

>     (nextIndex, realNumber) = scanReal(string, startIndex=1, unsigned=false);

### Description

Starts scanning of "string" at position "startIndex". First skips white
space and scans afterwards a number of type Real with an optional sign
according to the Modelica grammar:

    real     ::= [sign] unsigned [fraction] [exponent]
    sign     ::= '+' | '-'
    unsigned ::= digit [unsigned]
    fraction ::= '.' [unsigned]
    exponent ::= ('e' | 'E') [sign] unsigned
    digit    ::= '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'

If successful, the function returns nextIndex = index of character
directly after the found real number, as well as the value in the second
output argument.

If not successful, on return nextIndex = startIndex and the second
output argument is zero.

If the optional argument "unsigned" is **true**, the number shall not
start with '+' or '-'. The default of "unsigned" is **false**.

### See also

[Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type      Name        Default   Description
  --------- ----------- --------- -----------------------------------------
  String    string                

  Integer   startIndex  1         Index where scanning starts

  Boolean   unsigned    false     = true, if number shall not start with
                                  '+' or '-'
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name     Description
  ------- -------- --------------------------------------------------------
  Integer nextInde Index after the found token (success=true) or index at
          x        which scanning failed (success=false)

  Real    number   Value of Real number
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function scanReal "Scans a signed real number"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex(min=1)=1 "Index where scanning starts";
      input Boolean unsigned=false 
        "= true, if number shall not start with '+' or '-'";
      output Integer nextIndex 
        "Index after the found token (success=true) or index at which scanning failed (success=false)";
      output Real number "Value of Real number";
      external "C" ModelicaStrings_scanReal(string, startIndex, unsigned, nextIndex, number);
    end scanReal;

* * * * *

![image13](Modelica.Utilities.Strings.Advanced.scanRealI.png) [Modelica.Utilities.Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).scanInteger
=============================================================================================================================================================================================

**Scans signed integer number**

Information
-----------

::

### Syntax

>     (nextIndex, integerNumber) = scanInteger(string, startIndex=1, unsigned=false);

### Description

Starts scanning of "string" at position "startIndex". First skips white
space and scans afterwards a signed number of type Integer. An Integer
starts with an optional '+' or '-', immediately followed by a non-empty
sequence of digits.

If successful, the function returns nextIndex = index of character
directly after the found Integer number, as well as the Integer value in
the second output argument.

If not successful, on return nextIndex = startIndex and the second
output argument is zero.

Note, a Real number, such as "123.4", is not treated as an Integer
number and scanInteger will return nextIndex = startIndex in this case.

If the optional argument "unsigned" is **true**, the number shall not
start with '+' or '-'. The default of "unsigned" is **false**.

### See also

[Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type      Name        Default   Description
  --------- ----------- --------- -----------------------------------------
  String    string                

  Integer   startIndex  1         

  Boolean   unsigned    false     = true, if number shall not start with
                                  '+' or '-'
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name     Description
  ------- -------- --------------------------------------------------------
  Integer nextInde Index after the found token (success=true) or index at
          x        which scanning failed (success=false)

  Integer number   Value of Integer number
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function scanInteger "Scans signed integer number"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex(min=1)=1;
      input Boolean unsigned=false 
        "= true, if number shall not start with '+' or '-'";
      output Integer nextIndex 
        "Index after the found token (success=true) or index at which scanning failed (success=false)";
      output Integer number "Value of Integer number";
      external "C" ModelicaStrings_scanInteger(string, startIndex, unsigned, nextIndex, number);
    end scanInteger;

* * * * *

![image14](Modelica.Utilities.Strings.Advanced.scanRealI.png) [Modelica.Utilities.Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).scanString
============================================================================================================================================================================================

**Scan string**

Information
-----------

::

### Syntax

>     (nextIndex, string2) = scanString(string, startIndex=1);

### Description

Starts scanning of "string" at position "startIndex". First skips white
space and scans afterwards a string according to the Modelica grammar,
i.e., a string enclosed in double quotes.

If successful, the function returns nextIndex = index of character
directly after the found string, as well as the string value in the
second output argument.

If not successful, on return nextIndex = startIndex and the second
output argument is an empty string.

### See also

[Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name            Default      Description
  ------------ --------------- ------------ --------------------------------
  String       string                       
  Integer      startIndex      1            Index where scanning starts

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name     Description
  ------- -------- --------------------------------------------------------
  Integer nextInde Index after the found token (success=true) or index at
          x        which scanning failed (success=false)

  String  string2  Value of String token
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function scanString "Scan string"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex(min=1)=1 "Index where scanning starts";
      output Integer nextIndex 
        "Index after the found token (success=true) or index at which scanning failed (success=false)";
      output String string2 "Value of String token";
      external "C" ModelicaStrings_scanString(string, startIndex, nextIndex, string2);
    end scanString;

* * * * *

![image15](Modelica.Utilities.Strings.Advanced.scanRealI.png) [Modelica.Utilities.Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).scanIdentifier
================================================================================================================================================================================================

**Scans simple identifiers**

Information
-----------

::

### Syntax

>     (nextIndex, identifier) = scanIdentifier(string, startIndex=1);

### Description

Starts scanning of "string" at position "startIndex". First skips white
space and scans afterwards a Modelica identifier, i.e., a sequence of
characters starting with a letter ("a".."z" or "A".."Z") followed by
letters, digits or underscores ("\_").

If successful, the function returns nextIndex = index of character
directly after the found identifier, as well as the identifier as string
in the second output argument.

If not successful, on return nextIndex = startIndex and the second
output argument is an empty string.

### See also

[Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name            Default      Description
  ------------ --------------- ------------ --------------------------------
  String       string                       
  Integer      startIndex      1            Index where scanning starts

Outputs
-------

  ------------------------------------------------------------------------
  Type   Name     Description
  ------ -------- --------------------------------------------------------
  Intege nextInde Index after the found token (success=true) or index at
  r      x        which scanning failed (success=false)

  String identifi Value of identifier token
         er       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function scanIdentifier "Scans simple identifiers"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex(min=1)=1 "Index where scanning starts";
      output Integer nextIndex 
        "Index after the found token (success=true) or index at which scanning failed (success=false)";
      output String identifier "Value of identifier token";
      external "C" ModelicaStrings_scanIdentifier(string, startIndex, nextIndex, identifier);

    end scanIdentifier;

* * * * *

![image16](Modelica.Utilities.Strings.Advanced.scanRealI.png) [Modelica.Utilities.Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).skipWhiteSpace
================================================================================================================================================================================================

**Scans white space**

Information
-----------

::

### Syntax

>     nextIndex = skipWhiteSpace(string, startIndex);

### Description

Starts scanning of "string" at position "startIndex" and skips white
space. The function returns nextIndex = index of character of the first
non white space character.

### See also

[Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name            Default      Description
  ------------ --------------- ------------ ----------------
  String       string                       
  Integer      startIndex      1            

Outputs
-------

  Type         Name           Description
  ------------ -------------- ----------------
  Integer      nextIndex      

Modelica definition
-------------------

    function skipWhiteSpace "Scans white space"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex(min=1)=1;
      output Integer nextIndex;
      external "C" nextIndex = ModelicaStrings_skipWhiteSpace(string, startIndex);
    end skipWhiteSpace;

* * * * *

![image17](Modelica.Utilities.Strings.Advanced.scanRealI.png) [Modelica.Utilities.Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).skipLineComments
==================================================================================================================================================================================================

**Scans comments and white space**

Information
-----------

::

### Syntax

>     nextIndex = skipLineComments(string, startIndex);

### Description

Starts scanning of "string" at position "startIndex". First skips white
space and scans afterwards a Modelica (C/C++) line comment, i.e., a
sequence of characters that starts with "//" and ends with an
end-of-line "\\n" or with the end of the string. If end-of-line is
reached, the function continues to skip white space and scanning of line
comments until end-of-string is reached, or another token is detected.

If successful, the function returns nextIndex = index of character
directly after the found line comment.

If not successful, on return nextIndex = startIndex.

### See also

[Strings.Advanced](Modelica_Utilities_Strings_Advanced.html#Modelica.Utilities.Strings.Advanced).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name            Default      Description
  ------------ --------------- ------------ ----------------
  String       string                       
  Integer      startIndex      1            

Outputs
-------

  Type         Name           Description
  ------------ -------------- ----------------
  Integer      nextIndex      

Modelica definition
-------------------

    function skipLineComments "Scans comments and white space"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex(min=1)=1;
      output Integer nextIndex;
    protected 
      Integer lenString = length(string);
      Boolean scanning;
      Boolean lineComment;
    algorithm 
      nextIndex := startIndex;
      scanning := true;
      while scanning loop
         nextIndex := Advanced.skipWhiteSpace(string, nextIndex);
         if nextIndex+1 <= lenString then
            if substring(string,nextIndex,nextIndex+1) == "//" then
               // search end of line comment
               nextIndex := nextIndex + 2;
               if nextIndex <= lenString then
                  lineComment := true;
                  while lineComment loop
                     if substring(string,nextIndex,nextIndex) == "\n" then
                        lineComment := false;
                     end if;
                     nextIndex := nextIndex + 1;
                     if nextIndex > lenString then
                        lineComment := false;
                        scanning := false;
                     end if;
                  end while;
               else
                  scanning := false;
               end if;
            else
               scanning := false;
            end if;
         else
            scanning := false;
         end if;
      end while;
    end skipLineComments;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
