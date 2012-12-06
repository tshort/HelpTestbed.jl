===========================
Modelica.Utilities.Examples
===========================

`Modelica.Utilities <Modelica_Utilities.html#Modelica.Utilities>`_.Examples
---------------------------------------------------------------------------

**Examples to demonstrate the usage of package Modelica.Utilities**

Information
~~~~~~~~~~~

::

This package contains quite involved examples that demonstrate how to
use the functions of package Modelica.Utilities. In particular the
following examples are present.

-  Function
   `calculator <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.calculator>`_
   is an interpreter to evaluate expressions consisting of
   +,-,\*,/,(),sin(), cos(), tan(), sqrt(), pi. For example:
   calculator("1.5\*sin(pi/6)");
-  Function
   `expression <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.expression>`_
   is the basic function used in "calculator" to evaluate an expression.
   It is useful if the expression interpreter is used in a larger scan
   operation (such as readRealParameter below).
-  Function
   `readRealParameter <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.readRealParameter>`_
   reads the value of a parameter from file, given the file and the
   parameter name. The value on file is interpreted with the
   Examples.expression function and can therefore be an expression.
-  Model
   `readRealParameterModel <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.readRealParameterModel>`_
   is a test model to demonstrate the usage of "readRealParameter". The
   model contains 3 parameters that are read from file
   "Modelica.Utilities/data/Examples\_readRealParameters.txt".

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                   | Description                                                                                                                                         |
+========================================================================================================================================================================+=====================================================================================================================================================+
| |image4| `calculator <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.calculator>`_                                                                       | Interpreter to evaluate simple expressions consisting of +,-,\*,/,(),sin(), cos(), tan(), sqrt(), pi                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image5| `expression <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.expression>`_                                                                       | Expression interpreter that returns with the position after the expression (expression may consist of +,-,\*,/,(),sin(), cos(), tan(), sqrt(), pi   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image6| `readRealParameter <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.readRealParameter>`_                                                         | Read the value of a Real parameter from file                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image7| `readRealParameterModel <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples.readRealParameterModel>`_                                               | Demonstrate usage of Examples.readRealParameter/.expression                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image8| `Modelica.Utilities.Examples <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples>`_.calculator
-----------------------------------------------------------------------------------------------------------------

**Interpreter to evaluate simple expressions consisting of
+,-,\*,/,(),sin(), cos(), tan(), sqrt(), pi**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        result = calculator(expression);

Description
^^^^^^^^^^^

This function demonstrates how a simple expression calculator can be
implemented in form of a recursive decent parser using basically the
Strings.scanToken(..) and Strings.scanDelimiter(..) function.

The following operations are supported (pi=3.14.. is a predefined
constant):

::

       +, -
       *, /
       (expression)
       sin(expression)
       cos(expression)
       tan(expression)
       sqrt(expression)
       pi

Example
^^^^^^^

    ::

          calculator("2+3*(4-1)");  // returns 11
          calculator("sin(pi/6)");  // returns 0.5

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+----------+-----------+--------------------------------+
| Type     | Name     | Default   | Description                    |
+==========+==========+===========+================================+
| String   | string   |           | Expression that is evaluated   |
+----------+----------+-----------+--------------------------------+

Outputs
~~~~~~~

+--------+----------+-----------------------+
| Type   | Name     | Description           |
+========+==========+=======================+
| Real   | result   | Value of expression   |
+--------+----------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function calculator 
      "Interpreter to evaluate simple expressions consisting of +,-,*,/,(),sin(), cos(), tan(), sqrt(), pi"
      import Modelica.Utilities.Strings.*;
      extends Modelica.Icons.Function;
      input String string "Expression that is evaluated";
      output Real result "Value of expression";

    protected 
      Integer nextIndex;
    algorithm 
      (result,nextIndex) := expression(string, 1);
      Strings.scanNoToken(string,nextIndex);

    end calculator;

--------------

|image9| `Modelica.Utilities.Examples <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples>`_.expression
-----------------------------------------------------------------------------------------------------------------

**Expression interpreter that returns with the position after the
expression (expression may consist of +,-,\*,/,(),sin(), cos(), tan(),
sqrt(), pi**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                     result = expression(string);
        (result, nextIndex) = expression(string, startIndex=1, message="");

Description
^^^^^^^^^^^

This function is nearly the same as Examples.**calculator**. The
essential difference is that function "expression" might be used in
other parsing operations: After the expression is parsed and evaluated,
the function returns with the value of the expression as well as the
position of the character directly after the expression.

This function demonstrates how a simple expression calculator can be
implemented in form of a recursive decent parser using basically the
Strings.scanToken(..) and scanDelimiters(..) function. There are 2 local
functions (term, primary) that implement the corresponding part of the
grammar.

The following operations are supported (pi=3.14.. is a predefined
constant):

::

       +, -
       *, /
       (expression)
       sin(expression)
       cos(expression)
       tan(expression)
       sqrt(expression)
       pi

The optional argument "startIndex" defines at which position scanning of
the expression starts.

In case of error, the optional argument "message" is appended to the
error message, in order to give additional information where the error
occured.

This function parses the following grammaer

::

      expression: [ add_op ] term { add_op term }
      add_op    : "+" | "-"
      term      : primary { mul_op primary }
      mul_op    : "*" | "/"
      primary   : UNSIGNED_NUMBER
                  | pi
                  | ( expression )
                  | functionName( expression )
      function  :   sin
                  | cos
                  | tan
                  | sqrt

Note, in Examples.readRealParameter it is shown, how the expression
function can be used as part of another scan operation.

Example
^^^^^^^

    ::

          expression("2+3*(4-1)");  // returns 11
          expression("sin(pi/6)");  // returns 0.5

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------------+-----------+-----------------------------------------------------------+
| Type      | Name         | Default   | Description                                               |
+===========+==============+===========+===========================================================+
| String    | string       |           | Expression that is evaluated                              |
+-----------+--------------+-----------+-----------------------------------------------------------+
| Integer   | startIndex   | 1         | Start scanning of expression at character startIndex      |
+-----------+--------------+-----------+-----------------------------------------------------------+
| String    | message      | ""        | Message used in error message if scan is not successful   |
+-----------+--------------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------+--------------------------------------+
| Type      | Name        | Description                          |
+===========+=============+======================================+
| Real      | result      | Value of expression                  |
+-----------+-------------+--------------------------------------+
| Integer   | nextIndex   | Index after the scanned expression   |
+-----------+-------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function expression 
      "Expression interpreter that returns with the position after the expression (expression may consist of +,-,*,/,(),sin(), cos(), tan(), sqrt(), pi"
      import Modelica.Utilities.Types;
      import Modelica.Utilities.Strings;
      import Modelica.Math;
      import Modelica.Constants;

      extends Modelica.Icons.Function;
      input String string "Expression that is evaluated";
      input Integer startIndex=1 
        "Start scanning of expression at character startIndex";
      input String message="" 
        "Message used in error message if scan is not successful";
      output Real result "Value of expression";
      output Integer nextIndex "Index after the scanned expression";

    protected 
    function term "Evaluate term of an expression"
      extends Modelica.Icons.Function;
      input String string;
      input Integer startIndex;
      input String message="";
      output Real result;
      output Integer nextIndex;
      protected 
      Real result2;
      Boolean scanning=true;
      String opString;
    algorithm 
      // scan for "primary * primary" or "primary / primary"
      (result, nextIndex) := primary(string, startIndex, message);
      while scanning loop
        (opString, nextIndex) := Strings.scanDelimiter(
                                        string, nextIndex, {"*","/",""}, message);
        if opString == "" then
           scanning := false;
        else
           (result2, nextIndex) := primary(string, nextIndex, message);
           result := if opString == "*" then result*result2 else result/result2;
        end if;
      end while;
    end term;

    function primary "Evaluate primary of an expression"
      extends Modelica.Icons.Function;

      input String string;
      input Integer startIndex;
      input String message="";
      output Real result;
      output Integer nextIndex;
      protected 
      Types.TokenValue token;
      Real result2;
      String delimiter;
      String functionName;
      Real pi = Constants.pi;
    algorithm 
      (token,nextIndex) := Strings.scanToken(string, startIndex,unsigned=true);
      if token.tokenType == Types.TokenType.DelimiterToken and token.string == "(" then
        (result,nextIndex) := expression(string, nextIndex,message);
        (delimiter,nextIndex) := Strings.scanDelimiter(string,nextIndex,{")"}, message);

      elseif token.tokenType == Types.TokenType.RealToken then
        result := token.real;

      elseif token.tokenType == Types.TokenType.IntegerToken then
        result := token.integer;

      elseif token.tokenType == Types.TokenType.IdentifierToken then
        if token.string == "pi" then
           result := pi;
        else
           functionName := token.string;
           (delimiter,nextIndex) := Strings.scanDelimiter(string,nextIndex,{"("}, message);
           (result,nextIndex)    := expression(string, nextIndex, message);
           (delimiter,nextIndex) := Strings.scanDelimiter(string,nextIndex,{")"}, message);
           if functionName == "sin" then
             result := Math.sin(result);
           elseif functionName == "cos" then
             result := Math.cos(result);
           elseif functionName == "tan" then
             result := Math.tan(result);
           elseif functionName == "sqrt" then
             if result < 0.0 then
                Strings.syntaxError(string, startIndex, "Argument of call \"sqrt(" + String(result) + ")\" is negative.\n" +
                            "Imaginary numbers are not supported by the calculator.\n" + message);
             end if;
             result := sqrt(result);
           else
             Strings.syntaxError(string, startIndex, "Function \"" + functionName + "\" is unknown (not supported)\n" +
                                             message);
           end if;
        end if;

      else
        Strings.syntaxError(string, startIndex, "Invalid primary of expression.\n" + message);
      end if;
    end primary;

      Real result2;
      String signOfNumber;
      Boolean scanning=true;
      String opString;
    algorithm 
      // scan for optional leading "+" or "-" sign
      (signOfNumber, nextIndex) :=Strings.scanDelimiter(
                                       string, startIndex, {"+","-",""}, message);

      // scan for "term + term" or "term - term"
      (result, nextIndex) := term(string, nextIndex, message);
      if signOfNumber == "-" then
         result := -result;
      end if;

      while scanning loop
        (opString, nextIndex) := Strings.scanDelimiter(
                                        string, nextIndex, {"+","-",""}, message);
        if opString == "" then
           scanning := false;
        else
           (result2, nextIndex) := term(string, nextIndex, message);
           result := if opString == "+" then result+result2 else result-result2;
        end if;
      end while;

    end expression;

--------------

|image10| `Modelica.Utilities.Examples <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples>`_.readRealParameter
-------------------------------------------------------------------------------------------------------------------------

**Read the value of a Real parameter from file**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        result = readRealParameter(fileName, name);

Description
^^^^^^^^^^^

This function demonstrates how a function can be implemented that reads
the value of a parameter from file. The function performs the following
actions:

#. It opens file "fileName" and reads the lines of the file.
#. In every line, Modelica line comments ("// ... end-of-line") are
   skipped
#. If a line consists of "name = expression" and the "name" in this line
   is identical to the second argument "name" of the function call, the
   expression calculator Examples.expression is used to evaluate the
   expression after the "=" character. The expression can optionally be
   terminated with a ";".
#. The result of the expression evaluation is returned as the value of
   the parameter "name".

Example
^^^^^^^

On file "test.txt" the following lines might be present:

    ::

        // Motor data
        J        = 2.3     // inertia
        w_rel0   = 1.5*2;  // relative angular velocity
        phi_rel0 = pi/3

The function returns the value "3.0" when called as:

    ::

        readRealParameter("test.txt", "w_rel0")

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+----------+------------+-----------+---------------------+
| Type     | Name       | Default   | Description         |
+==========+============+===========+=====================+
| String   | fileName   |           | Name of file        |
+----------+------------+-----------+---------------------+
| String   | name       |           | Name of parameter   |
+----------+------------+-----------+---------------------+

Outputs
~~~~~~~

+--------+----------+-------------------------------------+
| Type   | Name     | Description                         |
+========+==========+=====================================+
| Real   | result   | Actual value of parameter on file   |
+--------+----------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function readRealParameter 
      "Read the value of a Real parameter from file"
      import Modelica.Utilities.*;
      extends Modelica.Icons.Function;
      input String fileName "Name of file";
      input String name "Name of parameter";
      output Real result "Actual value of parameter on file";

    protected 
      String line;
      String identifier;
      String delimiter;
      Integer nextIndex;
      Integer iline=1;
      Types.TokenValue token;
      String message = "in file \"" + fileName + "\" on line ";
      String message2;
      Boolean found = false;
      Boolean endOfFile=false;
    algorithm 
     (line, endOfFile) :=Streams.readLine(fileName, iline);

      while not found and not endOfFile loop
        (token, nextIndex) := Strings.scanToken(line);
         if token.tokenType == Types.TokenType.NoToken then
            // skip line
            iline := iline + 1;
         elseif token.tokenType == Types.TokenType.IdentifierToken then
            if token.string == name then
               // name found, get value of "name = value;"
               message2 := message + String(iline);
               (delimiter,nextIndex) := Strings.scanDelimiter(line, nextIndex, {"="}, message2);
               (result,nextIndex)    := Examples.expression(line, nextIndex, message2);
               (delimiter,nextIndex) := Strings.scanDelimiter(line, nextIndex, {";", ""}, message2);
               Strings.scanNoToken(line, nextIndex, message2);
               found := true;
            else
               // wrong name, skip line
               iline := iline + 1;
            end if;
         else
            // wrong token
            Strings.syntaxError(line, nextIndex, "Expected identifier " + message + String(iline));
         end if;

         // read next line
         (line, endOfFile) :=Streams.readLine(fileName, iline);
      end while;

      if not found then
         Streams.error("Parameter \"" + name + "\" not found in file \"" + fileName + "\"");
      end if;

    end readRealParameter;

--------------

|image11| `Modelica.Utilities.Examples <Modelica_Utilities_Examples.html#Modelica.Utilities.Examples>`_.readRealParameterModel
------------------------------------------------------------------------------------------------------------------------------

**Demonstrate usage of Examples.readRealParameter/.expression**

Information
~~~~~~~~~~~

::

Model that shows the usage of Examples.readRealParameter and
Examples.expression. The model has 3 parameters and the values of these
parameters are read from a file.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+-------------+------------------------------------+-------------------------------------+
| Type                                                                          | Name        | Default                            | Description                         |
+===============================================================================+=============+====================================+=====================================+
| String                                                                        | file        | "Modelica/Resources/Data/Uti...    | File on which data is present       |
+-------------------------------------------------------------------------------+-------------+------------------------------------+-------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                   | J           | readRealParameter(file, "J")       | Inertia [kg.m2]                     |
+-------------------------------------------------------------------------------+-------------+------------------------------------+-------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                       | phi\_rel0   | readRealParameter(file, "phi...    | Relative angle [rad]                |
+-------------------------------------------------------------------------------+-------------+------------------------------------+-------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w\_rel0     | readRealParameter(file, "w\_r...   | Relative angular velocity [rad/s]   |
+-------------------------------------------------------------------------------+-------------+------------------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model readRealParameterModel 
      "Demonstrate usage of Examples.readRealParameter/.expression"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;

      parameter String file = "Modelica/Resources/Data/Utilities/Examples_readRealParameters.txt" 
        "File on which data is present";
      parameter SI.Inertia J =              readRealParameter(file, "J") "Inertia";
      parameter SI.Angle phi_rel0 =         readRealParameter(file, "phi_rel0") 
        "Relative angle";
      parameter SI.AngularVelocity w_rel0 = readRealParameter(file, "w_rel0") 
        "Relative angular velocity";

    end readRealParameterModel;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Utilities.Examples.calculator| image:: Modelica.Utilities.Examples.calculatorS.png
.. |Modelica.Utilities.Examples.expression| image:: Modelica.Utilities.Examples.calculatorS.png
.. |Modelica.Utilities.Examples.readRealParameter| image:: Modelica.Utilities.Examples.calculatorS.png
.. |Modelica.Utilities.Examples.readRealParameterModel| image:: Modelica.Utilities.Examples.readRealParameterModelS.png
.. |image4| image:: Modelica.Utilities.Examples.calculatorS.png
.. |image5| image:: Modelica.Utilities.Examples.calculatorS.png
.. |image6| image:: Modelica.Utilities.Examples.calculatorS.png
.. |image7| image:: Modelica.Utilities.Examples.readRealParameterModelS.png
.. |image8| image:: Modelica.Utilities.Examples.calculatorI.png
.. |image9| image:: Modelica.Utilities.Examples.calculatorI.png
.. |image10| image:: Modelica.Utilities.Examples.calculatorI.png
.. |image11| image:: Modelica.Utilities.Examples.readRealParameterModelI.png
