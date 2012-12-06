% Modelica.Electrical.Spice3.Internal.Model
% 
% 

[Modelica.Electrical.Spice3.Internal](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal).Model
=========================================================================================================================

**Device Temperature**

Information
-----------

::

The package Model contains the record Model that includes the device
temperature.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                           Descripti
                                                                 on
  -------------------------------------------------------------- ---------
  ![image1](Modelica.Electrical.Spice3.Internal.Model.ModelS.png Device
  )                                                              Temperatu
  [Model](Modelica_Electrical_Spice3_Internal_Model.html#Modelic re
  a.Electrical.Spice3.Internal.Model.Model)                      
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.Spice3.Internal.Model](Modelica_Electrical_Spice3_Internal_Model.html#Modelica.Electrical.Spice3.Internal.Model).Model
===========================================================================================================================================

**Device Temperature**

Information
-----------

::

The record Model includes the device temperture which has a default
value of 27°C.

::

Modelica definition
-------------------

    record Model "Device Temperature"

      Modelica.SIunits.Temp_K m_dTemp( start = SpiceConstants.CKTnomTemp) 
        "TEMP, Device Temperature";
    end Model;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:47 2010.
