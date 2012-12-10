% Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps
% 
% 

[Modelica.Mechanics.MultiBody.Visualizers.Colors](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors).ColorMaps
=================================================================================================================================================================

**Library of functions returning color maps**

Information
-----------

::

This package contains functions that return color maps. A color map is a
Real[:,3] array where every row represents a color. Currently the
following color maps are returned from the respective function:

> ![image0](../Resources/Images/MultiBody/Visualizers/Colors/ColorMaps.png)

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                          Descriptio
                                                                n
  ------------------------------------------------------------- ----------
  ![image8](Modelica.Mechanics.MultiBody.Visualizers.Colors.col Returns
  orMapToSvgS.png)                                              the "jet"
  [jet](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMa color map
  ps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Color 
  Maps.jet)                                                     

  ![image9](Modelica.Mechanics.MultiBody.Visualizers.Colors.col Returns
  orMapToSvgS.png)                                              the "hot"
  [hot](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMa color map
  ps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Color 
  Maps.hot)                                                     

  ![image10](Modelica.Mechanics.MultiBody.Visualizers.Colors.co Returns
  lorMapToSvgS.png)                                             the "gray"
  [gray](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorM color map
  aps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Colo 
  rMaps.gray)                                                   

  ![image11](Modelica.Mechanics.MultiBody.Visualizers.Colors.co Returns
  lorMapToSvgS.png)                                             the
  [spring](Modelica_Mechanics_MultiBody_Visualizers_Colors_Colo "spring"
  rMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Co color map
  lorMaps.spring)                                               

  ![image12](Modelica.Mechanics.MultiBody.Visualizers.Colors.co Returns
  lorMapToSvgS.png)                                             the
  [summer](Modelica_Mechanics_MultiBody_Visualizers_Colors_Colo "summer"
  rMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Co color map
  lorMaps.summer)                                               

  ![image13](Modelica.Mechanics.MultiBody.Visualizers.Colors.co Returns
  lorMapToSvgS.png)                                             the
  [autumn](Modelica_Mechanics_MultiBody_Visualizers_Colors_Colo "autumn"
  rMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Co color map
  lorMaps.autumn)                                               

  ![image14](Modelica.Mechanics.MultiBody.Visualizers.Colors.co Returns
  lorMapToSvgS.png)                                             the
  [winter](Modelica_Mechanics_MultiBody_Visualizers_Colors_Colo "winter"
  rMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.Co color map
  lorMaps.winter)                                               
  ------------------------------------------------------------------------

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).jet
=========================================================================================================================================================================================

**Returns the "jet" color map**

Information
-----------

::

### Syntax

>     ColorMaps.jet();
>     ColorMaps.jet(n_colors=64);

### Description

This function returns the color map "jet." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "jet" color map:

> ![image15](../Resources/Images/MultiBody/Visualizers/Colors/jet.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function jet "Returns the \"jet\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    protected 
       Real a=ceil(n_colors/4);
       Real d=1/a;
       Real v1[:]=if d >= 0.5 then {1} else if d >= 0.25 then  1-d:d:1 else 0.5+d:d:1;
       Real v2[:]=0+d:d:1;
       Real v3[:]=1-d:-d:0;
       Real v4[:]=1-d:-d:0.5;
       Real cm[integer(a)*4,3];
    algorithm 
       cm:=255*[zeros(size(v1,1)),zeros(size(v1,1)),  v1;
                zeros(size(v2,1)), v2,  fill(1., size(v2,1));
                v2,              fill(1, size(v2,1)), v3;
                fill(1, size(v3,1)),v3, fill(0.,size(v3,1));
                v4, fill(0,size(v4,1)),fill(0.,size(v4,1))];
       colorMap:=cm[1:n_colors,:];

    end jet;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).hot
=========================================================================================================================================================================================

**Returns the "hot" color map**

Information
-----------

::

### Syntax

>     ColorMaps.hot();
>     ColorMaps.hot(n_colors=64);

### Description

This function returns the color map "hot." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "hot" color map:

> ![image16](../Resources/Images/MultiBody/Visualizers/Colors/hot.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function hot "Returns the \"hot\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    protected 
       Real a=ceil(n_colors/3);
       Real d=1/a;
       Real v1[:]=0+d:d:1;
       Real cm[integer(a)*3,3];
    algorithm 
     cm := 255*[v1, zeros(size(v1, 1)),zeros(size(v1, 1));
                              fill(1., size(v1, 1)), v1,zeros(size(v1, 1));
                              fill(1., size(v1, 1)),fill(1., size(v1, 1)),v1];
     colorMap:=cm[1:n_colors,:];

    end hot;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).gray
==========================================================================================================================================================================================

**Returns the "gray" color map**

Information
-----------

::

### Syntax

>     ColorMaps.gray();
>     ColorMaps.gray(n_colors=64);

### Description

This function returns the color map "gray." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "gray" color map:

> ![image17](../Resources/Images/MultiBody/Visualizers/Colors/gray.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function gray "Returns the \"gray\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    algorithm 
      if n_colors > 1 then
        colorMap := 255*[linspace(0,1.,n_colors),linspace(0,1.,n_colors),linspace(0,1.,n_colors)];
      else
        colorMap:=[0,0,0];
       end if;

    end gray;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).spring
============================================================================================================================================================================================

**Returns the "spring" color map**

Information
-----------

::

### Syntax

>     ColorMaps.spring();
>     ColorMaps.spring(n_colors=64);

### Description

This function returns the color map "spring." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "spring" color map:

> ![image18](../Resources/Images/MultiBody/Visualizers/Colors/spring.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function spring "Returns the \"spring\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    algorithm 
      if n_colors > 1 then
         colorMap := 255*[fill(1,n_colors),linspace(0,1.,n_colors),linspace(1,0,n_colors)];
       else
        colorMap:=255*[1,0,1];
       end if;

    end spring;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).summer
============================================================================================================================================================================================

**Returns the "summer" color map**

Information
-----------

::

### Syntax

>     ColorMaps.summer();
>     ColorMaps.summer(n_colors=64);

### Description

This function returns the color map "summer." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "summer" color map:

> ![image19](../Resources/Images/MultiBody/Visualizers/Colors/summer.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function summer "Returns the \"summer\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    algorithm 
      if n_colors > 1 then
         colorMap := 255*[linspace(0,1.,n_colors),linspace(0.5,1.,n_colors),fill(0.4,n_colors)];
       else
        colorMap:=255*[0,0.5,0.4];
       end if;

    end summer;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).autumn
============================================================================================================================================================================================

**Returns the "autumn" color map**

Information
-----------

::

### Syntax

>     ColorMaps.autumn();
>     ColorMaps.autumn(n_colors=64);

### Description

This function returns the color map "autumn." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "autumn" color map:

> ![image20](../Resources/Images/MultiBody/Visualizers/Colors/autumn.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function autumn "Returns the \"autumn\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    algorithm 
      if n_colors > 1 then
         colorMap := 255*[fill(1,n_colors),linspace(0,1.,n_colors),zeros(n_colors)];
       else
        colorMap:=255*[1,0,0];
       end if;

    end autumn;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).winter
============================================================================================================================================================================================

**Returns the "winter" color map**

Information
-----------

::

### Syntax

>     ColorMaps.winter();
>     ColorMaps.winter(n_colors=64);

### Description

This function returns the color map "winter." A color map is a Real[:,3]
array where every row represents a color. With the optional argument
"n\_colors" the number of rows of the returned array can be defined. The
default value is "n\_colors=64" (it is usually best if n\_colors is a
multiple of 4). Image of the "winter" color map:

> ![image21](../Resources/Images/MultiBody/Visualizers/Colors/winter.png)

### See also

[ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps),
[colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg),
[scalarToColor](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialColorMap](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap)
(Interface for a function returning a color map).

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    function winter "Returns the \"winter\" color map"
    extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
    algorithm 
      if n_colors > 1 then
         colorMap := 255*[zeros(n_colors),linspace(0,1,n_colors),linspace(1,0.5,n_colors)];
       else
        colorMap:=[0,0,255];
       end if;

    end winter;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
