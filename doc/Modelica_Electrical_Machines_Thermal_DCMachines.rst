===============================================
Modelica.Electrical.Machines.Thermal.DCMachines
===============================================

`Modelica.Electrical.Machines.Thermal <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal>`_.DCMachines
-----------------------------------------------------------------------------------------------------------------------------------

**Thermal parts of DC machines**

Information
~~~~~~~~~~~

::

Thermal parts for DC machines

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| Name                                                                                                                                                                                                                   | Description                                                 |
+========================================================================================================================================================================================================================+=============================================================+
| |image4| `ThermalAmbientDCPM <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPM>`_                                                               | Thermal ambient for DC machine with permanent magnets       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image5| `ThermalAmbientDCEE <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEE>`_                                                               | Thermal ambient for DC machine with electrical excitation   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image6| `ThermalAmbientDCSE <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSE>`_                                                               | Thermal ambient for DC machine with series excitation       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image7| `ThermalAmbientDCCE <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE>`_                                                               | Thermal ambient for DC machine with compound excitation     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+

--------------

|image8| `Modelica.Electrical.Machines.Thermal.DCMachines <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines>`_.ThermalAmbientDCPM
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for DC machine with permanent magnets**

.. figure:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPM

   Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPM

Information
~~~~~~~~~~~

::

Thermal ambient for DC machines with permanent magnets to prescribe
winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines>`_
(Partial thermal ambient for DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ta                     |           | Temperature of armature [K]                                             |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tpm                    |           | Temperature of permanent magnet [K]                                     |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------+
| Type                                                                                        | Name               | Description                       |
+=============================================================================================+====================+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TArmature          | Temperature of armature           |
+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TPermanentMagnet   | Temperature of permanent magnet   |
+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientDCPM 
      "Thermal ambient for DC machine with permanent magnets"
      import Modelica;
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCPM
          thermalPort);
      parameter Modelica.SIunits.Temperature Tpm(start=TDefault) 
        "Temperature of permanent magnet";
      output Modelica.SIunits.HeatFlowRate Q_flowPermanentMagnet = temperaturePermanentMagnet.port.Q_flow 
        "Heat flow rate of permanent magnets";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowPermanentMagnet;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature
        temperaturePermanentMagnet;
      Modelica.Blocks.Sources.Constant constTpm(final k=Tpm) if not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput TPermanentMagnet if useTemperatureInputs 
        "Temperature of permanent magnet";
    equation 
      connect(temperaturePermanentMagnet.port, thermalPort.heatPortPermanentMagnet);
      connect(constTpm.y, temperaturePermanentMagnet.T);
      connect(TPermanentMagnet, temperaturePermanentMagnet.T);
    end ThermalAmbientDCPM;

--------------

|image9| `Modelica.Electrical.Machines.Thermal.DCMachines <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines>`_.ThermalAmbientDCEE
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for DC machine with electrical excitation**

.. figure:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEED.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEE

   Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEE

Information
~~~~~~~~~~~

::

Thermal ambient for DC machines with electrical (shunt) excitation to
prescribe winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines>`_
(Partial thermal ambient for DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ta                     |           | Temperature of armature [K]                                             |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Te                     |           | Temperature of (shunt) excitation [K]                                   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+---------------+-------------------------------------+
| Type                                                                                        | Name          | Description                         |
+=============================================================================================+===============+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TArmature     | Temperature of armature             |
+---------------------------------------------------------------------------------------------+---------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TExcitation   | Temperature of (shunt) excitation   |
+---------------------------------------------------------------------------------------------+---------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientDCEE 
      "Thermal ambient for DC machine with electrical excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCEE
          thermalPort);
      parameter Modelica.SIunits.Temperature Te(start=TDefault) 
        "Temperature of (shunt) excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowExcitation = temperatureExcitation.port.Q_flow 
        "Heat flow rate of (shunt) excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowExcitation;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureExcitation;
      Modelica.Blocks.Sources.Constant constTe(final k=Te) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput TExcitation if 
                                                  useTemperatureInputs 
        "Temperature of (shunt) excitation";
    equation 
      connect(constTe.y, temperatureExcitation.T);
      connect(TExcitation, temperatureExcitation.T);
      connect(temperatureExcitation.port, thermalPort.heatPortExcitation);
    end ThermalAmbientDCEE;

--------------

|image10| `Modelica.Electrical.Machines.Thermal.DCMachines <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines>`_.ThermalAmbientDCSE
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for DC machine with series excitation**

.. figure:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSED.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSE

   Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSE

Information
~~~~~~~~~~~

::

Thermal ambient for DC machines with serial excitation to prescribe
winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines>`_
(Partial thermal ambient for DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ta                     |           | Temperature of armature [K]                                             |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tse                    |           | Temperature of series excitation [K]                                    |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+-------------+------------------------------------+
| Type                                                                                        | Name        | Description                        |
+=============================================================================================+=============+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TArmature   | Temperature of armature            |
+---------------------------------------------------------------------------------------------+-------------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | T\_se       | Temperature of series excitation   |
+---------------------------------------------------------------------------------------------+-------------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientDCSE 
      "Thermal ambient for DC machine with series excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCSE
          thermalPort);
      parameter Modelica.SIunits.Temperature Tse(start=TDefault) 
        "Temperature of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowSeriesExcitation = temperatureSeriesExcitation.port.Q_flow 
        "Heat flow rate of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowSeriesExcitation;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureSeriesExcitation;
      Modelica.Blocks.Sources.Constant constTse(final k=Tse) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput T_se if useTemperatureInputs 
        "Temperature of series excitation";
    equation 
      connect(constTse.y, temperatureSeriesExcitation.T);
      connect(T_se, temperatureSeriesExcitation.T);
      connect(temperatureSeriesExcitation.port, thermalPort.heatPortSeriesExcitation);
    end ThermalAmbientDCSE;

--------------

|image11| `Modelica.Electrical.Machines.Thermal.DCMachines <Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines>`_.ThermalAmbientDCCE
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for DC machine with compound excitation**

.. figure:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCED.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE

   Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE

Information
~~~~~~~~~~~

::

Thermal ambient for DC machines with compound excitation to prescribe
winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines>`_
(Partial thermal ambient for DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ta                     |           | Temperature of armature [K]                                             |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Te                     |           | Temperature of (shunt) excitation [K]                                   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tse                    |           | Temperature of series excitation [K]                                    |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+-------------+-------------------------------------+
| Type                                                                                        | Name        | Description                         |
+=============================================================================================+=============+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TArmature   | Temperature of armature             |
+---------------------------------------------------------------------------------------------+-------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | T\_e        | Temperature of (shunt) excitation   |
+---------------------------------------------------------------------------------------------+-------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | T\_se       | Temperature of series excitation    |
+---------------------------------------------------------------------------------------------+-------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientDCCE 
      "Thermal ambient for DC machine with compound excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCCE
          thermalPort);
      parameter Modelica.SIunits.Temperature Te(start=TDefault) 
        "Temperature of (shunt) excitation";
       parameter Modelica.SIunits.Temperature Tse(start=TDefault) 
        "Temperature of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowShuntExcitation = temperatureShuntExcitation.port.Q_flow 
        "Heat flow rate of (shunt) excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowSeriesExcitation = temperatureSeriesExcitation.port.Q_flow 
        "Heat flow rate of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowShuntExcitation + Q_flowSeriesExcitation;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureShuntExcitation;
      Modelica.Blocks.Sources.Constant constTe(final k=Te) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput T_e if useTemperatureInputs 
        "Temperature of (shunt) excitation";
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureSeriesExcitation;
      Modelica.Blocks.Sources.Constant constTse(final k=Tse) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput T_se if useTemperatureInputs 
        "Temperature of series excitation";
    equation 
      connect(constTe.y, temperatureShuntExcitation.T);
      connect(T_e, temperatureShuntExcitation.T);
      connect(constTse.y, temperatureSeriesExcitation.T);
      connect(T_se, temperatureSeriesExcitation.T);
      connect(temperatureSeriesExcitation.port, thermalPort.heatPortSeriesExcitation);
      connect(temperatureShuntExcitation.port, thermalPort.heatPortShuntExcitation);
    end ThermalAmbientDCCE;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:12
2010.

.. |Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPM| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMS.png
.. |Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEE| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMS.png
.. |Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSE| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSES.png
.. |Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCES.png
.. |image4| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMS.png
.. |image5| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMS.png
.. |image6| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSES.png
.. |image7| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCES.png
.. |image8| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMI.png
.. |image9| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEEI.png
.. |image10| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSEI.png
.. |image11| image:: Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCEI.png
