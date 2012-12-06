% Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices
% 
% 

[Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice).Choices
============================================================================================================================================================================================================

**Choices for Geometry**

Information
-----------

::

Choices to compute the "Geometry" record for a ThickEdgedOrifice.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                             Descrip
                                                                   tion
  ---------------------------------------------------------------- -------
  ![image3](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdge Circula
  dOrifice.Choices.circularS.png)                                  r
  [circular](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdg cross
  edOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifi section
  ces.ThickEdgedOrifice.Choices.circular)                          

  ![image4](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdge Rectang
  dOrifice.Choices.rectangularS.png)                               ular
  [rectangular](Modelica_Fluid_Fittings_BaseClasses_Orifices_Thick cross
  EdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Or section
  ifices.ThickEdgedOrifice.Choices.rectangular)                    

  ![image5](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdge General
  dOrifice.Choices.generalS.png)                                   cross
  [general](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdge section
  dOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orific 
  es.ThickEdgedOrifice.Choices.general)                            
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.circularI.png) [Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices).circular
=====================================================================================================================================================================================================================================================================================================================================

**Circular cross section**

Information
-----------

::

Function that returns the ThickEdgedOrifice.Geometry for a circular
cross section of the orifice.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                               Name     Defaul Description
                                              t      
  ---------------------------------- -------- ------ ----------------------
  [Diameter](Modelica_SIunits.html#M diameter        Inner diameter of
  odelica.SIunits.Diameter)                          circular orifice [m]

  [Diameter](Modelica_SIunits.html#M venaDiam        Diameter of vena
  odelica.SIunits.Diameter)          eter            contraction [m]

  [Length](Modelica_SIunits.html#Mod venaLeng        Length of vena
  elica.SIunits.Length)              th              contraction [m]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- ---------------
  [Geometry](Modelica_Fluid_Fittings_BaseClasses_Orifi geom Geometry of
  ces_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.B etry circular thick
  aseClasses.Orifices.ThickEdgedOrifice.Geometry)           edged orifice
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function circular "Circular cross section"
        import SI = Modelica.SIunits;
        import Modelica.Constants.pi;

      input SI.Diameter diameter "Inner diameter of circular orifice";
      input SI.Diameter venaDiameter "Diameter of vena contraction";
      input SI.Length venaLength "Length of vena contraction";

       output ThickEdgedOrifice.Geometry geometry 
        "Geometry of circular thick edged orifice";
    algorithm 
       geometry.crossArea := diameter^2*pi/4;
       geometry.perimeter := pi*diameter;
       geometry.venaCrossArea := venaDiameter^2*pi/4;
       geometry.venaPerimeter := pi*venaDiameter;
       geometry.venaLength := venaLength;
    end circular;

* * * * *

![image7](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangularI.png) [Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices).rectangular
===========================================================================================================================================================================================================================================================================================================================================

**Rectangular cross section**

Information
-----------

::

Function that returns the ThickEdgedOrifice.Geometry for a rectangular
cross section of the orifice.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name     Defaul Description
                                             t      
  --------------------------------- -------- ------ -----------------------
  [Length](Modelica_SIunits.html#Mo width           Inner width of
  delica.SIunits.Length)                            rectangular orifice [m]

  [Length](Modelica_SIunits.html#Mo height          Inner height of
  delica.SIunits.Length)                            rectangular orifice [m]

  [Length](Modelica_SIunits.html#Mo venaWidt        Width of vena
  delica.SIunits.Length)            h               contraction [m]

  [Length](Modelica_SIunits.html#Mo venaHeig        Height of vena
  delica.SIunits.Length)            ht              contraction [m]

  [Length](Modelica_SIunits.html#Mo venaLeng        Length of vena
  delica.SIunits.Length)            th              contraction [m]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- ---------------
  [Geometry](Modelica_Fluid_Fittings_BaseClasses_Orifi geom Geometry of
  ces_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.B etry circular thick
  aseClasses.Orifices.ThickEdgedOrifice.Geometry)           edged orifice
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rectangular "Rectangular cross section"
        import SI = Modelica.SIunits;
        import Modelica.Constants.pi;

      input SI.Length width "Inner width of rectangular orifice";
      input SI.Length height "Inner height of rectangular orifice";
      input SI.Length venaWidth "Width of vena contraction";
      input SI.Length venaHeight "Height of vena contraction";
      input SI.Length venaLength "Length of vena contraction";

       output ThickEdgedOrifice.Geometry geometry 
        "Geometry of circular thick edged orifice";
    algorithm 
       geometry.crossArea := width*height;
       geometry.perimeter := 2*width + 2*height;
       geometry.venaCrossArea := venaWidth*venaHeight;
       geometry.venaPerimeter := 2*venaWidth + 2*venaHeight;
       geometry.venaLength := venaLength;
    end rectangular;

* * * * *

![image8](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.generalI.png) [Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices).general
===================================================================================================================================================================================================================================================================================================================================

**General cross section**

Information
-----------

::

Function that returns the ThickEdgedOrifice.Geometry for a general cross
section of the orifice.

::

Inputs
------

  --------------------------------------------------------------------------
  Type                            Name      Defaul Description
                                            t      
  ------------------------------- --------- ------ -------------------------
  [Area](Modelica_SIunits.html#Mo crossArea        Inner cross sectional
  delica.SIunits.Area)                             area [m2]

  [Length](Modelica_SIunits.html# perimeter        Inner perimeter [m]
  Modelica.SIunits.Length)                         

  [Area](Modelica_SIunits.html#Mo venaCross        Cross sectional area of
  delica.SIunits.Area)            Area             vena contraction [m2]

  [Length](Modelica_SIunits.html# venaPerim        Perimeter of vena
  Modelica.SIunits.Length)        eter             contraction [m]

  [Length](Modelica_SIunits.html# venaLengt        Length of vena
  Modelica.SIunits.Length)        h                contraction [m]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- ---------------
  [Geometry](Modelica_Fluid_Fittings_BaseClasses_Orifi geom Geometry of
  ces_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.B etry circular thick
  aseClasses.Orifices.ThickEdgedOrifice.Geometry)           edged orifice
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function general "General cross section"
        import SI = Modelica.SIunits;
        import Modelica.Constants.pi;

      input SI.Area crossArea "Inner cross sectional area";
      input SI.Length perimeter "Inner perimeter";

      input SI.Area venaCrossArea "Cross sectional area of vena contraction";
      input SI.Length venaPerimeter "Perimeter of vena contraction";
      input SI.Length venaLength "Length of vena contraction";

       output ThickEdgedOrifice.Geometry geometry 
        "Geometry of circular thick edged orifice";
    algorithm 
       geometry.crossArea := crossArea;
       geometry.perimeter := perimeter;
       geometry.venaCrossArea := venaCrossArea;
       geometry.venaPerimeter := venaPerimeter;
       geometry.venaLength := venaLength;
    end general;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
