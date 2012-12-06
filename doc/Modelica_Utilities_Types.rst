========================
Modelica.Utilities.Types
========================

`Modelica.Utilities <Modelica_Utilities.html#Modelica.Utilities>`_.Types
------------------------------------------------------------------------

**Type definitions used in package Modelica.Utilities**

Information
~~~~~~~~~~~

::

This package contains type definitions used in Modelica.Utilities.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| Name                                                                                                                      | Description                                       |
+===========================================================================================================================+===================================================+
| `Compare <Modelica_Utilities_Types.html#Modelica.Utilities.Types.Compare>`_                                               | Enumeration defining comparision of two strings   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| `FileType <Modelica_Utilities_Types.html#Modelica.Utilities.Types.FileType>`_                                             | Enumeration defining the type of a file           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| `TokenType <Modelica_Utilities_Types.html#Modelica.Utilities.Types.TokenType>`_                                           | Enumeration defining the token type               |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| |image1| `TokenValue <Modelica_Utilities_Types.html#Modelica.Utilities.Types.TokenValue>`_                                | Value of token                                    |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      type Compare = enumeration(
        Less "String 1 is lexicographically less than string 2",
        Equal "String 1 is identical to string 2",
        Greater "String 1 is lexicographically greater than string 2") 
      "Enumeration defining comparision of two strings";

::

      type FileType = enumeration(
        NoFile "No file exists",
        RegularFile "Regular file",
        Directory "Directory",
        SpecialFile "Special file (pipe, FIFO, device, etc.)") 
      "Enumeration defining the type of a file";

::

      type TokenType = enumeration(
        RealToken,
        IntegerToken,
        BooleanToken,
        StringToken,
        IdentifierToken,
        DelimiterToken,
        NoToken) "Enumeration defining the token type";

--------------

|image2| `Modelica.Utilities.Types <Modelica_Utilities_Types.html#Modelica.Utilities.Types>`_.TokenValue
--------------------------------------------------------------------------------------------------------

**Value of token**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record TokenValue "Value of token"
       extends Modelica.Icons.Record;
       TokenType tokenType "Type of token";
       Real real "Value if tokenType == TokenType.RealToken";
       Integer integer "Value if tokenType == TokenType.IntegerToken";
       Boolean boolean "Value if tokenType == TokenType.BooleanToken";
       String string 
        "Value if tokenType == TokenType.StringToken/IdentifierToken/DelimiterToken";
    end TokenValue;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Utilities.Types.TokenValue| image:: Modelica.Utilities.Types.TokenValueS.png
.. |image1| image:: Modelica.Utilities.Types.TokenValueS.png
.. |image2| image:: Modelica.Utilities.Types.TokenValueI.png
