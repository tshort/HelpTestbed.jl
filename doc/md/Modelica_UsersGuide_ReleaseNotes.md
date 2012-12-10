% Modelica.UsersGuide.ReleaseNotes
% 
% 

![Modelica.UsersGuide.ReleaseNotes](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide](Modelica_UsersGuide.html#Modelica.UsersGuide).ReleaseNotes
=====================================================================================================================================================================================

::

This section summarizes the changes that have been performed on the
Modelica standard library. Furthermore, it is explained in
[Modelica.UsersGuide.ReleaseNotes.VersionManagement](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes.VersionManagement)
how the versions are managed with the subversion management systems.
This is especially important for maintenance (bug-fix) releases where
the main version number is not changed.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image14](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version
  onHistoryS.png)                                              Management
  [VersionManagement](Modelica_UsersGuide_ReleaseNotes.html#Mo 
  delica.UsersGuide.ReleaseNotes.VersionManagement)            

  ![image15](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 3.2
  onHistoryS.png)                                              with bug
  [Version\_3\_2\_BugFixes](Modelica_UsersGuide_ReleaseNotes.h fixes
  tml#Modelica.UsersGuide.ReleaseNotes.Version_3_2_BugFixes)   

  ![image16](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 3.2
  onHistoryS.png)                                              (Oct. 25,
  [Version\_3\_2](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2010)
  ca.UsersGuide.ReleaseNotes.Version_3_2)                      

  ![image17](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 3.1
  onHistoryS.png)                                              (August 14,
  [Version\_3\_1](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2009)
  ca.UsersGuide.ReleaseNotes.Version_3_1)                      

  ![image18](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version
  onHistoryS.png)                                              3.0.1
  [Version\_3\_0\_1](Modelica_UsersGuide_ReleaseNotes.html#Mod (Jan.27,
  elica.UsersGuide.ReleaseNotes.Version_3_0_1)                 2009)

  ![image19](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 3.0
  onHistoryS.png)                                              (Feb.,
  [Version\_3\_0](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2008)
  ca.UsersGuide.ReleaseNotes.Version_3_0)                      

  ![image20](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version
  onHistoryS.png)                                              2.2.2 (Aug.
  [Version\_2\_2\_2](Modelica_UsersGuide_ReleaseNotes.html#Mod 31, 2007)
  elica.UsersGuide.ReleaseNotes.Version_2_2_2)                 

  ![image21](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version
  onHistoryS.png)                                              2.2.1
  [Version\_2\_2\_1](Modelica_UsersGuide_ReleaseNotes.html#Mod (March 24,
  elica.UsersGuide.ReleaseNotes.Version_2_2_1)                 2006)

  ![image22](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 2.2
  onHistoryS.png)                                              (April 6,
  [Version\_2\_2](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2005)
  ca.UsersGuide.ReleaseNotes.Version_2_2)                      

  ![image23](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 2.1
  onHistoryS.png)                                              (Nov. 11,
  [Version\_2\_1](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2004)
  ca.UsersGuide.ReleaseNotes.Version_2_1)                      

  ![image24](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 1.6
  onHistoryS.png)                                              (June 21,
  [Version\_1\_6](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2004)
  ca.UsersGuide.ReleaseNotes.Version_1_6)                      

  ![image25](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 1.5
  onHistoryS.png)                                              (Dec. 16,
  [Version\_1\_5](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2002)
  ca.UsersGuide.ReleaseNotes.Version_1_5)                      

  ![image26](Modelica.UsersGuide.Conventions.UsersGuide.Revisi Version 1.4
  onHistoryS.png)                                              (June 28,
  [Version\_1\_4](Modelica_UsersGuide_ReleaseNotes.html#Modeli 2001)
  ca.UsersGuide.ReleaseNotes.Version_1_4)                      
  ------------------------------------------------------------------------

* * * * *

![image27](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).VersionManagement
========================================================================================================================================================================================================

::

Maintenance of the Modelica Standard Library is performed with three
branches on the subversion server of the Modelica Association
([[https://svn.modelica.org/projects/Modelica](https://svn.modelica.org/projects/Modelica)](https://svn.modelica.org/projects/Modelica)):

### Released branch

Example: "/tags/v3.0.1/Modelica"

This branch contains the released Modelica versions (e.g., version
3.0.1), where all available test cases and compatibility checks with
other Modelica libraries have been performed on the respective release.
This version is usually shipped with a Modelica modeling and simulation
environment and utilized by a Modelica user.

### Development branch

Example: "/trunk/Modelica"

This branch contains the actual development version, i.e., all bug fixes
and new features based on the last Modelica release. New features should
have been tested before including them. However, the exhaustive tests
for a new version are (usually) not performed. This version is usually
only be used by the developers of the Modelica Standard Library and is
not utilized by Modelica users.

### Maintenance branch

Example: "/branches/maintenance/3.0.1/Modelica"

This branch contains the released Modelica version (e.g., version 3.0.1)
where all bug fixes since this release date are included (up to a new
release, when becoming available; i.e., after a new release, the
previous maintenance versions are no longer changed). These bug fixes
might be not yet tested with all test cases or with other Modelica
libraries. The goal is that a vendor may take this version at any time
for a new release of its software, in order to incorporate the latest
bug fixes, without changing the version number of the Modelica Standard
Library.

Incorporation of bug fixes (subversion "commit") shall be performed in
the following way:

-   One person is fixing the bug and another person is checking whether
    the fix is fine.
-   It is up to the library developer, whether he opens a new branch for
    testing and then merges it with the "head" maintenance branch or
    not.
-   Every change to the maintenance branch has to be done at the
    development branch (see above) as well. One exception are pure
    changes to the "versionBuild" annotation as these have no meaning in
    the development trunk.
-   Every change to the maintenance branch requires introducing a
    description of the bug fix under
    Modelica.UsersGuide.ReleaseNotes.Version\_<release-number\>\_BugFixes.
-   Annotations "version" and "versionDate" must not be changed in a
    maintenance release.
-   Every change to the maintenance branch requires changing the
    "versionBuild" number (incrementing it by one), as well as the
    "dateModified" field. Example:

        annotation(version      = "3.1",
                   versionDate  = "2009-06-22",
                   versionBuild = 3,
                   dateModified = "2009-08-28 07:40:19Z",
                   revisionId   = "$I​d::                                       $")

    The "revisionId" field is a bit special though. If written like in
    the example above it will be automatically expanded to:

        revisionId   = "$I​d:: package.mo 2879 2009-08-28 07:40:19Z #$"

    by the subversion checkout procedure.

-   If time does not permit, a vendor makes the bug fix in its local
    version and then has to include it in the maintenance version. It
    would be best to make these changes at a new branch in order to get
    a unique release number.

A valid "commit" to the maintenance branch may contain one or more of
the following changes.

-   Correcting an equation.
-   Correcting attributes quantity/unit/defaultUnit in a declaration.
-   Improving/fixing the documentation.
-   Introducing a new name in the public section of a class (model,
    package, ...) or in any section of a partial class is **not**
    allowed. Since otherwise, a user might use this new name and when
    storing its model and loading it with an older build-version, an
    error would occur.
-   Introducing a new name in the protected section of a non-partial
    class should only be done if absolutely necessary to fix a bug. The
    problem is that this might be non-backward compatible, because a
    user might already extend from this class and already using the same
    name.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image28](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_3\_2\_BugFixes
==============================================================================================================================================================================================================

::

Below the bug fixes are summarized that have been incorporated into the
maintenance branch of Version 3.2. All these changes are backwards
compatible.

> The following **uncritical errors** have been fixed (i.e., errors that

do **not** lead to wrong simulation results, but, e.g., units are wrong
or errors in documentation):

  --------------------- --------------------------------------------------
  **Modelica.Math.Matri 
  ces.**                

  rcond                 The unspecified dimensions in an array in the
    ~ discreteRiccati   protected section replaced by concrete dimensions.
                        
                        

  **Modelica.Math.Matri 
  ces.Utilities.**      

  householderSimilarity The unspecified dimensions in an array in the
  Transformation        protected section replaced by concrete dimensions.
  --------------------- --------------------------------------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image29](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_3\_2
====================================================================================================================================================================================================

::

Version 3.2 is backward compatible to version 3.1, i.e., models
developed with versions 3.0, 3.0.1, or 3.1 will work without any changes
also with version 3.2. This version is a major improvement:

-   **357** models and blocks and **295** functions are newly included.
-   **7** new libraries are included.
-   The icons of the library are newly designed to provide a modern,
    unified view, see
    [Modelica.Icons](Modelica_Icons.html#Modelica.Icons).
-   All non-Modelica files, such as images, pdf-files, C-source files,
    scripts are moved to the new directory "Modelica\\Resources".
    Furthermore, all file references are changed to URIs as introduced
    in Modelica 3.1 (e.g., a file with the file name
    "Modelica/Resources/Images/xxx" is referenced as
    "modelica://Modelica/Resources/Images/xxx").
-   All physical models that dissipate heat (such as electrical
    elements, electrical machines, bearings, dampers, etc.), have now an
    optional heat port to which the dissipated energy is flowing, if
    activated. This will significantly improve design studies about the
    thermal efficiency of technical systems.
-   All electrical machines in the
    [Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)
    library have now a "Losses" tab in the parameter menu to optionally
    model machines losses such as frictional losses, stator core losses
    or stray load losses, respectively.
-   All electrical machines in the
    [Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)
    library have now a "powerBalance" result record, summarizing
    converted power and losses.

Version 3.2 is slightly based on the Modelica Specification 3.2. It uses
the following new language elements (compared to Modelica Specification
3.1):

-   Operator records and overloaded operators.
-   Functions as input arguments to functions.
-   Improved expandable connectors (variables declared in expandable
    connectors are ignored if not referenced).

A large part of the new classes have been developed with partial
financial support by [BMBF](http://www.bmbf.de/en/index.php) (BMBF
Förderkennzeichen: 01IS07022F) within the [ITEA2](http://www.itea2.org)
project [EUROSYSLIB](http://www.eurosyslib.com/). We highly appreciate
this funding.

The following **new libraries** have been added:

  ------------ -----------------------------------------------------------
  [Complex](.. This is a top-level record outside of the Modelica Standard
  /../../Model Library. It is used for complex numbers and contains
  ica/Library/ overloaded operators. From a users point of view, Complex
  help/Complex is used in a similar way as the built-in type Real.
  .html#Comple Example:
  x)             ~ `   Real     a    = 2;`
                   `   Complex  j    = Modelica.ComplexMath.j;`
                   `   Complex  b    = 2 + 3*j;`
                   `   Complex  c    = (2*b + a)/b;`
                   `   Complex  d    = Modelica.ComplexMath.sin(c);`
                   `   Complex  v[3] = {b/2, c, 2*d};` (This library was
                   developed by Marcus Baur, DLR).
               
               

  [Modelica.Co Library of basic input/output control blocks with Complex
  mplexBlocks] signals.
  (Modelica_Co   ~ This library is especially useful in combination with
  mplexBlocks.     the new
  html#Modelic     [Modelica.Electrical.QuasiStationary](Modelica_Electric
  a.ComplexBlo al_QuasiStationary.html#Modelica.Electrical.QuasiStationary
  cks)         )
                   library in order to build up very fast simulations of
                   electrical circuits with periodic currents and
                   voltages. (This library was developed by Anton Haumer).
               
               

  [Modelica.El Library for quasi-stationary electrical singlephase and
  ectrical.Qua multiphase AC simulation.
  siStationary   ~ This library allows very fast simulations of electrical
  ](Modelica_E     circuits with sinusoidal currents and voltages by only
  lectrical_Qu     taking into account the quasi-stationary, periodic part
  asiStationar     and neglecting non-periodic transients. (This library
  y.html#Model     was developed by Anton Haumer and Christian Kral, AIT).
  ica.Electric 
  al.QuasiStat 
  ionary)      

  [Modelica.El Library with components of the Berkeley
  ectrical.Spi [SPICE3](http://bwrc.eecs.berkeley.edu/Classes/IcBook/SPICE
  ce3](Modelic /)
  a_Electrical simulator:
  _Spice3.html   ~ R, C, L, controlled and independent sources,
  #Modelica.El     semiconductor device models (MOSFET Level 1, Bipolar
  ectrical.Spi     junction transistor, Diode, Semiconductor resistor).
  ce3)             The components have been intensively tested with more
                   than 1000 test models and compared with results from
                   the SPICE3 simulator. All test models give identical
                   results in Dymola 7.4 with respect to the Berkeley
                   SPICE3 simulator up to the relative tolerance of the
                   integrators. This library allows detailed simulations
                   of electronic circuits. Work on Level 2 SPICE3 models,
                   i.e., even more detailed models, is under way.
                   Furthermore, a pre-processor is under development to
                   transform automatically a SPICE netlist into a Modelica
                   model, in order that the many available SPICE3 models
                   can be directly used in a Modelica model. (This library
                   was developed by Fraunhofer Gesellschaft, Dresden).
               
               

  [Modelica.Ma Library for magnetic fundamental wave effects in electric
  gnetic.Funda machines for the application in three pase electric
  mentalWave]( machines. The library is an alternative approach to the
  Modelica_Mag Modelica.Electrical.Machines library. A great advantage of
  netic_Fundam this library is the strict object orientation of the
  entalWave.ht electrical and magnetic components that the electric
  ml#Modelica. machines models are composed of. This allows an easier
  Magnetic.Fun incorporation of more detailed physical effects of
  damentalWave electrical machines. From a didactic point of view this
  )            library is very beneficial for students in the field of
               electrical engineering.
                 ~ (This library was developed by Christian Kral, AIT, and
                   Anton Haumer, using ideas and source code of a library
                   from Michael Beuschel from 2000).
               
               

  [Modelica.Fl Library with functions to compute convective heat transfer
  uid.Dissipat and pressure loss characteristics.
  ion](Modelic   ~ (This library was developed by Thorben Vahlenkamp and
  a_Fluid_Diss     Stefan Wischhusen from XRG Simulation GmbH).
  ipation.html 
  #Modelica.Fl 
  uid.Dissipat 
  ion)         

  [Modelica.Co Library of complex mathematical functions (e.g., sin, cos)
  mplexMath](M and of functions operating on complex vectors.
  odelica_Comp   ~ (This library was developed by Marcus Baur from DLR-RM,
  lexMath.html     Anton Haumer, and HansJürg Wiesmann).
  #Modelica.Co 
  mplexMath)   
  ------------ -----------------------------------------------------------

> The following **new components** have been added to **existing**

libraries:

  --------- --------------------------------------------------------------
  **Modelic 
  a.UsersGu 
  ide**     

  Conventio Considerably improved 'Conventions' for the Modelica Standard
  ns        Library.

  **Modelic 
  a.Blocks. 
  Examples* 
  *         

  Filter    Examples for the newly introduced block components.
    ~ Filte 
  rWithDiff 
  erentatio 
  n         
      Filte 
  rWithRise 
  Time      
      RealN 
  etwork1   
      Integ 
  erNetwork 
  1         
      Boole 
  anNetwork 
  1         
      Inter 
  action1   
            
            

  **Modelic 
  a.Blocks. 
  Continuou 
  s**       

  Filter    Continuous low pass, high pass, band pass and band stop
            IIR-filter of type CriticalDamping, Bessel, Butterworth and
            Chebyshev I.

  **Modelic 
  a.Blocks. 
  Interacti 
  on.Show** 

  RealValue Blocks to show the values of variables in a diagram animation.
    ~ Integ 
  erValue   
      Boole 
  anValue   
            
            

  **Modelic 
  a.Blocks. 
  Interface 
  s**       

  RealVecto Interfaces and partial blocks for the new block components.
  rInput    
    ~ Integ 
  erVectorI 
  nput      
      Boole 
  anVectorI 
  nput      
      Parti 
  alRealMIS 
  O         
      Parti 
  alInteger 
  SISO      
      Parti 
  alInteger 
  MISO      
      Parti 
  alBoolean 
  SISO\_sma 
  ll        
      Parti 
  alBoolean 
  MISO      
            
            

  **Modelic 
  a.Blocks. 
  Math**    

  MultiSum  Sum, product and switch blocks with 1,2,...,N inputs (based on
    ~ Multi connectorSizing annotation to handle vectors of connectors in
  Product   a convenient way).
      Multi 
  Switch    
            
            

  **Modelic 
  a.Blocks. 
  MathInteg 
  er**      

  MultiSwit Mathematical blocks for Integer signals.
  ch        
    ~ Sum   
      Produ 
  ct        
      Trigg 
  eredAdd   
            
            

  **Modelic 
  a.Blocks. 
  Boolean** 

  MultiSwit Mathematical blocks for Boolean signals. Some of these blocks
  ch        are available also in library
    ~ And   [Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical
      Or    ).
      Xor   The new design is based on the connectorSizing annotation that
      Nand  allows the convenient handling of an arbitrary number of input
      Nor   signals (e.g., the "And" block has 1,2,...,N inputs, instead
      Not   of only 2 inputs in the
      Risin [Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical
  gEdge     )
      Falli library). Additionally, the icons are smaller so that the
  ngEdge    diagram area is better utilized
      Chang 
  ingEdge   
      OnDel 
  ay        
            
            

  **Modelic 
  a.Blocks. 
  Sources** 

  RadioButt Boolean signal source that mimics a radio button.
  onSource  

  IntegerTa Generate an Integer output signal based on a table matrix with
  ble       [time, yi] values.

  **Modelic 
  a.Electri 
  cal.Analo 
  g.Example 
  s**       

  SimpleTri Examples for the newly introduced Analog components.
  acCircuit 
  ,         
    ~ Ideal 
  TriacCirc 
  uit,      
      AD\_D 
  A\_conver 
  sion      
            
            

  **Modelic 
  a.Electri 
  cal.Analo 
  g.Ideal** 

  IdealTria AD and DA converter, ideal triac (based on ideal thyristor).
  c,        
    ~ AD\_C 
  onverter, 
      DA\_C 
  onverter  
            
            

  **Modelic 
  a.Electri 
  cal.Analo 
  g.Semicon 
  ductors** 

  SimpleTri Simple triac based on semiconductor thyristor model.
  ac        

  **Modelic 
  a.Electri 
  cal.Digit 
  al.Exampl 
  es**      

  Delay\_ex Examples for the newly introduced Digital components.
  ample,    
    ~ DFFRE 
  G\_exampl 
  e,        
      DFFRE 
  GL\_examp 
  le,       
      DFFRE 
  GSRH\_exa 
  mple,     
      DFFRE 
  GSRL\_exa 
  mple,     
      DLATR 
  EG\_examp 
  le,       
      DLATR 
  EGL\_exam 
  ple,      
      DLATR 
  EGSRH\_ex 
  ample,    
      DLATR 
  EGSRL\_ex 
  ample,    
      NXFER 
  \_example 
  ,         
      NRXFE 
  R\_exampl 
  e,        
      BUF3S 
  \_example 
  ,         
      INV3S 
  \_example 
  ,         
      Wired 
  X\_exampl 
  e         
            
            

  **Modelic 
  a.Electri 
  cal.Digit 
  al.Interf 
  aces**    

  UX01,     Interfaces for the newly introduced Digital components.
    ~ Stren 
  gth,      
      MIMO  
            
            

  **Modelic 
  a.Electri 
  cal.Digit 
  al.Tables 
  **        

  Resolutio New Digital table components.
  nTable,   
    ~ Stren 
  gthMap,   
      NXfer 
  Table,    
      NRXfe 
  rTable,   
      PXfer 
  Table,    
      PRXfe 
  rTable,   
      Buf3s 
  Table,    
      Buf3s 
  lTable    
            
            

  **Modelic 
  a.Electri 
  cal.Digit 
  al.Delay* 
  *         

  InertialD New Digital delay component.
  elaySensi 
  tiveVecto 
  r         

  **Modelic 
  a.Electri 
  cal.Digit 
  al.Regist 
  ers**     

  DFFR,     Various register components (collection of flipflops and
    ~ DFFRE latches) according to the VHDL standard.
  G,        
      DFFRE 
  GL,       
      DFFSR 
  ,         
      DFFRE 
  GSRH,     
      DFFRE 
  GSRL,     
      DLATR 
  ,         
      DLATR 
  EG,       
      DLATR 
  EGL,      
      DLATS 
  R,        
      DLATR 
  EGSRH,    
      DLATR 
  EGSRL     
            
            

  **Modelic 
  a.Electri 
  cal.Digit 
  al.Trista 
  tes**     

  NXFERGATE Transfer gates, buffers, inverters and wired node.
  ,         
    ~ NRXFE 
  RGATE,    
      PXFER 
  GATE,     
      PRXFE 
  RGATE,    
      BUF3S 
  ,         
      BUF3S 
  L,        
      INV3S 
  ,         
      INV3S 
  L,        
      Wired 
  X         
            
            

  **Modelic 
  a.Electri 
  cal.Multi 
  Phase.Bas 
  ic**      

  MutualInd Multi phase inductor providing a mutual inductance matrix
  uctor     model.

  ZeroInduc Multi phase zero sequence inductor.
  tor       

  **Modelic 
  a.Electri 
  cal.Machi 
  nes**     

  Examples  Structured according to machine types:
              ~ AsynchronousInductionMachines SynchronousInductionMachines
                DCMachines Transformers
            
            

  Losses.\* Parameter records and models for losses in electrical machines
            and transformers (where applicable):
              ~ Friction losses Brush losses Stray Load losses Core losses
                (only eddy current losses but no hysteresis losses; not
                for transformers)
            
            

  Thermal.\ Simple thermal ambients, to be connected to the thermal ports
  *         of machines,
              ~ as well as material constants and utility functions.
            
            

  Icons.\*  Icons for transient and quasistationary electrical machines
            and transformers.

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Examp 
  les.Async 
  hronousIn 
  ductionMa 
  chines.** 

  AIMC\_wit Asynchronous induction machine with squirrel cage with losses
  hLosses   

  AIMC\_Tra Asynchronous induction machine with squirrel cage -
  nsformer  transformer starting

  AIMC\_wit Test example of an asynchronous induction machine with
  hLosses   squirrel cage with losses

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Examp 
  les.Synch 
  ronousInd 
  uctionMac 
  hines.**  

  SMPM\_Cur Permanent magnet synchronous induction machine fed by a
  rentSourc current source
  e         

  SMEE\_Loa Electrical excited synchronous induction machine with voltage
  dDump     controller

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Examp 
  les.DCMac 
  hines.**  

  DCSE\_Sin Series excited DC machine, fed by sinusoidal voltage
  glePhase  

  DCPM\_Tem Permanent magnet DC machine, demonstration of varying
  perature  tempoerature

  DCPM\_Coo Permanent magnet DC machine, coupled with a simple thermal
  ling      model

  DCPM\_Qua Permanent magnet DC machine, comparison between transient and
  siStation quasistationary model
  ary       

  DCPM\_Los Permanent magnet DC machine, comparison between model with and
  ses       without losses

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Basic 
  Machines. 
  QuasiStat 
  ionaryDCM 
  achines.* 
  *         

  DC\_Perma QuasiStationary DC machines, i.e., neglecting electrical
  nentMagne transients
  t         
    ~ DC\_E 
  lectrical 
  Excited   
      DC\_S 
  eriesExci 
  ted       
            
            

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Basic 
  Machines. 
  Component 
  s.**      

  InductorD Inductor model which neglects der(i) if Boolean parameter
  C         quasiStationary = true

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Inter 
  faces.**  

  ThermalPo Thermal ports and power balances for electrical machines and
  rtTransfo transformers.
  rmer      
    ~ Power 
  BalanceTr 
  ansformer 
            
            

  **Modelic 
  a.Electri 
  cal.Machi 
  nes.Utili 
  ties**    

  SwitchedR Switched rheostat, used for starting asynchronous induction
  heostat   motors with slipring rotor.

  RampedRhe Ramped rheostat, used for starting asynchronous induction
  ostat     motors with slipring rotor.

  Synchrono The parameters of the synchronous machine model with
  usMachine electrical excitation (and damper) are calculated from
  Data      parameters normally given in a technical description,
            according to the standard EN 60034-4:2008 Appendix C.

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Examp 
  les.Eleme 
  ntary.**  

  HeatLosse Demonstrate the modeling of heat losses.
  s         

  UserDefin Demonstrate the modeling of a user-defined gravity field.
  edGravity 
  Field     

  Surfaces  Demonstrate the visualization of a sine surface,
              ~ as well as a torus and a wheel constucted from a surface.
            
            

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Joint 
  s.**      

  FreeMotio Free motion joint that allows initialization and state
  nScalarIn selection
  it          ~ of single elements of the relevant vectors (e.g.,
                initialize r\_rel\_a[2] but not the other elements of
                r\_rel\_a; this new component fixes ticket
                [\#274](http://trac.modelica.org/Modelica/ticket/274))
            
            

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Visua 
  lizers.** 

  Torus     Visualizing a torus.

  Voluminou Visualizing a voluminous wheel.
  sWheel    

  PipeWithS Visualizing a pipe with scalar field quantities along the pipe
  calarFiel axis.
  d         

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Visua 
  lizers.Co 
  lorMaps.* 
  *         

  jet       Functions returning different color maps.
    ~ hot   
      gray  
      sprin 
  g         
      summe 
  r         
      autum 
  n         
      winte 
  r         
            
            

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Visua 
  lizers.Co 
  lors.**   

  colorMapT Save a color map on file in svg (scalable vector graphics)
  oSvg      format.

  scalarToC Map a scalar to a color using a color map.
  olor      

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Visua 
  lizers.Ad 
  vanced.** 

  Surface   Visualizing a moveable, parameterized surface;
              ~ the surface characteristic is provided by a function (this
                new component fixes ticket
                [\#181](http://trac.modelica.org/Modelica/ticket/181))
            
            

  PipeWithS Visualizing a pipe with a scalar field.
  calarFiel 
  d         

  **Modelic 
  a.Mechani 
  cs.MultiB 
  ody.Visua 
  lizers.Ad 
  vanced.Su 
  rfaceChar 
  acteristi 
  cs.**     

  torus     Function defining the surface characteristic of a torus.

  pipeWithS Function defining the surface characteristic of a pipe
  calarFiel   ~ where a scalar field value is displayed with color along
  d             the pipe axis.
            
            

  **Modelic 
  a.Mechani 
  cs.Rotati 
  onal.Exam 
  ples.**   

  HeatLosse Demonstrate the modeling of heat losses.
  s         

  **Modelic 
  a.Mechani 
  cs.Transl 
  ational.E 
  xamples.* 
  *         

  HeatLosse Demonstrate the modeling of heat losses.
  s         

  **Modelic 
  a.Fluid.F 
  ittings.B 
  ends**    

  CurvedBen New fitting (pressure loss) components.
  d         
    ~ Edged 
  Bend      
            
            

  **Modelic 
  a.Fluid.F 
  ittings.O 
  rifices.* 
  *         

  ThickEdge New fitting (pressure loss) component.
  dOrifice  

  **Modelic 
  a.Fluid.F 
  ittings.G 
  enericRes 
  istances. 
  **        

  VolumeFlo New fitting (pressure loss) component.
  wRate     

  **Modelic 
  a.Math**  

  isEqual   Determine if two Real scalars are numerically identical.

  **Modelic 
  a.Math.Ve 
  ctors**   

  find      Find element in vector.

  toString  Convert a real vector to a string.

  interpola Interpolate in a vector.
  te        

  relNodePo Return vector of relative node positions (0..1).
  sitions   

  **Modelic 
  a.Math.Ve 
  ctors.Uti 
  lities**  

  household Utility functions for vectors that are used by the newly
  erVector  introduced functions, but are only of interested for a
    ~ house specialist.
  holderRef 
  lection   
      roots 
            
            

  **Modelic 
  a.Math.Ma 
  trices**  

  continuou Return solution of continuous-time and discrete-time algebraic
  sRiccati  Riccati equation respectively.
    ~ discr 
  eteRiccat 
  i         
            
            

  continuou Return solution of continuous-time and discrete-time Sylvester
  sSylveste equation respectively.
  r         
    ~ discr 
  eteSylves 
  ter       
            
            

  continuou Return solution of continuous-time and discrete-time Lyapunonv
  sLyapunov equation respectively.
    ~ discr 
  eteLyapun 
  ov        
            
            

  trace     Return the trace of a matrix.

  condition Compute the condition number of a matrix.
  Number    

  rcond     Estimate the reciprocal condition number of a matrix.

  nullSpace Return a orthonormal basis for the null space of a matrix.

  toString  Convert a matrix into its string representation.

  flipLeftR Flip the columns of a matrix in left/right direction.
  ight      

  flipUpDow Flip the rows of a matrix in up/down direction.
  n         

  cholesky  Perform Cholesky factorization of a real symmetric positive
            definite matrix.

  hessenber Transform a matrix to upper Hessenberg form.
  g         

  realSchur Computes the real Schur form of a matrix.

  frobenius Return the Frobenius norm of a matrix.
  Norm      

  **Modelic 
  a.Math.Ma 
  trices.LA 
  PACK.**   

  dtrevc    New interface functions for LAPACK (should usually not
    ~ dpotr directly be used but only indirectly via
  f         Modelica.Math.Matrices).
      dtrsm 
      dgees 
      dtrse 
  n         
      dgesv 
  x         
      dhseq 
  r         
      dlang 
  e         
      dgeco 
  n         
      dgehr 
  d         
      dgeqr 
  f         
      dggev 
  x         
      dgesd 
  d         
      dggev 
      dggev 
  x         
      dhgeq 
  z         
      dormh 
  r         
      dormq 
  r         
      dorgh 
  r         
            
            

  **Modelic 
  a.Math.Ma 
  trices.Ut 
  ilities.* 
  *         

  reorderRS Utility functions for matrices that are used by the newly
  F         introduced functions, but are only of interested for a
    ~ conti specialist.
  nuousRicc 
  atiIterat 
  ive       
      discr 
  eteRiccat 
  iIterativ 
  e         
      eigen 
  valuesHes 
  senberg   
      toUpp 
  erHessenb 
  erg       
      house 
  holderRef 
  lection   
      house 
  holderSim 
  ilarityTr 
  ansformat 
  ion       
      findL 
  okal\_tk  
            
            

  **Modelic 
  a.Math.No 
  nlinear** 

  quadratur Return the integral of an integrand function using an adaptive
  eLobatto  Lobatto rule.

  solveOneN Solve f(u) = 0 in a very reliable and efficient way (f(u\_min)
  onlinearE and f(u\_max) must have different signs).
  quation   

  **Modelic 
  a.Math.No 
  nlinear.E 
  xamples.* 
  *         

  quadratur Examples that demonstrate the usage of the
  eLobatto1 Modelica.Math.Nonlinear functions to integrate over functions
    ~ quadr and to solve scalar nonlinear equations.
  atureLoba 
  tto2      
      solve 
  Nonlinear 
  Equations 
  1         
      solve 
  Nonlinear 
  Equations 
  2         
            
            

  **Modelic 
  a.Math.Bo 
  oleanVect 
  ors.**    

  allTrue   Returns true, if all elements of the Boolean input vector are
            true.

  anyTrue   Returns true, if at least on element of the Boolean input
            vector is true.

  oneTrue   Returns true, if exactly one element of the Boolean input
            vector is true.

  firstTrue Returns the index of the first element of the Boolean vector
  Index     that is true and returns 0, if no element is true

  **Modelic 
  a.Icons.* 
  *         

  Informati New icons to get a unified view on different categories of
  on        packages.
    ~ Conta 
  ct        
      Relea 
  seNotes   
      Refer 
  ences     
      Examp 
  lesPackag 
  e         
      Examp 
  le        
      Packa 
  ge        
      Bases 
  Package   
      Varia 
  ntsPackag 
  e         
      Inter 
  facesPack 
  age       
      Sourc 
  esPackage 
      Senso 
  rsPackage 
      Mater 
  ialProper 
  tiesPacka 
  ge        
      Mater 
  ialProper 
  ty        
            
            

  **Modelic 
  a.SIunits 
  .**       

  ComplexCu SIunits to be used in physical models using complex variables,
  rrent     e.g.,
    ~ Compl   ~ [Modelica.Electrical.QuasiStationary](Modelica_Electrical_
  exCurrent QuasiStationary.html#Modelica.Electrical.QuasiStationary),
  Slope         [Modelica.Magnetic.FundamentalWave](Modelica_Magnetic_Fund
      Compl amentalWave.html#Modelica.Magnetic.FundamentalWave)
  exCurrent 
  Density   
      Compl 
  exElectri 
  cPotentia 
  l         
      Compl 
  exPotenti 
  alDiffere 
  nce       
      Compl 
  exVoltage 
      Compl 
  exVoltage 
  Slope     
      Compl 
  exElectri 
  cFieldStr 
  ength     
      Compl 
  exElectri 
  cFluxDens 
  ity       
      Compl 
  exElectri 
  cFlux     
      Compl 
  exMagneti 
  cFieldStr 
  ength     
      Compl 
  exMagneti 
  cPotentia 
  l         
      Compl 
  exMagneti 
  cPotentia 
  lDifferen 
  ce        
      Compl 
  exMagneto 
  motiveFor 
  ce        
      Compl 
  exMagneti 
  cFluxDens 
  ity       
      Compl 
  exMagneti 
  cFlux     
      Compl 
  exRelucta 
  nce       
      Compl 
  exImpedan 
  ce        
      Compl 
  exAdmitta 
  nce       
      Compl 
  exPower   
            
            

  ImpulseFl New SIunits for mechanics.
  owRate    
    ~ Angul 
  arImpulse 
  FlowRate  
            
            
  --------- --------------------------------------------------------------

> The following **existing components** have been **improved** in a

**backward compatible** way:

  ----- ------------------------------------------------------------------
  **Mod 
  elica 
  .Bloc 
  ks.So 
  urces 
  .**   

  Pulse New parameter "nperiod" introduced to define the number of periods
    ~ S for the signal type. Default is "infinite number of periods
  awToo (nperiods=-1).
  th    
        
        

  **Mod 
  elica 
  .Elec 
  trica 
  l.**  

  Multi All dissipative components have now an optional heatPort connector
  Phase to which the dissipated losses are transported in form of heat.
  .\*   

  Machi To all electric machines (asynchronous and synchronous induction
  nes.\ machines, DC machines) and transformers loss models have been
  *     added (where applicable):
          ~ Temperature dependent resistances (ohmic losses) Friction
            losses Brush losses Stray Load losses Core losses (only eddy
            current losses but no hysteresis losses; not for transformers)
            As default, temperature dependcy and losses are set to zero.
            To all electric machines (asynchronous and synchronous
            induction machines, DC machines) and transformers conditional
            thermal ports have been added, to which the dissipated losses
            are flowing, if activated. The thermal port contains a
            [HeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Model
        ica.Thermal.HeatTransfer.Interfaces.HeatPort)
            for each loss source of the specific machine type. To all
            electric machines (asynchronous and synchronous induction
            machines, DC machines) a "powerBalance" result record has been
            added, summarizing converted power and losses.
        
        

  **Mod 
  elica 
  .Mech 
  anics 
  .**   

  Multi All dissipative components in Modelica.Mechanics have now an
  Body. optional heatPort connector to which the dissipated energy is
  \*    transported in form of heat.
    ~ R   ~ All icons in Modelica.Mechanics are unified according to the
  otati     Modelica.Blocks library: "%name": width: -150 .. 150, height:
  onal.     40, color: blue other text: height: 30, color: black
  \*    
      T 
  ransl 
  ation 
  al.\* 
        
        

  **Mod 
  elica 
  .Mech 
  anics 
  .Mult 
  iBody 
  .**   

  World Function gravityAcceleration is made replaceable, so that
        redeclaration yields user-defined gravity fields.

  **Mod 
  elica 
  .Flui 
  d.Val 
  ves.* 
  *     

  Valve (a) Optional filtering of opening signal introduced to model the
  Incom     delay time of the opening/closing drive. In this case, an
  press     optional leackageOpening can be defined to model leackage flow
  ible      and/or to improve the numerics in certain situations. (b)
    ~ V     Improved regularization of the valve characteristics in some
  alveV     cases so that it is twice differentiable (smooth=2), instead
  apori     of continuous (smooth=0).
  zing  
      V 
  alveC 
  ompre 
  ssibl 
  e     
        
        

  **Mod 
  elica 
  .Flui 
  d.Sou 
  rces. 
  **    

  Fixed Changed the implementation so that no non-linear algebraic
  Bound equation system occurs, if the given variables (e.g. p,T,X) do not
  ary   correspond to the medium states (e.g. p,h,X). This is achieved by
    ~ B using appropriate "setState\_xxx" calls to compute the medium
  ounda state from the given variables. If a nonlinear equation system
  ry\_p occurs, it is solved by a specialized handler inside the
  T     setState\_xxx(..) function, but in the model this equation system
      B is not visible.
  ounda 
  ry\_p 
  h     
        
        

  **Mod 
  elica 
  .Medi 
  a.Int 
  erfac 
  es.** 

  Parti The min/max values of types SpecificEnthaly, SpecificEntropy,
  alMed SpecificHeatCapacity increased, due to reported user problems.
  ium     ~ New constant C\_nominal introduced to provide nominal values
            for trace substances (utilized in Modelica.Fluid to avoid
            numerical problems; this fixes ticket
            [\#393](http://trac.modelica.org/Modelica/ticket/393)).
        
        

  **Mod 
  elica 
  .Ther 
  mal.* 
  *     

  HeatT All icons are unified according to the Modelica.Blocks library:
  ransf   ~ "%name": width: -150 .. 150, height: 40, color: blue other
  er.\*     text: height: 30, color: black
        
        

  **Mod 
  elica 
  .Math 
  .Matr 
  ices* 
  *     

  QR    A Boolean input "pivoting" has been added (now QR(A, pivoting)) to
        provide QR-decomposition without pivoting (QR(A, false)). Default
        is pivoting=true.
  ----- ------------------------------------------------------------------

> The following **critical errors** have been fixed (i.e., errors that

can lead to wrong simulation results):

  ---------- -------------------------------------------------------------
  **Modelica 
  .Electrica 
  l.Digital. 
  Delay.**   

  InertialDe In order to decide whether the rising delay (tLH) or the
  laySensiti falling delay (tHL) is used, the "previous" value of the
  ve         output y has to be used and not the "previous" value of the
             input x (delayType = delayTable[y\_old, x] and not delayType
             = delayTable[x\_old, x]). This has been corrected.

  **Modelica 
  .Mechanics 
  .MultiBody 
  .Parts.**  

  BodyBox    Fixes ticket
    ~ BodyCy [\#373](http://trac.modelica.org/Modelica/ticket/373): The
  linder     "Center of Mass" was calculated as normalize(r)\*length/2.
             This is only correct if the box/cylinder is attached between
             frame\_a and frame\_b. If this is not the case, the
             calculation is wrong. The has been fixed by using the correct
             formula:
               ~ r\_shape + normalize(lengthDirection)\*length/2
             
             

  BodyShape  Fixes ticket
    ~ BodyBo [\#300](http://trac.modelica.org/Modelica/ticket/300): If
  x          parameter enforceStates=true, an error occured. This has been
      BodyCy fixed.
  linder     
             
             

  **Modelica 
  .Mechanics 
  .Rotationa 
  l.Componen 
  ts.**      

  LossyGear  In cases where the driving flange is not obvious, the
             component could lead to a non-convergent event iteration.
             This has been fixed (a detailed description is provided in
             ticket [\#108](http://trac.modelica.org/Modelica/ticket/108)
             and in the attachment of this ticket).

  Gearbox    If useSupport=false, the support flange of the internal
             LossyGear model was connected to the (disabled) support
             connector. As a result, the LossyGear was "free floating".
             This has been corrected.

  **Modelica 
  .Fluid.Pip 
  es.**      

  DynamicPip Bug fix for dynamic mass, energy and momentum balances for
  e          pipes with nParallel\>1.

  **Modelica 
  .Fluid.Pip 
  es.BaseCla 
  sses.HeatT 
  ransfer.** 

  PartialPip Calculation of Reynolds numbers for the heat transfer through
  eFlowHeatT walls corrected, if nParallel\>1. This partial model is used
  ransfer    by LocalPipeFlowHeatTransfer for laminar and turbulent forced
             convection in pipes.

  **Modelica 
  .Media.Int 
  erfaces.Pa 
  rtialLinea 
  rFluid**   

  setState\_ Sign error fixed.
  psX        

  **Modelica 
  .Media.Com 
  pressibleL 
  iquids.**  

  LinearCold Fixed wrong values for thermal conductivity and viscosity.
  Water      
  ---------- -------------------------------------------------------------

> The following **uncritical errors** have been fixed (i.e., errors that

do **not** lead to wrong simulation results, but, e.g., units are wrong
or errors in documentation):

  ------------ -----------------------------------------------------------
  **Modelica.M 
  ath.Matrices 
  .LAPACK**    

  dgesv\_vec   Integer inputs to specify leading dimensions of matrices
    ~ dgesv    have got a lower bound 1 (e.g., lda=max(1,n)) to avoid
      dgetrs   incorrect values (e.g., lda=0) in the case of empty
      dgetrf   matrices.
      dgetrs\_   ~ The Integer variable "info" to indicate the successful
  vec              call of a LAPACK routine has been converted to an
      dgetri       output where it had been a protected variable.
      dgeqpf   
      dorgqr   
      dgesvx   
      dtrsyl   
               
               
  ------------ -----------------------------------------------------------

> The following [trac tickets](http://trac.modelica.org/Modelica) have

been fixed:

  -------------------------- ---------------------------------------------
  **Modelica**               

  [\#155](http://trac.modeli Wrong usage of "fillColor" and "fillPattern"
  ca.org/Modelica/ticket/155 annotations for lines
  )                          

  [\#211](http://trac.modeli Undefined function realString used in MSL
  ca.org/Modelica/ticket/211 
  )                          

  [\#216](http://trac.modeli Make MSL version 3.2 more Modelica 3.1
  ca.org/Modelica/ticket/216 conform
  )                          

  [\#218](http://trac.modeli Replace \`Modelica://\`-URIs by
  ca.org/Modelica/ticket/218 \`modelica://\`-URIs
  )                          

  [\#271](http://trac.modeli Documentation URI errors in MSL 3.1
  ca.org/Modelica/ticket/271 
  )                          

  [\#292](http://trac.modeli Remove empty "Diagram(graphics)" annotations"
  ca.org/Modelica/ticket/292 
  )                          

  [\#294](http://trac.modeli Typo 'w.r.t' --\> 'w.r.t.'
  ca.org/Modelica/ticket/294 
  )                          

  [\#296](http://trac.modeli Unify disclaimer message and improve bad
  ca.org/Modelica/ticket/296 style "here" links
  )                          

  [\#333](http://trac.modeli Fix real number formats of the form
  ca.org/Modelica/ticket/333 \`.[0-9]+\`
  )                          

  [\#347](http://trac.modeli invalid URI in MSL 3.2
  ca.org/Modelica/ticket/347 
  )                          

  [\#355](http://trac.modeli Non-standard annotations
  ca.org/Modelica/ticket/355 
  )                          

  **Modelica.Blocks**        

  [\#227](http://trac.modeli Enhance unit deduction functionality by
  ca.org/Modelica/ticket/227 adding 'unit="1"' to some blocks"
  )                          

  [\#349](http://trac.modeli Incorrect annotation in Blocks/Continuous.mo
  ca.org/Modelica/ticket/349 
  )                          

  [\#374](http://trac.modeli Parameter with no value at all in
  ca.org/Modelica/ticket/374 Modelica.Blocks.Continuous.TransferFunction
  )                          

  **Modelica.Constants**     

  [\#356](http://trac.modeli Add Euler-Mascheroni constant to
  ca.org/Modelica/ticket/356 Modelica.Constants
  )                          

  **Modelica.Electrical.Anal 
  og**                       

  [\#346](http://trac.modeli Multiple text in
  ca.org/Modelica/ticket/346 Modelica.Electrical.Analog.Basic.Conductor
  )                          

  [\#363](http://trac.modeli Mixture of Real and Integer in index
  ca.org/Modelica/ticket/363 expressions in
  )                          Modelica.Electrical.Analog.Lines

  [\#384](http://trac.modeli Incomplete annotations in some examples
  ca.org/Modelica/ticket/384 
  )                          

  [\#396](http://trac.modeli Bug in
  ca.org/Modelica/ticket/396 Modelica.Electrical.Analog.Ideal.ControlledId
  )                          ealIntermediateSwitch

  **Modelica.Machines**      

  [\#276](http://trac.modeli Improve/fix documentation of
  ca.org/Modelica/ticket/276 Modelica.Electrical.Machines
  )                          

  [\#288](http://trac.modeli Describe thermal concept of machines
  ca.org/Modelica/ticket/288 
  )                          

  [\#301](http://trac.modeli Documentation of Electrical.Machines.Examples
  ca.org/Modelica/ticket/301 needs update
  )                          

  [\#306](http://trac.modeli Merge content of
  ca.org/Modelica/ticket/306 \`Modelica.Electrical.Machines.Icons\` into
  )                          \`Modelica.Icons\`

  [\#362](http://trac.modeli Incomplete example model for DC machines
  ca.org/Modelica/ticket/362 
  )                          

  [\#375](http://trac.modeli Strangeness with final parameters with no
  ca.org/Modelica/ticket/375 value but a start value
  )                          

  **Modelica.Electrical.Mult 
  iPhase**                   

  [\#173](http://trac.modeli m-phase mutual inductor
  ca.org/Modelica/ticket/173 
  )                          

  [\#200](http://trac.modeli adjust Multiphase to Analog
  ca.org/Modelica/ticket/200 
  )                          

  [\#277](http://trac.modeli Improve/fix documentation of
  ca.org/Modelica/ticket/277 Modelica.Electrical.Multiphase
  )                          

  [\#352](http://trac.modeli Odd annotation in
  ca.org/Modelica/ticket/352 Modelica.Electrical.MultiPhase.Sources.Signal
  )                          Voltage

  **Modelica.Fluid**         

  [\#215](http://trac.modeli Bug in Modelica.Fluid.Pipes.DynamicPipe
  ca.org/Modelica/ticket/215 
  )                          

  [\#219](http://trac.modeli Fluid.Examples.HeatExchanger: Heat transfer
  ca.org/Modelica/ticket/219 is switched off and cannot be enabled
  )                          

  **Modelica.Math**          

  [\#348](http://trac.modeli Small error in documentation
  ca.org/Modelica/ticket/348 
  )                          

  [\#371](http://trac.modeli Modelica.Math functions declared as "C" not
  ca.org/Modelica/ticket/371 "builtin""
  )                          

  **Modelica.Mechanics.Multi 
  Body**                     

  [\#50](http://trac.modelic Error in LineForce handling of potential root
  a.org/Modelica/ticket/50)  

  [\#71](http://trac.modelic Make MultiBody.World replaceable
  a.org/Modelica/ticket/71)  

  [\#181](http://trac.modeli 3d surface visualisation
  ca.org/Modelica/ticket/181 
  )                          

  [\#210](http://trac.modeli Description of internal gear wheel missing
  ca.org/Modelica/ticket/210 
  )                          

  [\#242](http://trac.modeli Missing each qualifier for modifiers in
  ca.org/Modelica/ticket/242 MultiBody.
  )                          

  [\#251](http://trac.modeli Using enforceStates=true for BodyShape causes
  ca.org/Modelica/ticket/251 errors
  )                          

  [\#255](http://trac.modeli Error in Revolute's handling of
  ca.org/Modelica/ticket/255 non-normalized axis of rotations
  )                          

  [\#268](http://trac.modeli Non-standard annotation in
  ca.org/Modelica/ticket/268 MultiBody,Examples.Systems.RobotR3
  )                          

  [\#269](http://trac.modeli What is the purpose of
  ca.org/Modelica/ticket/269 MultiBody.Examples.Systems.RobotR3.Components
  )                          .InternalConnectors?

  [\#272](http://trac.modeli Function World.gravityAcceleration should not
  ca.org/Modelica/ticket/272 be protected
  )                          

  [\#274](http://trac.modeli Convenient and mighty initialization of frame
  ca.org/Modelica/ticket/274 kinematics
  )                          

  [\#286](http://trac.modeli Typo in Multibody/Frames.mo
  ca.org/Modelica/ticket/286 
  )                          

  [\#300](http://trac.modeli enforceStates parameter managed incorrectly
  ca.org/Modelica/ticket/300 in BodyShape, BodyBox, BodyCylinder
  )                          

  [\#320](http://trac.modeli Replace non-standard annotation by
  ca.org/Modelica/ticket/320 \`showStartAttribute\`
  )                          

  [\#373](http://trac.modeli Error in Modelica Mechanics
  ca.org/Modelica/ticket/373 
  )                          

  [\#389](http://trac.modeli Shape.rxvisobj wrongly referenced in
  ca.org/Modelica/ticket/389 Arrow/DoubleArrow
  )                          

  **Modelica.Mechanics.Rotat 
  ional**                    

  [\#108](http://trac.modeli Problem with model "Lossy Gear" and approach
  ca.org/Modelica/ticket/108 to a solution
  )                          

  [\#278](http://trac.modeli Improve/fix documentation of
  ca.org/Modelica/ticket/278 Modelica.Mechanics.Rotational
  )                          

  [\#381](http://trac.modeli Bug in Modelica.Mechanics.Rotational.Gearbox
  ca.org/Modelica/ticket/381 
  )                          

  **Modelica.Mechanics.Trans 
  lational**                 

  [\#279](http://trac.modeli Improve/fix documentation of
  ca.org/Modelica/ticket/279 Modelica.Mechanics.Translational
  )                          

  [\#310](http://trac.modeli Erroneous image links in
  ca.org/Modelica/ticket/310 \`Modelica.Mechanics.Translational\`
  )                          

  **Modelica.Media**         

  [\#72](http://trac.modelic PartialMedium functions not provided for all
  a.org/Modelica/ticket/72)  media in Modelica.Media

  [\#217](http://trac.modeli Missing image file Air.png
  ca.org/Modelica/ticket/217 
  )                          

  [\#224](http://trac.modeli dpT calculation in waterBaseProp\_dT
  ca.org/Modelica/ticket/224 
  )                          

  [\#393](http://trac.modeli Provide C\_nominal in Modelica.Media to allow
  ca.org/Modelica/ticket/393 propagating value and avoid wrong numerical
  )                          results

  **Modelica.StateGraph**    

  [\#206](http://trac.modeli Syntax error in StateGraph.mo
  ca.org/Modelica/ticket/206 
  )                          

  [\#261](http://trac.modeli Modelica.StateGraph should mention the
  ca.org/Modelica/ticket/261 availability of Modelica\_StateGraph2
  )                          

  [\#354](http://trac.modeli Bad annotation in
  ca.org/Modelica/ticket/354 Modelica.StateGraph.Temporary.NumericValue
  )                          

  **Modelica.Thermal.FluidHe 
  atFlow**                   

  [\#280](http://trac.modeli Improve/fix documentation of
  ca.org/Modelica/ticket/280 Modelica.Thermal.FluidHeatFlow
  )                          

  **Modelica.Thermal.HeatTra 
  nsfer**                    

  [\#281](http://trac.modeli Improve/fix documentation of
  ca.org/Modelica/ticket/281 Modelica.Thermal.HeatTransfer
  )                          

  **Modelica.UsersGuide**    

  [\#198](http://trac.modeli Name of components in MSL not according to
  ca.org/Modelica/ticket/198 naming conventions
  )                          

  [\#204](http://trac.modeli Minor correction to User's Guide's section on
  ca.org/Modelica/ticket/204 version management
  )                          

  [\#244](http://trac.modeli Update the contacts section of the User's
  ca.org/Modelica/ticket/244 Guide
  )                          

  [\#267](http://trac.modeli MSL-Documentation: Shouldn't equations be
  ca.org/Modelica/ticket/267 numbered on the right hand side?
  )                          

  [\#299](http://trac.modeli SVN keyword expansion messed up the User's
  ca.org/Modelica/ticket/299 guide section on version manangement
  )                          

  **Modelica.Utilities**     

  [\#249](http://trac.modeli Documentation error in ModelicaUtilities.h
  ca.org/Modelica/ticket/249 
  )                          

  **ModelicaServices**       

  [\#248](http://trac.modeli No uses statement on ModelicaServices in MSL
  ca.org/Modelica/ticket/248 3.1
  )                          
  -------------------------- ---------------------------------------------

Note:

-   Libraries
    [Modelica\_FundamentalWave](http://www.modelica.org/libraries/Modelica_FundamentalWave)
    and
    [Modelica\_QuasiStationary](http://www.modelica.org/libraries/Modelica_QuasiStationary)
    are included in this version in an improved form.
-   From library
    [Modelica\_LinearSystems2](http://www.modelica.org/libraries/Modelica_LinearSystems2),
    the sublibraries Math.Complex, Math.Vectors and Math.Matrices are
    included in this version in an improved form.
-   From library
    [Modelica\_StateGraph2](http://www.modelica.org/libraries/Modelica_StateGraph2),
    the sublibrary Blocks is included in this version in an improved
    form.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image30](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_3\_1
====================================================================================================================================================================================================

::

Version 3.1 is backward compatible to version 3.0 and 3.0.1, i.e.,
models developed with version 3.0 or 3.0.1 will work without any changes
also with version 3.1.

Version 3.1 is slightly based on the Modelica Specification 3.1. It uses
the following new language elements (compared to Modelica Specification
3.0):

-   Prefix stream and built-in operators inStream(..) and
    actualStream(..) in Modelica.Fluid.
-   Annotation connectorSizing in Modelica.Fluid.
-   Annotation inverse in Modelica.Media.
-   Annotations versionBuild, dateModified, revisionId at the root level
    annotation of package Modelica, to improve the version handling.
-   Modifiers can be used in connectors instances (so balanced models
    are less restrictive). This allowed to make the implementation of
    conditional connectors (support and heatPort) in the Rotational,
    Translational and Electrical libraries simpler.
-   
-   

The following **new libraries** have been added:

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid)

Components to model 1-dim. thermo-fluid flow in networks of vessels,
pipes, fluid machines, valves and fittings. All media from the
Modelica.Media library can be used (so incompressible or compressible,
single or multiple substance, one or two phase medium). The library is
using the stream-concept from Modelica Specification 3.1.

[Modelica.Magnetic.FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes)

Components to model magnetic devices based on the magnetic flux tubes
concepts. Especially to model electro-magnetic actuators. Nonlinear
shape, force, leackage, and Material models. Material data for steel,
electric sheet, pure iron, Cobalt iron, Nickel iron, NdFeB, Sm2Co17, and
more.

[ModelicaServices](../../ModelicaServices%201.1/help/ModelicaServices.html#ModelicaServices)

New top level package that shall contain functions and models to be used
in the Modelica Standard Library that requires a tool specific
implementation. ModelicaServices is then used in the Modelica package.
In this first version, the 3-dim. animation with model
Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape was moved to
ModelicaServices. Tool vendors can now provide their own implementation
of the animation.

> The following **new components** have been added to **existing**

libraries:

  --------------- --------------------------------------------------------
  **Modelica.**   

  versionBuild    New annotations from Modelica 3.1 for version handling
  versionDate     added.
  dateModified    
  revisionId      

  **Modelica.User 
  sGuide.ReleaseN 
  otes.**         

  VersionManageme Copied from info layer of previous ReleaseNotes (to make
  nt              it more visible) and adapted it to the new possibilities
                  in Modelica Specification 3.1.

  **Modelica.Bloc 
  ks.Math.**      

  RectangularToPo New blocks to convert between rectangular and polar form
  lar             of space phasors.
    ~ PolarToRect 
  angular         
                  
                  

  **Modelica.Bloc 
  ks.Routing.**   

  Replicator      New block to replicate an input signal to many output
                  signals.

  **Modelica.Elec 
  trical.Analog.E 
  xamples.**      

  AmplifierWithOp New examples to demonstrate the usage of new components.
  AmpDetailed     
    ~ HeatingResi 
  stor            
      CompareTran 
  sformers        
      Overvoltage 
  Protection      
      ControlledS 
  witchWithArc    
      SwitchWithA 
  rc              
      ThyristorBe 
  haviourTest     
                  
                  

  **Modelica.Elec 
  trical.Analog.B 
  asic.**         

  OpAmpDetailed   New detailed model of an operational amplifier.
    ~ Translation   ~ New electromotoric force from electrical energy into
  alEMF               mechanical translattional energy. Generic
      M\_Transfor     transformer with choosable number of inductors
  mer             
                  
                  

  **Modelica.Elec 
  trical.Analog.I 
  deal.**         

  OpenerWithArc   New switches with simple arc model.
    ~ CloserWithA 
  rc              
      ControlledO 
  penerWithArc    
      ControlledC 
  loserWithArc    
                  
                  

  **Modelica.Elec 
  trical.Analog.I 
  nterfaces.**    

  ConditionalHeat New partial model to add a conditional HeatPort to an
  Port            electrical component.

  **Modelica.Elec 
  trical.Analog.L 
  ines.**         

  M\_Oline        New multiple line model, both the number of lines and
                  the number of segmants choosable.

  **Modelica.Elec 
  trical.Analog.S 
  emiconductors.* 
  *               

  ZDiode          Zener Diode with 3 working areas and simple thyristor
  Thyristor       model.

  **Modelica.Elec 
  trical.MultiPha 
  se.Ideal.**     

  OpenerWithArc   New switches with simple arc model (as in
  CloserWithArc   Modelica.Electrical.Analog.Ideal.

  **Modelica.Mech 
  anics.MultiBody 
  .Examples.Eleme 
  ntary.**        

  RollingWheel    New examples to demonstrate the usage of new components.
    ~ RollingWhee 
  lSetDriving     
      RollingWhee 
  lSetPulling     
                  
                  

  **Modelica.Mech 
  anics.MultiBody 
  .Joints.**      

  RollingWheel    New joints (no mass, no inertia) that describe an ideal
    ~ RollingWhee rolling wheel and a ideal rolling wheel set consisting
  lSet            of two wheels rolling on the plane z=0.
                  
                  

  **Modelica.Mech 
  anics.MultiBody 
  .Parts.**       

  RollingWheel    New ideal rolling wheel and ideal rolling wheel set
    ~ RollingWhee consisting of two wheels rolling on the plane z=0.
  lSet            
                  
                  

  **Modelica.Mech 
  anics.MultiBody 
  .Visualizers.** 

  Ground          New model to visualize the ground (box at z=0).

  **Modelica.Mech 
  anics.Rotationa 
  l.Interfaces.** 

  PartialElementa New partial model with one and two flanges and the
  ryOneFlangeAndS support flange with a much simpler implementation as
  upport2         previously.
    ~ PartialElem 
  entaryTwoFlange 
  sAndSupport2    
                  
                  

  **Modelica.Mech 
  anics.Translati 
  onal.Interfaces 
  .**             

  PartialElementa New partial model with one and two flanges and the
  ryOneFlangeAndS support flange with a much simpler implementation as
  upport2         previously.
    ~ PartialElem 
  entaryTwoFlange 
  sAndSupport2    
                  
                  

  **Modelica.Medi 
  a.IdealGases.Co 
  mmon.MixtureGas 
  Nasa.**         

  setSmoothState  Return thermodynamic state so that it smoothly
                  approximates: if x \> 0 then state\_a else state\_b.

  **Modelica.Util 
  ities.Internal. 
  **              

  PartialModelica New package containing the interface description of
  Services        models and functions that require a tool dependent
                  implementation (currently only "Shape" for 3-dim.
                  animation, but will be extended in the future)

  **Modelica.Ther 
  mal.HeatTransfe 
  r.Components.** 

  ThermalCollecto New auxiliary model to collect the heat flows from m
  r               heatports to a single heatport; useful for multiphase
                  resistors (with heatports) as a junction of the m
                  heatports.

  **Modelica.Icon 
  s.**            

  VariantLibrary  New icons (VariantLibrary and BaseClassLibrary have been
    ~ BaseClassLi moved from Modelica\_Fluid.Icons to this place).
  brary           
      ObsoleteMod 
  el              
                  
                  

  **Modelica.SIun 
  its.**          

  ElectricalForce New type added (\#190).
  Constant        

  **Modelica.SIun 
  its.Conversions 
  .**             

  from\_Hz        New functions to convert between frequency [Hz] and
    ~ to\_Hz      angular velocity [1/s]. (\#156)
                  
                  
  --------------- --------------------------------------------------------

> The following **existing components** have been **improved** in a

**backward compatible** way:

  ------------------- ----------------------------------------------------
  **Modelica.**       

  Blocks Mechanics    Provided missing parameter values for examples
  StateGraph          (these parameters had only start values)

  **Modelica.Electric 
  al.Analog.Basic**   

  Resistor,           Conditional heatport added for coupling to thermal
  Conductor,          network.
  VariableResistor,   
  VariableConductor   

  **Modelica.Electric 
  al.Analog.Ideal**   

  Thyristors,         Conditional heatport added for coupling to thermal
  Switches,           network.
  IdealDiode          

  **Modelica.Electric 
  al.Analog.Semicondu 
  ctors**             

  Diode, ZDiode,      Conditional heatport added for coupling to thermal
  PMOS, NMOS, NPN,    network.
  PNP                 

  **Modelica.Electric 
  al.MultiPhase.Basic 
  **                  

  Resistor,           Conditional heatport added for coupling to thermal
  Conductor,          network (as in Modelica.Electrical.Analog).
  VariableResistor,   
  VariableConductor   

  **Modelica.Electric 
  al.MultiPhase.Ideal 
  **                  

  Thyristors,         Conditional heatport added for coupling to thermal
  Switches,           network (as in Modelica.Electrical.Analog).
  IdealDiode          

  **Modelica.Mechanic 
  s.MultiBody.Visuali 
  zers.Advanced.**    

  Shape               New implementation by inheriting from
                      ModelicaServices. This allows a tool vendor to
                      provide its own implementation of Shape.

  **Modelica.StateGra 
  ph.**               

  Examples            Introduced "StateGraphRoot" on the top level of all
                      example models.

  **Modelica.StateGra 
  ph.Interfaces.**    

  StateGraphRoot      Replaced the wrong Modelica code "flow output Real
  PartialCompositeSte xxx" by "Real dummy; flow Real xxx;". As a side
  p                   effect, several "blocks" had to be changed to
  CompositeStepState  "models".

  PartialStep         Changed model by packing the protected outer
                      connecter in to a model. Otherwise, there might be
                      differences in the sign of the flow variable in
                      Modelica 3.0 and 3.1.

  **Modelica.Utilitie 
  s.Examples.**       

  expression          Changed local variable "operator" to "opString"
                      since "operator" is a reserved keyword in Modelica
                      3.1
  ------------------- ----------------------------------------------------

> The following **uncritical errors** have been fixed (i.e., errors that

do **not** lead to wrong simulation results, but, e.g., units are wrong
or errors in documentation):

  --------- --------------------------------------------------------------
  **Modelic 
  a.**      

  Many      Removed wrong usages of annotations fillColor and fillPattern
  models    in text annotations (\#155, \#185).

  **Modelic 
  a.Electri 
  cal.Machi 
  nes**     

  All       The conditional heatports of the instantiated resistors (which
  machine   are new in Modelica.Electrical.Analog and
  models    Modelica.Electrical.MultiPhase) are finally switched off until
            a thermal connector design for machines is implemented.

  **Modelic 
  a.Media.A 
  ir.MoistA 
  ir**      

  saturatio For these three functions, an error in the `derivative`
  nPressure annotation was corrected. However, the effect of this bug was
  Liquid    minor, as a Modelica tool was allowed to compute derivatives
    ~ subli automatically via the `smoothOrder` annotation.
  mationPre 
  ssureIce  
      satur 
  ationPres 
  sure      
            
            

  **Modelic 
  a.Math.Ma 
  trices.** 

  eigenValu Wrong documentation corrected (\#162)
  es        
  --------- --------------------------------------------------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image31](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_3\_0\_1
=======================================================================================================================================================================================================

::

This Modelica package is provided under the [Modelica License
2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2) and no
longer under Modelica License 1.1. There are the following reasons why
the Modelica Association changes from Modelica License 1.1 to this new
license text (note, the text below is not a legal interpretation of the
Modelica License 2. In case of a conflict, the language of the license
shall prevail):

1.  The rights of licensor and licensee are much more clearly defined.
    For example:

    -   The licensed work (Original Work) can be used in unmodified form
        in open source and commercial software (the licensee cannot
        change the license and the work must be provided without fees)
    -   If a model component is copied out of a Modelica package under
        Modelica License 2 and is modified in order to adapt it to the
        needs of the modeler, then the result can be licensed under any
        license (including a commercial license).
    -   It is practically not possible to change the license of a
        Modelica package under Modelica License 2 to another license,
        i.e., a licensee cannot change the license by adding material or
        changing classes, so the work must remain under Modelica License
        2 (to be more precise, if the licensee makes modifications to
        the Original Work "which represents, as a whole, an original
        work of authorship", he/she can change the license to another
        license. However, for a Modelica package this would require a
        lot of changes which is usually unrealistic).
    -   If an executable is constructed using a Modelica package under
        Modelica License 2, then this executable can be licensed under
        any license (including a commercial license).

    We hope that this compromise between open source contributors,
    commercial Modelica environments and Modelica users will motivate
    even more people to provide their Modelica packages freely under the
    Modelica License 2.
2.  There are several new provisions that shall make law suites against
    licensors and licensees more unlikely (so the small risk is further
    reduced).

> The following **new components** have been added to **existing**

libraries:

  ------------ -----------------------------------------------------------
  **Electrical 
  .Analog.Basi 
  c.**         

  M\_Transform Transformer, with the possibility to choose the number of
  er           inductors. The inductances and the coupled inductances can
               be chosen arbitrarily.

  **Electrical 
  .Analog.Line 
  s.**         

  M\_OLine     Segmented line model that enables the use of multiple
               lines, that means, the number of segments and the number of
               single lines can be chosen by the user. The model allows to
               investigate phenomena at multiple lines like mutual
               magnetic or capacitive influence.

  **Mechanics. 
  Translationa 
  l.Components 
  .Examples.** 

  Brake        Demonstrates the usage of the translational brake
               component.

  **Media.Inte 
  rfaces.Parti 
  alMedium.**  

  ThermoStates Enumeration type for independent variables to identify the
               independent variables of the medium (pT, ph, phX, pTX,
               dTX).
                 ~ An implementation of this enumeration is provided for
                   every medium. (This is useful for fluid libraries that
                   do not use the PartialMedium.BaseProperties model).
               
               

  setSmoothSta Function that returns the thermodynamic state which
  te           smoothly approximates: if x \> 0 then state\_a else
               state\_b.
                 ~ (This is useful for pressure drop components in fluid
                   libraries where the upstream density and/or viscosity
                   has to be computed and these properties should be
                   smooth a zero mass flow rate) An implementation of this
                   function is provided for every medium.
               
               

  **Media.Comm 
  on.**        

  smoothStep   Approximation of a general step, such that the
               characteristic is continuous and differentiable.

  **Media.User 
  sGuide.**    

  Future       Short description of goals and changes of upcoming release
               of Modelica.Media.

  **Media.Medi 
  a.Air.MoistA 
  ir.**        

  isentropicEx Implemented Missing Function from interface.
  ponent       

  isentropicEn Implemented function that approximates the isentropic
  thalpyApprox enthalpy change. This is only correct as long as there is
  imation      no liquid in the stream.
  ------------ -----------------------------------------------------------

> The following **existing components** have been **changed** (in a

**backward compatible** way):

  ------------------------ ------------------------------------------------
  **Mechanics.Rotational.I 
  nterfaces.**             

  PartialFriction          Improvement of friction model so that in certain
                           situations the number of iterations is much
                           smaller.

  **Mechanics.Translationa 
  l.Components.Examples.** 

  Friction                 Added a third variant, where friction is
                           modelled with the SupportFriction component.

  **Mechanics.Translationa 
  l.Components.**          

  MassWithStopAndFriction  Improvement of friction model so that in certain
                           situations the number of iterations is much
                           smaller.

  **Mechanics.Translationa 
  l.Interfaces.**          

  PartialFriction          Improvement of friction model so that in certain
                           situations the number of iterations is much
                           smaller.

  **Media.Examples.**      

  SimpleLiquidWater        Added equations to test the new
    ~ IdealGasH20          setSmoothState(..) functions including the
      WaterIF97            analytic derivatives of these functions.
      MixtureGases         
      MoistAir             
                           
                           

  **Media.Interfaces.Parti 
  alLinearFluid.**         

  setState\_pTX            Rewritten function in one statement so that it
    ~ setState\_phX        is usually inlined.
      setState\_psX        
      setState\_dTX        
                           
                           

  **Media.Interfaces.Parti 
  alLinearFluid.**         

  consistent use of        Change was done to achieve consistency with
  reference\_d instead of  analytic inverse functions.
  density(state            

  **Media.Air.MoistAir.**  

  T\_phX                   Interval of nonlinear solver to compute T from
                           p,h,X changed from 200..6000 to 240 ..400 K.
  ------------------------ ------------------------------------------------

> The following **critical errors** have been fixed (i.e., errors that

can lead to wrong simulation results):

  ----- ------------------------------------------------------------------
  **Mec 
  hanic 
  s.Mul 
  tiBod 
  y.For 
  ces** 

  World Parameter "ResolveInFrame" was not propagated and therefore always
  Torqu the default (resolved in world frame) was used, independently of
  e     the setting of this parameter.

  World Parameter "ResolveInFrame" was not propagated and therefore always
  Force the default (resolved in world frame) was used, independently of
  AndTo the setting of this parameter.
  rque    ~ Furthermore, internally WorldTorque was used instead of
            Internal.BasicWorldTorque and therefore the visualization of
            worldTorque was performed twice.
        
        

  **Mec 
  hanic 
  s.Mul 
  tiBod 
  y.Sen 
  sors* 
  *     

  Absol Velocity, acceleration and angular acceleration were computed by
  uteSe differentiating in the resolveInFrame frame. This has been
  nsor  corrected, by first transforming the vectors in to the world
        frame, differentiating here and then transforming into
        resolveInFrame. The parameter in the Advanced menue
        resolveInFrameAfterDifferentiation is then superfluous and was
        removed .

  Absol The velocity was computed by differentiating in the resolveInFrame
  uteVe frame. This has been corrected, by first transforming the velocity
  locit in to the world frame, differentiating here and then transforming
  y     into resolveInFrame

  Relat If resolveInFrame <\> frame\_resolve and
  iveSe resolveInFrameAfterDifferentiation = frame\_resolve, a translation
  nsor  error occured, since frame\_resolve was not enabled in this
        situation. This has been corrected.

  Relat The velocity has have been computed by differentiating in the
  iveVe resolveInFrame frame. This has been corrected, by first
  locit transforming the relative position in to frame\_a, differentiating
  y     here and then transforming into resolveInFrame

  Trans The transformation was wrong, since the parameters frame\_r\_in
  formR and frame\_r\_out have not been propagated to the submodel that
  elati performs the transformation. This has been corrected.
  veVec 
  tor   

  **Mec 
  hanic 
  s.Tra 
  nslat 
  ional 
  .Comp 
  onent 
  s.**  

  Suppo The sign of the friction force was wrong and therefore friction
  rtFri accelerated instead of decelerated. This was fixed.
  ction 
    ~ B 
  rake  
        
        

  Suppo The component was only correct for fixed support. This was
  rtFri corrected.
  ction 

  **Med 
  ia.In 
  terfa 
  ces.* 
  *     

  Parti BaseProperties.p was not defined as preferred state and
  alSim BaseProperties.T was always defined as preferred state. This has
  pleMe been fixed by Defining p,T as preferred state if parameter
  dium  preferredMediumState = true. This error had the effect that mass m
    ~ P is selected as state instead of p and if default initialization is
  artia used then m=0 could give not the expected behavior. This means,
  lSimp simulation is not wrong but the numerics is not as good and if a
  leIde model relies on default initial values, the result could be not as
  alGas expected.
  Mediu 
  m     
        
        
  ----- ------------------------------------------------------------------

> The following **uncritical errors** have been fixed (i.e., errors that

do **not** lead to wrong simulation results, but, e.g., units are wrong
or errors in documentation):

  --------------- --------------------------------------------------------
  **Blocks.Math.* 
  *               

  InverseBlockCon Changed annotation preserveAspectRatio from true to
  straint         false.

  **Blocks.Source 
  s.**            

  RealExpression  Changed annotation preserveAspectRatio from true to
    ~ IntegerExpr false.
  ession          
      BooleanExpr 
  ession          
                  
                  

  **Electrical.An 
  alog.Basic.**   

  SaturatingInduc Replaced non-standard "arctan" by "atan" function.
  tor             

  **Modelica.Elec 
  trical.Digital. 
  **              

  UsersGuide      Removed empty documentation placeholders and added the
                  missing release comment for version 1.0.7

  **Modelica.Mech 
  anics.Translati 
  onal.Components 
  .**             

  MassWithStopAnd Changed usage of reinit(..), in order that it appears
  Friction        only once for one variable according to the language
                  specification (if a tool could simulate the model, there
                  is no difference).

  **Media.Interfa 
  ces.PartialSimp 
  leMedium**      

  pressure        Missing functions added.
    ~ temperature 
      density     
      specificEnt 
  halpy           
                  
                  
  --------------- --------------------------------------------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image32](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_3\_0
====================================================================================================================================================================================================

::

Version 3.0 is **not** backward compatible to previous versions. A
conversion script is provided to transform models and libraries of
previous versions to the new version. Therefore, conversion should be
automatic.

The following changes are present for the whole library:

-   In the Modelican language version 3.0, several restrictions have
    been introduced to allow better checking, e.g., models on all levels
    must be balanced (number of equations = number of unknown variables
    -unknown variables that have to be defined when using the
    component). A few models of the Modelica Standard Library did not
    fulfill these new restrictions and had either to be moved to library
    ObsoleteModelica3 (e.g., Blocks.Math.TwoInputs) or had to be
    differently implemented (e.g.,
    Media.Interfaces.PartialMedium.BaseProperties). The Modelica
    Standard Library version 3.0 fulfills all the restrictions of the
    Modelica Language version 3.0.
-   The graphical annotations describing the layout of icon and diagram
    layer are changed from Modelica language version 1 to Modelica
    language version 3. This gives several significant improvements:
    Especially, the coordinate systems of icon and diagram layers are no
    longer coupled and therefore the size of the icon layer can be
    changed independently of the size of the diagram layer. Also it can
    be defined that the aspect ratio of a component icon is kept when
    changing its size in a model. This flag is set so that all icons of
    the Modelica Standard Library keep its aspect ratios. This is
    slightly non-backward compatible: If the aspect ratio was not kept
    when using a component from the Modelica Standard Library, it is now
    resized so that the aspect ratio is maintained.
-   All non-standard annotations removed by:
      ~ (1) Removing the annotation since without effect (e.g.,

    "\_\_Dymola\_experimentSetupOutput", "Window", "Terminal" removed).
      ~ (2) Renaming the annotation to a standard name (e.g., "Hide"
            renamed

    to "HideResult").
      ~ (3) Renaming the annotation to a vendor specific name (e.g.,

    "checkBox" renamed to "\_\_Dymola\_checkBox").
-   All emulated enumerations (defined via packages and constants) have
    been replaced by "real" enumerations. User models are automatically
    correctly converted, provided the user models used the package
    constants previously. **Existing models that use directly literal
    values for enumerations, might give in some cases wrong results**
    (if the first constant of the emulated enumeration had value zero,
    whereas the first value of an enumeration is one).
-   The operator "cardinality" will be removed in one of the next
    versions of the Modelica language, since it is a reflective operator
    and its usage significantly reduces the possibilities of advanced
    model checks (e.g., to guarantee that a model is "balanced", i.e.,
    the number of equations and unknowns is identical, for all valid
    usages of the component). As a preparation for this change, all
    models that contain the "cardinality(..)" operator are rewritten: If
    possible the operator is removed. If this is not possible, it is
    only used in asserts to check that, e.g., a connector is connected
    at least once or is connected exactly once. In the next Modelica
    language version new language elements will be introduced to
    specifiy such a property check without the cardinality operator.
    Once these language elements are available, the cardinality operator
    will be removed completely from the Modelica Standard Library. The
    changes with respect to the cardinality(..) operator are usually not
    backward compatible. This is the reason for the changes of the
    Rotational and Translational library (see below).
-   The design of the **Rotational** and **Translational** libraries
    have been changed (especially to remove the cardinality(..)
    operator, see above):

    -   Components have a **useSupport** flag to enable or disable a
        support flange. If the support flange is enabled, it must be
        connected. If it is disabled, it must not be connected and the
        component is then internally grounded. The grounding is
        visualized in the icon.
    -   The relative angle/distance and the relative speed of all
        force/torque elements (that need the relative speed) are by
        default defined with "StateSelect.prefer", i.e., to use these
        variables as preferred states. This improves the numerics if the
        absolute angle or the absolute distance are continuously
        increasing during operation (e.g., driving shaft of the wheels
        of a car). The effect is that relative angles/distances and
        speeds are used as states and the size of these variables is
        limited. Previously, the default was to use the absolute
        angle/distance and absolute speed of every inertia/mass which
        has the disadvantage that the absolute angle and or distance are
        state variables that grow in size continuously. A significant
        advantage is also, that default initialization is usually
        better, because a default value of zero for a relative
        angle/distance is usually what the user would like to have.
        Previously, say, the load was initialized to a non-zero angle
        and then the elastically coupled motor inertia had to be
        explicitly also initialized with this value. This is now, no
        longer needed. Since the default nominal value of 1 is usually
        too large for a relative quantity, the nominal values of the
        relative angle/distance was changed to 1e-4.
    -   The two libraries have been restructured in sublibraries to cope
        with the growing number of components.
    -   Finally, the Translational library has been made as similar as
        possible to the Rotational library by, e.g., adding missing
        components.

-   The initialization of the MultiBody, Rotational and Translational
    libraries have been signficantly simplified by removing the
    "initType" parameters and only using start/fixed values. This design
    assumes that a tool has special support for start/fixed values in
    the parameter menu.
-   Nearly all parameters defined in the Modelica Standard Library had
    been defined with a default equation, e.g.,

        parameter Modelica.SIunits.Resistance R=1; 

    Physical parameters, such as a resistance, mass, gear ratio, do not
    have a meaningful default and in nearly all cases, the user of the
    corresponding component has to provide values for such parameters.
    If the user forgets this, a tool cannot provide diagnostics, since a
    default value is present in the library (such as 1 Ohm for the
    resistance). In most cases the model will simulate but will give
    wrong results due to wrong parameter values. To improve this
    situation, all physical parameter declarations in the Modelica
    Standard Library have been changed, so that the previous default
    becomes a start value. For example, the above declaration is changed
    to:

        parameter Modelica.SIunits.Resistance R(start=1);  

    This is a backward compatible change and completely equivalent from
    the perspective of the Modelica language. It is, however, advised
    that tools will print a warning or optionally an error message, if
    the start value of a parameter is defined, but no value for the
    parameter is given via a modification. Furthermore, it is expected,
    that the input field of a parameter menu is empty, if no default
    equation is defined, but only a start value. This shows clearly to
    the modeler that a value has to be provided.

> The following **new components** have been added to **existing**

libraries (note, the names in paranthesis are the new sublibrary names
that are introduced in version 3.0):

  ------------------- -----------------------------------------------------
  **Blocks.Examples.* 
  *                   

  InverseModel        Demonstrates the construction of an inverse model.

  **Blocks.Math.**    

  InverseBlockConstra Construct inverse model by requiring that two inputs
  ints                and two outputs are identical (replaces the
                      previously, unbalanced, TwoInputs and TwoOutputs
                      blocks).

  **Electrical.Machin 
  es.Utilities**      

  TransformerData     A record that calculates required impedances
                      (parameters) from nominal data of transformers.

  **Mechanics.MultiBo 
  dy.Examples.Rotatio 
  nal3DEffects**      

  GyroscopicEffects   New examples to demonstrate the usage of the
    ~ ActuatedDrive   Rotational library in combination with multi-body
      MovingActuatedD components.
  rive                
      GearConstraint  
                      
                      

  **Mechanics.MultiBo 
  dy.Sensors**        

  AbsolutePosition    New sensors to measure one vector.
    ~ AbsoluteVelocit 
  y                   
      AbsoluteAngles  
      AbsoluteAngular 
  Velocity            
      RelativePositio 
  n                   
      RelativeVelocit 
  y                   
      RelativeAngles  
      RelativeAngular 
  Velocity            
                      
                      

  TransformAbsoluteVe Transform absolute and/or relative vector into
  ctor                another frame.
    ~ TransformRelati 
  veVector            
                      
                      

  **Mechanics.Rotatio 
  nal.(Components)**  

  Disc                Right flange is rotated by a fixed angle with respect
                      to left flange

  IdealRollingWheel   Simple 1-dim. model of an ideal rolling wheel without
                      inertia

  **Mechanics.Transla 
  tional.Sensors**    

  RelPositionSensor   Relative position sensor, i.e., distance between two
  RelSpeedSensor      flanges
  RelAccSensor          ~ Relative speed sensor Relative acceleration
  PowerSensor             sensor Ideal power sensor
                      
                      

  **Mechanics.Transla 
  tional(.Components) 
  **                  

  SupportFriction     Model of friction due to support
  Brake                 ~ Model of a brake, base on Coulomb friction
  InitializeFlange        Initializes a flange with pre-defined postion,
                          speed and acceleration .
                      
                      

  **Mechanics.Transla 
  tional(.Sources)**  

  Force2              Force acting on 2 flanges
  LinearSpeedDependen   ~ Force linearly dependent on flange speed Force
  tForce                  quadratic dependent on flange speed Constant
  QuadraticSpeedDepen     force source Constant speed source Force step
  dentForce           
  ConstantForce       
  ConstantSpeed       
  ForceStep           
  ------------------- -----------------------------------------------------

> The following **existing components** have been **changed** in a

**non-backward compatible** way (the conversion script transforms models
and libraries of previous versions to the new version. Therefore,
conversion should be automatic):

  -- ---------------------------------------------------------------------
  ** 
  Bl 
  oc 
  ks 
  .C 
  on 
  ti 
  nu 
  ou 
  s. 
  ** 

  Cr New parameter "normalized" to define whether filter is provided in
  it normalized or non-normalized form. Default is "normalized = true".
  ic The previous implementation was a non-normalized filter. The
  al conversion script automatically introduces the modifier
  Da "normalized=false" for existing models.
  mp 
  in 
  g  

  ** 
  Bl 
  oc 
  ks 
  .I 
  nt 
  er 
  fa 
  ce 
  s. 
  ** 

  Re Removed "SignalType", since extending from a replaceable class and
  al this is not allowed in Modelica 3. The conversion script removes
  In modifiers to SignalType.
  pu 
  t  
     
  ~  
  Re 
  al 
  Ou 
  tp 
  ut 
     
     

  Re Moved to library ObsoleteModelica3, since these connectors are no
  al longer allowed in Modelica 3
  Si   ~ (prefixes input and/or output are required).
  gn 
  al 
     
  ~  
  In 
  te 
  ge 
  rS 
  ig 
  na 
  l  
     
     
  Bo 
  ol 
  ea 
  nS 
  ig 
  na 
  l  
     
     

  ** 
  Bl 
  oc 
  ks 
  .I 
  nt 
  er 
  fa 
  ce 
  s. 
  Ad 
  ap 
  to 
  rs 
  .* 
  *  

  Ad Moved to library ObsoleteModelica3, since the models are not
  ap "balanced". These are completely obsolete adaptors between the Real,
  to Boolean, Integer signal connectors of version 1.6 and version ≥ 2.1
  rR of the Modelica Standard Library.
  ea 
  l  
     
  ~  
  Ad 
  ap 
  to 
  rB 
  oo 
  le 
  an 
     
     
  Ad 
  ap 
  to 
  rI 
  nt 
  eg 
  er 
     
     

  ** 
  Bl 
  oc 
  ks 
  .M 
  at 
  h. 
  ** 

  Co Moved to library ObsoleteModelica3, since extending from a
  nv replaceable class and this is not allowed in Modelica 3.
  er   ~ It would be possible to rewrite this model to use a replaceable
  tA     component. However, the information about the conversion cannot
  ll     be visualized in the icon in this case.
  Un 
  it 
  s  

  ** 
  Bl 
  oc 
  ks 
  .M 
  at 
  h. 
  Un 
  it 
  Co 
  nv 
  er 
  si 
  on 
  s. 
  ** 

  Tw Moved to library ObsoleteModelica3, since the models are not
  oI "balanced". A new component "InverseBlockConstraints" is provided
  np instead that has the same feature, but is "balanced".
  ut 
  s  
     
  ~  
  Tw 
  oO 
  ut 
  pu 
  ts 
     
     

  ** 
  El 
  ec 
  tr 
  ic 
  al 
  .A 
  na 
  lo 
  g. 
  Ba 
  is 
  c. 
  ** 

  He The heatPort has to be connected; otherwise the component Resistor
  at (without heatPort) has to be used.
  in   ~ cardinality() is only used to check whether the heatPort is
  gR     connected.
  es 
  is 
  to 
  r  

  ** 
  El 
  ec 
  tr 
  ic 
  al 
  .M 
  ul 
  ti 
  Ph 
  as 
  e. 
  Ex 
  am 
  pl 
  es 
  .* 
  *  

     Changed the instance names of components used in the examples to more
     up-to-date style.

  ** 
  El 
  ec 
  tr 
  ic 
  al 
  .M 
  ac 
  hi 
  ne 
  s. 
  ** 

     Moved package `Machines.Examples.Utilities` to `Machines.Utilities`

     Removed all nonSIunits; especially in DCMachines
       ~ parameter NonSIunits.AngularVelocity\_rpm rpmNominal was replaced
         by parameter SIunits.AngularVelocity wNominal
     
     

     Changed the following component variable and parameter names to be
     more concise:
       ~ Removed suffix "DamperCage" from all synchronous induction
         machines since the user can choose whether the damper cage is
         present or not.
     
     `RotorAngle ... RotorDisplacementAngle                               
                       J_Rotor ... Jr                                     
                 Rr ........ Rrd (damper of synchronous induction machines
     )                                                 Lrsigma ... Lrsigma
     d (damper of synchronous induction machines)                         
                             phi_mechanical ... phiMechanical             
                                         w_mechanical ..... wMechanical   
                                                   rpm_mechanical ... rpmM
     echanical                                                 tau_electri
     cal ... tauElectrical                                                
      tau_shaft ........ tauShaft                                         
             TurnsRatio ....... turnsRatio    (AIMS)                      
                                VsNom ............ VsNominal     (AIMS)   
                                                   Vr_Lr ............ VrLo
     ckedRotor (AIMS)                                                 Damp
     erCage ....... useDamperCage (synchronous induction machines)        
                                              V0 ............... VsOpenCic
     uit  (SMPM)                                                 Ie0 .....
     ......... IeOpenCicuit  (SMEE)`

  In Moved as much code as possible from specific machine models to
  te partials to reduce redundant code.
  rf 
  ac 
  es 
  .  

  In Removed to avoid cardinality; instead, the following solution has
  te been implemented:
  rf 
  ac 
  es 
  .A 
  da 
  pt 
  er 

  Se Introduced
  ns `parameter Boolean useSupport=false "enable / disable (=fixed stator)
  or  support"`
  s.   ~ The rotational support connector is only present with
  Ro     `useSupport = true;` otherwise the stator is fixed internally.
  to 
  rD 
  is 
  pl 
  ac 
  em 
  en 
  tA 
  ng 
  le 
  In 
  te 
  rf 
  ac 
  es 
  .P 
  ar 
  ti 
  al 
  Ba 
  si 
  cM 
  ac 
  hi 
  ne 

  ** 
  El 
  ec 
  tr 
  ic 
  al 
  .M 
  ac 
  hi 
  ne 
  s. 
  Ex 
  am 
  pl 
  es 
  .* 
  *  

     Changed the names of the examples to more meaninglful names.
       ~ Changed the instance names of components used in the examples to
         more up-to-date style.
     
     

  SM Initialization of `smee.phiMechanical` with `fixed=true`
  EE 
  \_ 
  Ge 
  ne 
  ra 
  to 
  r  

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  ** 

  Wo Changed default value of parameter driveTrainMechanics3D from false
  rl to true.
  d    ~ 3-dim. effects in Rotor1D, Mounting1D and BevelGear1D are
         therefore taken into account by default (previously this was only
         the case, if world.driveTrainMechanics3D was explicitly set).
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  Fo 
  rc 
  es 
  .* 
  *  

  Fr Models removed, since functionality now available via Force, Torque,
  am ForceAndTorque
  eF 
  or 
  ce 
     
  ~  
  Fr 
  am 
  eT 
  or 
  qu 
  e  
     
     
  Fr 
  am 
  eF 
  or 
  ce 
  An 
  dT 
  or 
  qu 
  e  
     
     

  Wo Connector frame\_resolve is optionally enabled via parameter
  rl resolveInFrame . Forces and torques and be resolved in all meaningful
  dF frames defined by enumeration resolveInFrame.
  or 
  ce 
     
  ~  
  Wo 
  rl 
  dT 
  or 
  qu 
  e  
     
     
  Wo 
  rl 
  dF 
  or 
  ce 
  An 
  dT 
  or 
  qu 
  e  
     
     
  Fo 
  rc 
  e  
     
     
  To 
  rq 
  ue 
     
     
  Fo 
  rc 
  eA 
  nd 
  To 
  rq 
  ue 
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  Fr 
  am 
  es 
  .* 
  *  

  le Removed functions, since available also in Modelica.Math.Vectors The
  ng conversion script changes the references correspondingly.
  th 
     
  ~  
  no 
  rm 
  al 
  iz 
  e  
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  Jo 
  in 
  ts 
  .* 
  *  

  Pr Changed initialization, by replacing initial value parameters with
  is start/fixed attributes.
  ma   ~ When start/fixed attributes are properly supported in the
  ti     parameter menu by a Modelica tool, the initialization is
  c      considerably simplified for the user and the implementation is
         much simpler. Replaced parameter "enforceStates" by the more
  ~      general built-in enumeration stateSelect=StateSelection.xxx. The
  Ac     conversion script automatically transforms from the "old" to the
  tu     "new" forms.
  at 
  ed 
  Pr 
  is 
  ma 
  ti 
  c  
     
     
  Re 
  vo 
  lu 
  te 
     
     
  Ac 
  tu 
  at 
  ed 
  Re 
  vo 
  lu 
  te 
     
     
  Cy 
  li 
  nd 
  ri 
  ca 
  l  
     
     
  Un 
  iv 
  er 
  sa 
  l  
     
     
  Pl 
  an 
  ar 
     
     
  Sp 
  he 
  ri 
  ca 
  l  
     
     
  Fr 
  ee 
  Mo 
  ti 
  on 
     
     

  Re Parameter "planarCutJoint" in the "Advanced" menu of "Revolute" and
  vo of "ActuatedRevolute" removed.
  lu   ~ A new joint "RevolutePlanarLoopConstraint" introduced that
  te     defines the constraints of a revolute joint as cut-joint in a
         planar loop. This change was needed in order that the revolute
  ~      joint can be properly used
  Ac 
  tu in advanced model checking.
  at   ~ ActuatedRevolute joint removed. Flange connectors of Revolute
  ed     joint can be enabled with parameter useAxisFlange.
  Re 
  vo 
  lu 
  te 
     
     

  Pr ActuatedPrismatic joint removed. Flange connectors of Prismatic joint
  is   ~ can be enabled with parameter useAxisFlange.
  ma 
  ti 
  c  
     
  ~  
  Ac 
  tu 
  at 
  ed 
  Pr 
  is 
  ma 
  ti 
  c  
     
     

  As Assembly joint implementation slightly changed, so that annotation
  se "structurallyIncomplete" could be removed (all Assembly joint models
  mb are now "balanced").
  li 
  es 

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  Jo 
  in 
  ts 
  .I 
  nt 
  er 
  na 
  l* 
  *  

  Re These joints should not be used by a user of the MultiBody library.
  vo They are only provided to built-up the
  lu MultiBody.Joints.Assemblies.JointXYZ joints. These two joints have
  te been changed in a slightly not backward compatible way, in order that
  Wi the usage in the Assemblies.JointXYZ joints results in balanced
  th models (**no conversion is provided for this change since the user
  Le should not have used these joints and the conversion would be too
  ng complicated**): In releases before version 3.0 of the Modelica
  th Standard Library, it was possible to activate the torque/force
  Co projection equation (= cut-torque/-force projected to the
  ns rotation/translation axis must be identical to the drive torque/force
  tr of flange axis) via parameter **axisTorqueBalance**. This is no
  ai longer possible, since otherwise this model would not be "balanced"
  nt (= same number of unknowns as equations). Instead, when using this
     model in version 3.0 and later versions, the torque/force projection
  ~  equation must be provided in the Advanced menu of joints
  Pr Joints.SphericalSpherical and Joints.UniversalSpherical via the new
  is parameter "constraintResidue".
  ma 
  ti 
  cW 
  it 
  hL 
  en 
  gt 
  hC 
  on 
  st 
  ra 
  in 
  t  
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  Pa 
  rt 
  s. 
  ** 

  Bo Changed unit of parameter density from g/cm3 to the SI unit kg/m3 in
  dy order to allow stricter unit checking. The conversion script
  Bo multiplies previous density values with 1000.
  x  
     
  ~  
  Bo 
  dy 
  Cy 
  li 
  nd 
  er 
     
     

  Bo Changed initialization, by replacing initial value parameters with
  dy start/fixed attributes.
       ~ When start/fixed attributes are properly supported in the
  ~      parameter menu by a Modelica tool, the initialization is
  Bo     considerably simplified for the user and the implementation is
  dy     much simpler.
  Sh 
  ap The conversion script automatically transforms from the "old" to the
  e  "new" form of initialization.
     
     
  Bo 
  dy 
  Bo 
  x  
     
     
  Bo 
  dy 
  Cy 
  li 
  nd 
  er 
     
     
  Po 
  in 
  tM 
  as 
  s  
     
     
  Ro 
  to 
  r1 
  D  
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Mu 
  lt 
  iB 
  od 
  y. 
  Se 
  ns 
  or 
  s. 
  ** 

  Ab New design of sensor components: Via Boolean parameters
  so   ~ signal connectors for the respective vectors are
  lu     enabled/disabled. It is not possible to automatically convert
  te     models to this new design. Instead, references in existing models
  Se     are changed to ObsoleteModelice3. This means that these models
  ns     must be manually adapted.
  or 
     
  ~  
  Re 
  la 
  ti 
  ve 
  Se 
  ns 
  or 
     
     
  Cu 
  tF 
  or 
  ce 
  An 
  dT 
  or 
  qu 
  e  
     
     

  Cu Slightly new design. The force and/or torque component can be
  tF resolved in world, frame\_a, or frame\_resolved.
  or   ~ Existing models are automatically converted.
  ce 
     
  ~  
  Cu 
  tT 
  or 
  qu 
  e  
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Ro 
  ta 
  ti 
  on 
  al 
  .* 
  *  

     Moved components to structured sub-packages (Sources, Components)

  In Changed initialization, by replacing initial value parameters with
  er start/fixed attributes.
  ti   ~ When start/fixed attributes are properly supported in the
  a      parameter menu by a Modelica tool, the initialization is
         considerably simplified for the user and the implementation is
  ~      much simpler. Parameter "stateSelection" in "Inertia" and
  Sp     "SpringDamper" replaced by the built-in enumeration
  ri 
  ng stateSelect=StateSelection.xxx. Introduced the "stateSelect"
  Da enumeration in "RelativeStates".
  mp   ~ The conversion script automatically transforms from the "old" to
  er     the "new" forms.
     
     
  Re 
  la 
  ti 
  ve 
  St 
  at 
  es 
     
     

  Lo Renamed gear ratio parameter "i" to "ratio", in order to have a
  ss consistent naming convention.
  yG   ~ Existing models are automatically converted.
  ea 
  r  
     
  ~  
  Ge 
  ar 
  Bo 
  x  
     
     

  Sp Relative quantities (phi\_rel, w\_rel) are used as states, if
  ri possible (due to StateSelect.prefer).
  ng   ~ In most cases, relative states in drive trains are better suited
  Da     as absolute states. This change might give changes in the
  mp     selected states of existing models. This might give rise to
  er     problems if, e.g., the initialization was not completely defined
         in a user model, since the default initialization heuristic may
  ~      give different initial values.
  El 
  as 
  to 
  Ba 
  ck 
  la 
  sh 
     
     
  Cl 
  ut 
  ch 
     
     
  On 
  eW 
  ay 
  Cl 
  ut 
  ch 
     
     

  ** 
  Me 
  ch 
  an 
  ic 
  s. 
  Tr 
  an 
  sl 
  at 
  io 
  na 
  l. 
  ** 

     Moved components to structured sub-packages (Sources, Components)

     Adaptions corresponding to Rotational

  St Renamed to Components.MassWithStopAndFriction to be more concise.
  op   ~ MassWithStopAndFriction is not available with a support
         connector, since the reaction force can't be modeled in a
         meaningful way due to reinit of velocity v. Until a sound
         implementation of a hard stop is available, the old model may be
         used.
     
     

  ** 
  Me 
  di 
  a. 
  ** 

  co The package constant nX = nS, now always, even for single species
  ns media. This also allows to define mixtures with only 1 element. The
  ta package constant nXi=if fixedX then 0 else if reducedX or nS==1 then
  nt nS - 1 else nS. This required that all BaseProperties for single
  nX species media get an additional equation to define the composition X
     as {1.0} (or reference\_X, which is {1.0} for single species). This
  ~  will also mean that all user defined single species media need to be
  co updated by that equation.
  ns 
  ta 
  nt 
     
     
  nX 
  i  
     
     
  co 
  ns 
  ta 
  nt 
     
     
  re 
  fe 
  re 
  nc 
  e\ 
  _X 
     
     
  Ba 
  se 
  Pr 
  op 
  er 
  ti 
  es 
     
     

  ** 
  SI 
  un 
  it 
  s. 
  ** 

  Ce Removed, since no SI unit. The conversion script changes references
  ls to SIunits.Conversions.NonSIunits.Temperature\_degC
  iu 
  sT 
  em 
  pe 
  ra 
  tu 
  re 

  Th Added annotation "\_\_Dymola\_absoluteValue=true/false" in order that
  er unit checking is possible
  mo   ~ (the unit checker needs to know for a unit that has an offset,
  dy     whether it is used as absolute or as a relative number)
  na 
  mi 
  cT 
  em 
  pe 
  ra 
  tu 
  re 
     
  ~  
  Te 
  mp 
  er 
  at 
  ur 
  eD 
  if 
  fe 
  re 
  nc 
  e  
     
     

  ** 
  SI 
  un 
  it 
  s. 
  Co 
  nv 
  er 
  si 
  on 
  s. 
  No 
  nS 
  Iu 
  ni 
  ts 
  .* 
  *  

  Te Added annotation "\_\_Dymola\_absoluteValue=true" in order that unit
  mp checking is possible
  er   ~ (the unit checker needs to know for a unit that has an offset,
  at     whether it is used as absolute or as a relative number)
  ur 
  e\ 
  _d 
  eg 
  C  
     
  ~  
  Te 
  mp 
  er 
  at 
  ur 
  e\ 
  _d 
  eg 
  F  
     
     
  Te 
  mp 
  er 
  at 
  ur 
  e\ 
  _d 
  eg 
  Rk 
     
     

  ** 
  St 
  at 
  eG 
  ra 
  ph 
  .E 
  xa 
  mp 
  le 
  s. 
  ** 

  Co The connectors of the ControlledTanks did not fulfill the new
  nt restrictions of Modelica 3. This has been fixed.
  ro 
  ll 
  ed 
  Ta 
  nk 
  s  

  Ut Replacing inflow, outflow by connectors inflow1, inflow2, outflow1,
  il outflow2 with appropriate input/output prefixes in order to fufill
  it the restrictions of Modelica 3 to arrive at balanced models. No
  ie conversion is provided, since too difficult and since the
  s  non-backward compatible change is in an example.

  ** 
  Th 
  er 
  ma 
  l. 
  Fl 
  ui 
  dH 
  ea 
  tF 
  lo 
  w. 
  Se 
  ns 
  or 
  s. 
  ** 

  >  renamed to:
  pS   ~ PressureSensor
  en 
  so TemperatureSensor RelPressureSensor RelTemperatureSensor
  r  MassFlowSensor VolumeFlowSensor EnthalpyFlowSensor
     
  TS 
  en 
  so 
  r  
  dp 
  Se 
  ns 
  or 
  dT 
  Se 
  ns 
  or 
  m\ 
  _f 
  lo 
  wS 
  en 
  so 
  r  
  V\ 
  _f 
  lo 
  wS 
  en 
  so 
  r  
  H\ 
  _f 
  lo 
  wS 
  en 
  so 
  r  

  ** 
  Th 
  er 
  ma 
  l. 
  Fl 
  ui 
  dH 
  ea 
  tF 
  lo 
  w. 
  So 
  ur 
  ce 
  s. 
  ** 

  Am available as one combined component Ambient
  bi   ~ Boolean parameters usePressureInput and useTemperatureInput
  en     decide whether pressure and/or temperature are constant or
  t      prescribed
  Pr 
  es 
  cr 
  ib 
  ed 
  Am 
  bi 
  en 
  t  

  Co available as one combined component VolumeFlow
  ns   ~ Boolean parameter useVolumeFlowInput decides whether volume flow
  ta     is constant or prescribed
  nt 
  Vo 
  lu 
  me 
  Fl 
  ow 
  Pr 
  es 
  cr 
  ib 
  ed 
  Vo 
  lu 
  me 
  Fl 
  ow 

  Co available as one combined component PressureIncrease
  ns   ~ Boolean parameter usePressureIncreaseInput decides whether
  ta     pressure increase is constant or prescribed
  nt 
  Pr 
  es 
  su 
  re 
  In 
  cr 
  ea 
  se 
  Pr 
  es 
  cr 
  ib 
  ed 
  Pr 
  es 
  su 
  re 
  In 
  cr 
  ea 
  se 

  ** 
  Th 
  er 
  ma 
  l. 
  Fl 
  ui 
  dH 
  ea 
  tF 
  lo 
  w. 
  Ex 
  am 
  pl 
  es 
  .* 
  *  

     Changed the instance names of components used in the examples to more
     up-to-date style.

  ** 
  Th 
  er 
  ma 
  l. 
  He 
  at 
  Tr 
  an 
  sf 
  er 
  .( 
  Co 
  mp 
  on 
  en 
  ts 
  )* 
  *  

  He Initialization changed: SteadyStateStart removed. Instead start/fixed
  at values for T and der\_T (initial temperature and its derivative).
  Ca 
  pa 
  ci 
  to 
  r  

  He Moved components to sub-packages:
  at   ~ Components.HeatCapacitor
  Ca 
  pa Components.ThermalConductor Components.ThermalConvection
  ci Components.BodyRadiation Sensors.TemperatureSensor
  to Sensors.RelTemperatureSensor Sensors.HeatFlowSensor
  r  Sources.FixedTemperature Sources.PrescribedTemperature
  Th Sources.FixedHeatFlow Sources.PrescribedHeatFlow
  er 
  ma 
  lC 
  on 
  du 
  ct 
  or 
  Th 
  er 
  ma 
  lC 
  on 
  ve 
  ct 
  io 
  n  
  Bo 
  dy 
  Ra 
  di 
  at 
  io 
  n  
  Te 
  mp 
  er 
  at 
  ur 
  eS 
  en 
  so 
  r  
  Re 
  lT 
  em 
  pe 
  ra 
  tu 
  re 
  Se 
  ns 
  or 
  He 
  at 
  Fl 
  ow 
  Se 
  ns 
  or 
  Fi 
  xe 
  dT 
  em 
  pe 
  ra 
  tu 
  re 
  Pr 
  es 
  cr 
  ib 
  ed 
  Te 
  mp 
  er 
  at 
  ur 
  e  
  Fi 
  xe 
  dH 
  ea 
  tF 
  lo 
  w  
  Pr 
  es 
  cr 
  ib 
  ed 
  He 
  at 
  Fl 
  ow 

  ** 
  Th 
  er 
  ma 
  l. 
  Fl 
  ui 
  dH 
  ea 
  tF 
  lo 
  w. 
  Ex 
  am 
  pl 
  es 
  .* 
  *  

     Changed the instance names of components used in the examples to more
     up-to-date style.
  -- ---------------------------------------------------------------------

> The following **existing components** have been **improved** in a

**backward compatible** way:

  --------------- --------------------------------------------------------
  **Modelica.\*** Parameter declarations, input and output function
                  arguments without description strings improved
                    ~ by providing meaningful description texts.
                  
                  

  **Modelica.Bloc 
  ks.Continuous.* 
  *               

  TransferFunctio Internal scaling of the controller canonical states
  n               introduced in order to enlarge the range of transfer
                  functions where the default relative tolerance of the
                  simulator is sufficient.

  Butterworth     Documentation improved and plots of the filter
  CriticalDamping characteristics added.

  **Electrical.An 
  alog.Basic.**   

  EMF             New parameter "useSupport" to optionally enable a
                  support connector.

  **Icons.**      

  TranslationalSe Removed drawing from the diagram layer (kept drawing
  nsor            only in icon layer),
    ~ RotationalS   ~ in order that this icon can be used in situations
  ensor               where components are dragged in the diagram layer.
                  
                  

  **Math.Vectors. 
  **              

  normalize       Implementation changed, so that the result is awalys
                  continuous
                    ~ (previously, this was not the case for small
                      vectors: normalize(eps,eps)).
                  
                  

  **Mechanics.Mul 
  tiBody.**       

                  Renamed non-standard keywords defineBranch, defineRoot,
                  definePotentialRoot, isRooted to the standard names:
                    ~ Connections.branch/.root/.potentialRoot/.isRooted.
                  
                  

  Frames          Added annotation "Inline=true" to all one-line functions
                  (which should be all inlined).

  **Mechanics.Mul 
  tiBody.Parts.** 

  Mounting1D      Changed implementation so that no longer modifiers for
    ~ Rotor1D     connector variables are used, because this violates the
      BevelGear1D restrictions on "balanced models" of Modelica 3.
                  
                  

  **Mechanics.Rot 
  ational.**      

  InitializeFlang Changed implementation so that counting unknowns and
  e               equations is possible without actual values of
                  parameters.

  **Thermal.Fluid 
  HeatFlow.Interf 
  aces.Partials.* 
  *               

  TwoPort         Introduced
                  `parameter Real tapT(final min=0, final max=1)=1`
                    ~ that defines the temperature of the heatPort betwen
                      inlet and outlet.
                  
                  

  **StateGraph.** 

  InitialStep     Changed implementation so that no longer modifiers for
    ~ InitialStep output variables are used, because this violates the
  WithSignal      restrictions on "balanced models" of Modelica 3.
      Step        
      StepWithSig 
  nal             
                  
                  
  --------------- --------------------------------------------------------

> The following **critical errors** have been fixed (i.e., errors that

can lead to wrong simulation results):

  ------ -----------------------------------------------------------------
  **Elec 
  trical 
  .Analo 
  g.Exam 
  ples.* 
  *      

  CauerL Wrong calculation of Capacitor1 both in Rn and Rp corrected
  owPass (C=clock/R instead of C=clock\*R)
  SC     

  **Mech 
  anics. 
  MultiB 
  ody.Pa 
  rts.** 

  Rotor1 The 3D reaction torque was not completely correct and gave in
  D      some situations a wrong result. This bug should not influence the
         movement of a multi-body system, but only the constraint torques
         are sometimes not correct.

  **Mech 
  anics. 
  Rotati 
  onal.* 
  *      

  Elasto If the damping torque was too large, the reaction torque could
  Backla "pull" which is unphysical. The component was newly written by
  sh     limiting the damping torque in such a case so that "pulling"
         torques can no longer occur. Furthermore, during initialization
         the characteristics is made continuous to reduce numerical
         errors. The relative angle and relative angular velocities are
         used as states, if possible (StateSelect.prefer), since relative
         quantities lead usually to better behavior.

  Positi The movement of the flange was wrongly defined as absolute; this
  on     is corrected as relative to connector support.
  Speed    ~ For Accelerate, it was necessary to rename RealInput a to
  Accele     a\_ref, as well as the start values phi\_start to phi.start
  rate       and w\_start to w.start. The conversion script performs the
  Move       necessary conversion of existing models automatically.
         
         

  **Medi 
  a.Inte 
  rfaces 
  .**    

  Partia Inconsisteny in reference temperature corrected. This may give
  lSimpl different results for functions:
  eIdeal   ~ specificEnthalpy, specificInternalEnergy,
  GasMed     specificGibbsEnergy, specificHelmholtzEnergy.
  ium    
         

  **Medi 
  a.Air. 
  **     

  specif Small bug in entropy computation of ideal gas mixtures corrected.
  icEntr 
  opy    

  **Medi 
  a.Idea 
  lGases 
  .Commo 
  n.Mixt 
  ureGas 
  Nasa** 

  specif Small bug in entropy computation of ideal gas mixtures corrected.
  icEntr 
  opy    
  ------ -----------------------------------------------------------------

> The following **uncritical errors** have been fixed (i.e., errors that

do **not** lead to wrong simulation results, but, e.g., units are wrong
or errors in documentation):

  --------------------------- --------------------------------------------
  **Blocks.Tables.**          

  CombiTable2D                Documentation improved.

  **Electrica.Digital.Gates** 

  AndGate                     The number of inputs was not correctly
    ~ NandGate OrGate NorGate propagated to the included base model.
      XorGate XnorGate          ~ This gave a translation error, if the
                                  number of inputs was changed (and not
                                  the default used).
                              
                              

  **Electrica.Digital.Sources 
  **                          

  Pulse                       Model differently implemented, so that
                              warning message about "cannot properly
                              initialize" is gone.

  **Mechanics.Rotational.**   

  BearingFriction             Declaration of table parameter changed from
    ~ Clutch OneWayClutch     table[:,:] to table[:,2].
      Brake Gear              
                              
                              

  **Modelica.Mechanics.MultiB 
  ody.Examples.Loops.Utilitie 
  s.**                        

  GasForce                    Unit of variable "press" corrected (from Pa
                              to bar)

  **StateGraph.Examples.**    

  SimpleFriction              The internal parameter k is defined and
                              calculated with the appropriate unit.

  **Thermal.FluidHeatFlow.Int 
  erfaces.Partials.**         

  SimpleFriction              The internal parameter k is defined and
                              calculated with the appropriate unit.
  --------------------------- --------------------------------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image33](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_2\_2\_2
=======================================================================================================================================================================================================

::

Version 2.2.2 is backward compatible to version 2.2.1 and 2.2 with the
following exceptions:

-   Removal of package
    Modelica.Media.Interfaces.PartialTwoPhaseMediumWithCache (this was
    not yet utilized).
-   Removal of the media packages in
    Modelica.Media.IdealGases.SingleGases that are not type compatible
    to Modelica.Media.Interfaces.PartialMedium, because a FluidConstants
    record definition is missing, for details, see
    [Modelica.Media.IdealGases](Modelica_Media_IdealGases.html#Modelica.Media.IdealGases)
    (this is seen as a bug fix).

An overview of the differences between version 2.2.2 and the previous
version 2.2.1 is given below. The exact differences (but without
differences in the documentation) are available in
Differences-Modelica-221-222.html. This comparison file was generated
automatically with Dymolas ModelManagement.compare function.

In this version, **no** new libraries have been added. The
**documentation** of the whole library was improved. Especially, the
documentation is now also available as one pdf file.

> The following **new components** have been added to **existing**

libraries:

**Blocks.Logical.**

TerminateSimulation

Terminate a simulation by a given condition.

**Blocks.Routing.**

RealPassThrough
  ~ IntegerPassThrough BooleanPassThrough

Pass a signal from input to output (useful in combination with a bus due
to restrictions of expandable connectors).

**Blocks.Sources.**

KinematicPTP2

Directly gives q,qd,qdd as output (and not just qdd as KinematicPTP).

**Electrical.Machines.Examples.**

TransformerTestbench

Transformer Testbench

Rectifier6pulse

6-pulse rectifier with 1 transformer

Rectifier12pulse

12-pulse rectifier with 2 transformers

AIMC\_Steinmetz

Asynchronous induction machine squirrel cage with Steinmetz connection

**Electrical.Machines.BasicMachines.Components.**

BasicAIM

Partial model for asynchronous induction machine

BasicSM

Partial model for synchronous induction machine

PartialAirGap

Partial airgap model

BasicDCMachine

Partial model for DC machine

PartialAirGapDC

Partial airgap model of a DC machine

BasicTransformer

Partial model of threephase transformer

PartialCore

Partial model of transformer core with 3 windings

IdealCore

Ideal transformer with 3 windings

**Electrical.Machines.BasicMachines.**

Transformers

Sub-Library for technical 3phase transformers

**Electrical.Machines.Interfaces.**

Adapter

Adapter to model housing of electrical machine

**Math.**

Vectors

New library of functions operating on vectors

atan3

Four quadrant inverse tangens (select solution that is closest to given
angle y0)

asinh

Inverse of sinh (area hyperbolic sine)

acosh

Inverse of cosh (area hyperbolic cosine)

**Math.Vectors**

isEqual

Determine if two Real vectors are numerically identical

norm

Return the p-norm of a vector

length

Return length of a vector (better as norm(), if further symbolic
processing is performed)

normalize

Return normalized vector such that length = 1 and prevent zero-division
for zero vector

reverse

Reverse vector elements (e.g., v[1] becomes last element)

sort

Sort elements of vector in ascending or descending order

**Math.Matrices**

solve2

Solve real system of linear equations A\*X=B with a B matrix (Gaussian
elemination with partial pivoting)

LU\_solve2

Solve real system of linear equations P\*L\*U\*X=B with a B matrix and
an LU decomposition (from LU(..))

**Mechanics.Rotational.**

InitializeFlange

Initialize a flange according to given signals (useful if initialization
signals are provided by a signal bus).

**Media.Interfaces.PartialMedium.**

density\_pTX

Return density from p, T, and X or Xi

**Media.Interfaces.PartialTwoPhaseMedium.**

BaseProperties

Base properties (p, d, T, h, u, R, MM, x) of a two phase medium

molarMass

Return the molar mass of the medium

saturationPressure\_sat

Return saturation pressure

saturationTemperature\_sat

Return saturation temperature

saturationTemperature\_derp\_sat

Return derivative of saturation temperature w.r.t. pressure

setState\_px

Return thermodynamic state from pressure and vapour quality

setState\_Tx

Return thermodynamic state from temperature and vapour quality

vapourQuality

Return vapour quality

**Media.Interfaces.**

PartialLinearFluid

Generic pure liquid model with constant cp, compressibility and thermal
expansion coefficients

**Media.Air.MoistAir.**

massFraction\_pTphi

Return the steam mass fraction from relative humidity and T

saturationTemperature

Return saturation temperature from (partial) pressure via numerical
inversion of function saturationPressure

enthalpyOfWater

Return specific enthalpy of water (solid/liquid) near atmospheric
pressure from temperature

enthalpyOfWater\_der

Return derivative of enthalpyOfWater()" function

PsychrometricData

Model to generate plot data for psychrometric chart

**Media.CompressibleLiquids.**
  ~ New sub-library for simple compressible liquid models

LinearColdWater

Cold water model with linear compressibility

LinerWater\_pT\_Ambient

Liquid, linear compressibility water model at 1.01325 bar and 25 degree
Celsius

**SIunits.**

TemperatureDifference

Type for temperature difference

> The following **existing components** have been **improved**:

**Blocks.Examples.**

BusUsage

Example changed from the "old" to the "new" bus concept with expandable
connectors.

**Blocks.Discrete.**

ZeroOrderHold

Sample output ySample moved from "protected" to "public" section with
new attributes (start=0, fixed=true).

TransferFunction

Discrete state x with new attributes (each start=0, each fixed=0).

**Electrical.**

Analog MultiPhase

Improved some icons.

**Electrical.Digital.Interfaces.**

MISO

Removed "algorithm" from this partial block.

**Electrical.Digital.Delay.**

DelayParams

Removed "algorithm" from this partial block.

**Electrical.Digital.Delay.**

DelayParams

Removed "algorithm" from this partial block.

TransportDelay

If delay time is zero, an infinitely small delay is introduced via
pre(x) (previously "x" was used).

**Electrical.Digital.Sources.**

Clock Step

Changed if-conditions from "xxx < time" to "time \>= xxx" (according to
the Modelica specification, in the second case a time event should be
triggered, i.e., this change leads potentially to a faster simulation).

**Electrical.Digital.Converters.**

BooleanToLogic
  ~ LogicToBoolean RealToLogic LogicToReal

Changed from "algorithm" to "equation" section to allow better symbolic
preprocessing

**Electrical.**

Machines

Slightly improved documentation, typos in documentation corrected

**Electrical.Machines.Examples.**

AIMS\_start

Changed QuadraticLoadTorque1(TorqueDirection=true) to
QuadraticLoadTorque1(TorqueDirection=false) since more realistic

**Electrical.Machines.Interfaces.**

PartialBasicMachine

Introduced support flange to model the reaction torque to the housing

**Electrical.Machines.Sensors.**

Rotorangle

Introduced support flange to model the reaction torque to the housing

**Mechanics.MultiBody.Examples.Elementary.**

PointMassesWithGravity

Added two point masses connected by a line force to demonstrate
additionally how this works. Connections of point masses with
3D-elements are demonstrated in the new example PointMassesWithGravity
(there is the difficulty that the orientation is not defined in a
PointMass object and therefore some special handling is needed in case
of a connection with 3D-elements, where the orientation of the point
mass is not determined by these elements.

**Mechanics.MultiBody.Examples.Systems.**

RobotR3

Changed from the "old" to the "new" bus concept with expandable
connectors. Replaced the non-standard Modelica function "constrain()" by
standard Modelica components. As a result, the non-standard function
constrain() is no longer used in the Modelica Standard Library.

**Mechanics.MultiBody.Frames.Orientation.**

equalityConstraint

Use a better residual for the equalityConstraint function. As a result,
the non-linear equation system of a kinematic loop is formulated in a
better way (the range where the desired result is a unique solution of
the non-linear system of equations becomes much larger).

**Mechanics.MultiBody.**

Visualizers.

Removed (misleading) annotation "structurallyIncomplete" in the models
of this sub-library

**Mechanics.Rotational.**

Examples

For all models in this sub-library:

-   Included a housing object in all examples to compute all support
    torques.
-   Replaced initialization by modifiers via the initialization menu
    parameters of Inertia components.
-   Removed "encapsulated" and unnecessary "import".
-   Included "StopTime" in the annotations.

**Mechanics.Rotational.Interfaces.**

FrictionBase

Introduced "fixed=true" for Boolean variables startForward,
startBackward, mode.

**Mechanics.Translational.Interfaces.**

FrictionBase

Introduced "fixed=true" for Boolean variables startForward,
startBackward, mode.

**Media.UsersGuide.MediumUsage.**

TwoPhase

Improved documentation and demonstrating the newly introduced functions

**Media.Examples.**

WaterIF97

Provided (missing) units for variables V, dV, H\_flow\_ext, m, U.

**Media.Interfaces.**

PartialMedium

Final modifiers are removed from nX and nXi, to allow customized medium
models such as mixtures of refrigerants with oil, etc.

PartialCondensingGases

Included attributes "min=1, max=2" for input argument FixedPhase for
functions setDewState and setBubbleState (in order to guarantee that
input arguments are correct).

**Media.Interfaces.PartialMedium.**

BaseProperties

New Boolean parameter "standardOrderComponents". If true, last element
vector X is computed from 1-sum(Xi) (= default) otherwise, no equation
is provided for it in PartialMedium.

IsentropicExponent

"max" value changed from 1.7 to 500000

setState\_pTX
  ~ setState\_phX setState\_psX setState\_dTX specificEnthalpy\_pTX
    temperature\_phX density\_phX temperature\_psX density\_psX
    specificEnthalpy\_psX

Introduced defaut value "reference\_X" for input argument "X".

**Media.Interfaces.PartialSimpleMedium.**

setState\_pTX
  ~ setState\_phX setState\_psX setState\_dTX

Introduced defaut value "reference\_X" for input argument "X".

**Media.Interfaces.PartialSimpleIdealGasMedium.**

setState\_pTX
  ~ setState\_phX setState\_psX setState\_dTX

Introduced defaut value "reference\_X" for input argument "X".

**Media.Air.MoistAir.**

setState\_pTX
  ~ setState\_phX setState\_dTX

Introduced defaut value "reference\_X" for input argument "X".

**Media.IdealGases.Common.SingleGasNasa.**

setState\_pTX
  ~ setState\_phX setState\_psX setState\_dTX

Introduced defaut value "reference\_X" for input argument "X".

**Media.IdealGases.Common.MixtureGasNasa.**

setState\_pTX
  ~ setState\_phX setState\_psX setState\_dTX h\_TX

Introduced defaut value "reference\_X" for input argument "X".

**Media.Common.**

IF97PhaseBoundaryProperties
  ~ gibbsToBridgmansTables

Introduced unit for variables vt, vp.

SaturationProperties

Introduced unit for variable dpT.

BridgmansTables

Introduced unit for dfs, dgs.

**Media.Common.ThermoFluidSpecial.**

gibbsToProps\_ph
  ~ gibbsToProps\_ph gibbsToBoundaryProps gibbsToProps\_dT
    gibbsToProps\_pT

Introduced unit for variables vt, vp.

TwoPhaseToProps\_ph

Introduced unit for variables dht, dhd, detph.

**Media.**

MoistAir

Documentation of moist air model significantly improved.

**Media.MoistAir.**

enthalpyOfVaporization

Replaced by linear correlation since simpler and more accurate in the
entire region.

**Media.Water.IF97\_Utilities.BaseIF97.Regions.**

drhovl\_dp

Introduced unit for variable dd\_dp.

**Thermal.**

FluidHeatFlow

Introduced new parameter tapT (0..1) to define the temperature of the
HeatPort as linear combination of the flowPort\_a (tapT=0) and
flowPort\_b (tapT=1) temperatures.

> The following **critical errors** have been fixed (i.e., errors that

can lead to wrong simulation results):

**Electrical.Machines.BasicMachines.Components.**

ElectricalExcitation

Excitation voltage ve is calculated as
"spacePhasor\_r.v\_[1]\*TurnsRatio\*3/2" instead of
"spacePhasor\_r.v\_[1]\*TurnsRatio

**Mechanics.MultiBody.Parts.**

FixedRotation

Bug corrected that the torque balance was wrong in the following cases
(since vector r was not transformed from frame\_a to frame\_b; note this
special case occurs very seldomly in practice):

-   frame\_b is in the spanning tree closer to the root (usually this is
    frame\_a).
-   vector r from frame\_a to frame\_b is not zero.

PointMass

If a PointMass model is connected so that no equations are present to
compute its orientation object, the orientation was arbitrarily set to a
unit rotation. In some cases this can lead to a wrong overall model,
depending on how the PointMass model is used. For this reason, such
cases lead now to an error (via an assert(..)) with an explanation how
to fix this.

**Media.Interfaces.PartialPureSubstance.**

pressure\_dT
  ~ specificEnthalpy\_dT

Changed wrong call from "setState\_pTX" to "setState\_dTX"

**Media.Interfaces.PartialTwoPhaseMedium.**

pressure\_dT
  ~ specificEnthalpy\_dT

Changed wrong call from "setState\_pTX" to "setState\_dTX"

**Media.Common.ThermoFluidSpecial.**

gibbsToProps\_dT
  ~ helmholtzToProps\_ph helmholtzToProps\_pT helmholtzToProps\_dT

Bugs in equations corrected

**Media.Common.**

helmholtzToBridgmansTables
  ~ helmholtzToExtraDerivs

Bugs in equations corrected

**Media.IdealGases.Common.SingleGasNasa.**

density\_derp\_T

Bug in equation of partial derivative corrected

**Media.Water.IF97\_Utilities.**

BaseIF97.Inverses.dtofps3
  ~ isentropicExponent\_props\_ph isentropicExponent\_props\_pT
    isentropicExponent\_props\_dT

Bugs in equations corrected

**Media.Air.MoistAir.**

h\_pTX

Bug in setState\_phX due to wrong vector size in h\_pTX corrected.
Furthermore, syntactical errors corrected:

-   In function massFractionpTphi an equation sign is used in an
    algorithm.
-   Two consecutive semicolons removed

**Media.Water.**

waterConstants

Bug in equation of criticalMolarVolume corrected.

**Media.Water.IF97\_Utilities.BaseIF97.Regions.**

region\_ph
  ~ region\_ps

Bug in region determination corrected.

boilingcurve\_p
  ~ dewcurve\_p

Bug in equation of plim corrected.

> The following **uncritical errors** have been fixed (i.e., errors that

do **not** lead to wrong simulation results, but, e.g., units are wrong
or errors in documentation):

  ------------ -----------------------------------------------------------
  **Blocks.**  

  Examples     Corrected typos in description texts of bus example models.

  **Blocks.Con 
  tinuous.**   

  LimIntegrato removed incorrect smooth(0,..) because expression might be
  r            discontinuous.

  **Blocks.Mat 
  h.UnitConver 
  sions.**     

  block\_To\_k Corrected unit from "kWh" to (syntactically correct)
  Wh           "kW.h".
  block\_From\ 
  _kWh         

  **Electrical 
  .Analog.Exam 
  ples.**      

  HeatingNPN\_ Included start values, so that initialization is successful
  OrGate       

  **Electrical 
  .Analog.Line 
  s.**         

  OLine        Corrected unit from "Siemens/m" to "S/m".

  TLine2       Changed wrong type of parameter NL (normalized length) from
               SIunits.Length to Real.

  **Electrical 
  .Digital.Del 
  ay.**        

  TransportDel Syntax error corrected (":=" in equation section is
  ay           converted by Dymola silently to "=").

  **Electrical 
  .Digital**   

  Converters   Syntax error corrected (":=" in equation section is
               converted by Dymola silently to "=").

  **Electrical 
  .MultiPhase. 
  Basic.**     

  Conductor    Changed wrong type of parameter G from SIunits.Resistance
               to SIunits.Conductance.

  **Electrical 
  .MultiPhase. 
  Interfaces.* 
  *            

  Plug         Made used "pin" connectors non-graphical (otherwise, there
               are difficulties to connect to Plug).

  **Electrical 
  .MultiPhase. 
  Sources.**   

  SineCurrent  Changed wrong type of parameter offset from SIunits.Voltage
               to SIunits.Current.

  **Mechanics. 
  MultiBody.Ex 
  amples.Loops 
  .**          

  EngineV6     Corrected wrong crankAngleOffset of some cylinders and
               improved the example.

  **Mechanics. 
  MultiBody.Ex 
  amples.Loops 
  .Utilities.* 
  *            

  GasForce     Wrong units corrected: "SIunitsPosition x,y" to "Real x,y";
               "SIunits.Pressure press" to
               "SIunits.Conversions.NonSIunits.Pressure\_bar"

  GasForce2    Wrong unit corrected: "SIunits.Position x" to "Real x".

  EngineV6\_an Corrected wrong crankAngleOffset of some cylinders.
  alytic       

  **Mechanics. 
  MultiBody.In 
  terfaces.**  

  PartialLineF Corrected wrong unit: "SIunits.Position eRod\_a" to "Real
  orce         eRod\_a";

  FlangeWithBe If includeBearingConnector = false, connector "fr" + "ame"
  aringAdaptor was not removed. As long as the connecting element to
               "frame" determines the non-flow variables, this is fine. In
               the corrected version, "frame" is conditionally removed in
               this case.

  **Mechanics. 
  MultiBody.Fo 
  rces.**      

  ForceAndTorq Corrected wrong unit: "SIunits.Force t\_b\_0" to
  ue           "SIunits.Torque t\_b\_0".

  LineForceWit Corrected wrong unit: "SIunits.Position e\_rel\_0" to "Real
  hTwoMasses   e\_rel\_0".

  **Mechanics. 
  MultiBody.Fr 
  ames.**      

  axisRotation Corrected wrong unit: "SIunits.Angle der\_angle" to
               "SIunits.AngularVelocity der\_angle".

  **Mechanics. 
  MultiBody.Jo 
  ints.Assembl 
  ies.**       

  JointUSP     Corrected wrong unit: "SIunits.Position aux" to "Real"
  JointSSP     

  **Mechanics. 
  MultiBody.Se 
  nsors.**     

  AbsoluteSens Corrected wrong units: "SIunits.Acceleration angles" to
  or           "SIunits.Angle angles" and "SIunits.Velocity w\_abs\_0" to
               "SIunits.AngularVelocity w\_abs\_0"

  RelativeSens Corrected wrong units: "SIunits.Acceleration angles" to
  or           "SIunits.Angle angles"

  Distance     Corrected wrong units: "SIunits.Length L2" to "SIunits.Area
               L2" and SIunits.Length s\_small2" to "SIunits.Area
               s\_small2"

  **Mechanics. 
  MultiBody.Vi 
  sualizers.Ad 
  vanced.**    

  Shape        Changed "MultiBody.Types.Color color" to "Real color[3]",
               since "Types.Color" is "Integer color[3]" and there have
               been backward compatibility problems with models using
               "color" before it was changed to "Types.Color".

  **Mechanics. 
  Rotational.I 
  nterfaces.** 

  FrictionBase Rewrote equations with new variables
               "unitAngularAcceleration" and "unitTorque" in order that
               the equations are correct with respect to units
               (previously, variable "s" can be both a torque and an
               angular acceleration and this lead to unit
               incompatibilities)

  **Mechanics. 
  Rotational.* 
  *            

  OneWayClutch Rewrote equations with new variables
  LossyGear    "unitAngularAcceleration" and "unitTorque" in order that
               the equations are correct with respect to units
               (previously, variable "s" can be both a torque and an
               angular acceleration and this lead to unit
               incompatibilities)

  **Mechanics. 
  Translationa 
  l.Interfaces 
  .**          

  FrictionBase Rewrote equations with new variables
               "unitAngularAcceleration" and "unitTorque" in order that
               the equations are correct with respect to units
               (previously, variable "s" can be both a torque and an
               angular acceleration and this lead to unit
               incompatibilities)

  **Mechanics. 
  Translationa 
  l.**         

  Speed        Corrected unit of v\_ref from SIunits.Position to
               SIunits.Velocity

  **Media.Exam 
  ples.Tests.C 
  omponents.** 

  PartialTestM Corrected unit of h\_start from "SIunits.Density" to
  odel         "SIunits.SpecificEnthalpy"
  PartialTestM 
  odel2        

  **Media.Exam 
  ples.SolveOn 
  eNonlinearEq 
  uation.**    

  Inverse\_sh\ Rewrote equations so that dimensional (unit) analysis is
  _T           correct"
  InverseIncom 
  pressible\_s 
  h\_T         
    ~ Inverse\ 
  _sh\_TX      
               
               

  **Media.Inco 
  mpressible.E 
  xamples.**   

  TestGlycol   Rewrote equations so that dimensional (unit) analysis is
               correct"

  **Media.Inte 
  rfaces.Parti 
  alTwoPhaseMe 
  dium.**      

  dBubbleDensi Changed wrong type of ddldp from "DerDensityByEnthalpy" to
  ty\_dPressur "DerDensityByPressure".
  e            
  dDewDensity\ 
  _dPressure   

  **Media.Comm 
  on.ThermoFlu 
  idSpecial.** 

  ThermoProper Changed wrong units: "SIunits.DerEnergyByPressure dupT" to
  ties         "Real dupT" and "SIunits.DerEnergyByDensity dudT" to "Real
               dudT"

  ThermoProper Changed wrong unit from "SIunits.DerEnergyByPressure duph"
  ties\_ph     to "Real duph"

  ThermoProper Changed wrong unit from "SIunits.DerEnergyByPressure dupT"
  ties\_pT     to "Real dupT"

  ThermoProper Changed wrong unit from "SIunits.DerEnergyByDensity dudT"
  ties\_dT     to "Real dudT"

  **Media.Idea 
  lGases.Commo 
  n.SingleGasN 
  asa.**       

  cp\_Tlow\_de Changed wrong unit from "SIunits.Temperature dT" to "Real
  r            dT".

  **Media.Wate 
  r.IF97\_Util 
  ities.BaseIF 
  97.Basic.**  

  p1\_hs       Changed wrong unit of variables h/hstar, s, sstar from
    ~ h2ab\_s  "SIunits.Enthalpy" to "SIunits.SpecificEnthalpy",
      p2a\_hs  "SIunits.SpecificEntropy", "SIunits.SpecificEntropy
      p2b\_hs  
      p2c\_hs  
      h3ab\_p  
      T3a\_ph  
      T3b\_ph  
      v3a\_ph  
      v3b\_ph  
      T3a\_ps  
      T3b\_ps  
      v3a\_ps  
      v3b\_ps  
               
               

  **Media.Wate 
  r.IF97\_Util 
  ities.BaseIF 
  97.Transport 
  .**          

  cond\_dTp    Changed wrong unit of TREL, rhoREL, lambdaREL from
               "SIunits.Temperature", "SIunit.Density",
               "SIunits.ThermalConductivity" to "Real".

  **Media.Wate 
  r.IF97\_Util 
  ities.BaseIF 
  97.Inverses. 
  **           

  tofps5       Changed wrong unit of pros from "SIunits.SpecificEnthalpy"
  tofpst5      to "SIunits.SpecificEntropy".

  **Media.Wate 
  r.IF97\_Util 
  ities.**     

  waterBasePro Improved calculation at the limits of the validity.
  p\_ph        

  **Thermal.** 

  FluidHeatFlo Corrected wrong unit "SIunits.Temperature" of difference
  w            temperature variables with "SIunits.TemperatureDifference".
  HeatTransfer 
  ------------ -----------------------------------------------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image34](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_2\_2\_1
=======================================================================================================================================================================================================

::

Version 2.2.1 is backward compatible to version 2.2.

In this version, **no** new libraries have been added. The following
major improvements have been made:

-   The **Documentation** of the Modelica standard library was
    considerably improved: In Dymola 6, the new feature was introduced
    to automatically add tables for class content and component
    interface definitions (parameters and connectors) to the info layer.
    For this reason, the corresponding (partial) tables previously
    present in the Modelica Standard Library have been removed. The new
    feature of Dymola 6 has the significant advantage that all tables
    are now guaranteed to be up-to-date. Additionally, the documentation
    has been improved by adding appropriate description texts to
    parameters, connector instances, function input and output arguments
    etc., in order that the automatically generated tables do not have
    empty entries. Also new User's Guides for sublibraries Rotational
    and SIunits have been added and the User's Guide on top level
    (Modelica.UsersGuide) has been improved.
-   Initialization options have been added to the
    Modelica.Blocks.**Continuous** blocks (NoInit, SteadyState,
    InitialState, InitialOutput). If InitialOutput is selected, the
    block output is provided as initial condition. The states of the
    block are then initialized as close as possible to steady state.
    Furthermore, the Continuous.LimPID block has been significantly
    improved and much better documented.
-   The Modelica.**Media** library has been significantly improved:
      ~ New functions setState\_pTX, setState\_phX, setState\_psX,

    setState\_dTX have been added to PartialMedium to compute the
    independent medium variables (= state of medium) from p,T,X, or from
    p,h,X or from p,s,X or from d,T,X. Then functions are provided for
    all interesting medium variables to compute them from its medium
    state. All these functions are implemented in a robust way for all
    media (with a few exceptions, if the generic function does not make
    sense for a particular medium).

The following **new components** have been added to **existing**
libraries:

  --------------- --------------------------------------------------------
  **Modelica.Bloc 
  ks.Examples.**  

  PID\_Controller Example to demonstrate the usage of the
                  Blocks.Continuous.LimPID block.

  **Modelica.Bloc 
  ks.Math.**      

  UnitConversions New package that provides blocks for unit conversions.
  .\*             UnitConversions.ConvertAllBlocks allows to select all
                  available conversions from a menu.

  **Modelica.Elec 
  trical.Machines 
  .BasicMachines. 
  SynchronousIndu 
  ctionMachines.* 
  *               

  SM\_ElectricalE Electrical excited synchronous induction machine with
  xcitedDamperCag damper cage
  e               

  **Modelica.Elec 
  trical.Machines 
  .BasicMachines. 
  Components.**   

  ElectricalExcit Electrical excitation for electrical excited synchronous
  ation           induction machines

  DamperCage      Unsymmetrical damper cage for electrical excited
                  synchronous induction machines. At least the user has to
                  specify the dampers resistance and stray inductance in
                  d-axis; if he omits the parameters of the q-axis, the
                  same values as for the d.axis are used, assuming a
                  symmetrical damper.

  **Modelica.Elec 
  trical.Machines 
  .Examples.**    

  SMEE\_Gen       Test example 7:
                  ElectricalExcitedSynchronousInductionMachine as
                  Generator

  Utilities.Termi Terminal box for three-phase induction machines to
  nalBox          choose either star (wye) ? or delta ? connection

  **Modelica.Math 
  .Matrices.**    

  equalityLeastSq Solve a linear equality constrained least squares
  uares           problem:
                    ~ min|A\*x-a|\^2 subject to B\*x=b
                  
                  

  **Modelica.Mech 
  anics.MultiBody 
  .**             

  Parts.PointMass Point mass, i.e., body where inertia tensor is
                  neglected.

  Interfaces.Flan Connector consisting of 1-dim. rotational flange and its
  geWithBearing   3-dim. bearing frame.

  Interfaces.Flan Adaptor to allow direct connections to the
  geWithBearingAd sub-connectors of FlangeWithBearing.
  aptor           

  Types.SpecularC New type to define a specular coefficient.
  oefficient      

  Types.ShapeExtr New type to define the extra data for visual shape
  a               objects and to have a central place for the
                  documentation of this data.

  **Modelica.Mech 
  anics.MultiBody 
  .Examples.Eleme 
  ntary**         

  PointGravityWit Example of two point masses in a central gravity field.
  hPointMasses    

  **Modelica.Mech 
  anics.Rotationa 
  l.**            

  UsersGuide      A User's Guide has been added by using the documentation
                  previously present in the package documentation of
                  Rotational.

  Sensors.PowerSe New component to measure the energy flow between two
  nsor            connectors of the Rotational library.

  **Modelica.Mech 
  anics.Translati 
  onal.**         

  Speed           New component to move a translational flange according
                  to a reference speed

  **Modelica.Medi 
  a.Interfaces.Pa 
  rtialMedium.**  

  specificEnthalp New function to compute specific enthalpy from pressure,
  y\_pTX          temperature and mass fractions.

  temperature\_ph New function to compute temperature from pressure,
  X               specific enthalpy, and mass fractions.

  **Modelica.Icon 
  s.**            

  SignalBus       Icon for signal bus

  SignalSubBus    Icon for signal sub-bus

  **Modelica.SIun 
  its.**          

  UsersGuide      A User's Guide has been added that describes unit
                  handling.

  Resistance      Attribute 'min=0' removed from these types.
    ~ Conductance 
                  
                  

  **Modelica.Ther 
  mal.FluidHeatFl 
  ow.**           

  Components.Valv Simple controlled valve with either linear or
  e               exponential characteristic.

  Sources.        Simple ideal pump (resp. fan) dependent on the shaft?s
  IdealPump       speed; pressure increase versus volume flow is defined
                  as a linear function. Torque \* Speed = Pressure
                  invrease \* Volume flow (without losses).

  Examples.PumpAn Test example for valves.
  dValve          

  Examples.PumpDr Drop out of 1 pump to test behavior of semiLinear.
  opOut           

  Examples.Parall Drop out of 2 parallel pumps to test behavior of
  elPumpDropOut   semiLinear.

  Examples.OneMas Cooling of 1 hot mass to test behavior of semiLinear.
  s               

  Examples.TwoMas Cooling of 2 hot masses to test behavior of semiLinear.
  s               
  --------------- --------------------------------------------------------

The following **components** have been improved:

**Modelica.**

UsersGuide

User's Guide and package description of Modelica Standard Library
improved.

**Modelica.Blocks.Interfaces.**

RealInput
  ~ BooleanInput IntegerInput

When dragging one of these connectors the width and height is a factor
of 2 larger as a standard icon. Previously, these connectors have been
dragged and then manually enlarged by a factor of 2 in the Modelica
standard library.

**Modelica.Blocks.**

Continuous.\*

Initialization options added to all blocks (NoInit, SteadyState,
InitialState, InitialOutput). New parameter limitsAtInit to switch off
the limits of LimIntegrator or LimPID during initialization

Continuous.LimPID

Option to select P, PI, PD, PID controller. Documentation significantly
improved.

Nonlinear.Limiter
  ~ Nonlinear.VariableLimiter Nonlinear.Deadzone

New parameter limitsAtInit/deadZoneAtInit to switch off the limits or
the dead zone during initialization

**Modelica.Electrical.Analog.**

Sources

Icon improved (+/- added to voltage sources, arrow added to current
sources).

**Modelica.Electrical.Analog.Semiconductors.**

Diode

smooth() operator included to improve numerics.

**Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.**

SM\_PermanentMagnetDamperCage
  ~ SM\_ElectricalExcitedDamperCage SM\_ReluctanceRotorDamperCage

The user can choose "DamperCage = false" (default: true) to remove all
equations for the damper cage from the model.

**Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.**

AIM\_SlipRing

Easier parameterization: if the user selects "useTrunsRatio = false"
(default: true, this is the same behavior as before), parameter
TurnsRatio is calculated internally from Nominal stator voltage and
Locked-rotor voltage.

**Modelica.Math.Matrices.**

leastSquares

The A matrix in the least squares problem might be rank deficient.
Previously, it was required that A has full rank.

**Modelica.Mechanics.MultiBody.**

all models

-   All components with animation information have a new variable
    **specularCoefficient** to define the reflection of ambient light.
    The default value is world.defaultSpecularCoefficient which has a
    default of 0.7. By changing world.defaultSpecularCoefficient, the
    specularCoefficient of all components is changed that are not
    explicitly set differently. Since specularCoefficient is a variable
    (and no parameter), it can be changed during simulation. Since
    annotation(Dialog) is set, this variable still appears in the
    parameter menus. Previously, a constant specularCoefficient of 0.7
    was used for all components.
-   Variable **color** of all components is no longer a parameter but an
    input variable. Also all parameters in package **Visualizers**, with
    the exception of **shapeType** are no longer parameters but defined
    as input variables with annotation(Dialog). As a result, all these
    variables appear still in parameter menus, but they can be changed
    during simulation (e.g., color might be used to display the
    temperature of a part).
-   All menus have been changed to follow the Modelica 2.2 annotations
    "Dialog, group, tab, enable" (previously, a non-standard Dymola
    definition for menus was used). Also, the "enable" annotation is
    used in all menus to disable input fields if the input would be
    ignored.
-   All visual shapes are now defined with conditional declarations (to
    remove them, if animation is switched off). Previously, these
    (protected) objects have been defined by arrays with dimension 0 or
    1.

Frames.resolveRelative

The derivative of this function added as function and defined via an
annotation. In certain situations, tools had previously difficulties to
differentiate the inlined function automatically.

Forces.\*

The scaling factors N\_to\_m and Nm\_to\_m have no longer a default
value of 1000 but a default value of world.defaultN\_to\_m (=1000) and
world.defaultNm\_to\_m (=1000). This allows to change the scaling
factors for all forces and torques in the world object.

Interfaces.Frame.a
  ~ Interfaces.Frame.b Interfaces.Frame\_resolve

The Frame connectors are now centered around the origin to ease the
usage. The shape was changed, such that the icon is a factor of 1.6
larger as a standard icon (previously, the icon had a standard size when
dragged and then the icon was manually enlarged by a factor of 1.5 in
the y-direction in the MultiBody library; the height of 16 allows easy
positioning on the standard grid size of 2). The double line width of
the border in icon and diagram layer was changed to a single line width
and when making a connection the connection line is dark grey and no
longer black which looks better.

Joints.Assemblies.\*

When dragging an assembly joint, the icon is a factor of 2 larger as a
standard icon. Icon texts and connectors have a standard size in this
enlarged icon (and are not a factor of 2 larger as previously).

Types.\*

All types have a corresponding icon now to visualize the content in the
package browser (previously, the types did not have an icon).

**Modelica.Mechanics.Rotational.**

Inertia

Initialization and state selection added.

SpringDamper

Initialization and state selection added.

Move

New implementation based solely on Modelica 2.2 language (previously,
the Dymola specific constrain(..) function was used).

**Modelica.Mechanics.Translational.**

Move

New implementation based solely on Modelica 2.2 language (previously,
the Dymola specific constrain(..) function was used).

**Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.**

SimpleFriction

Calculates friction losses from pressure drop and volume flow.

**Modelica.Thermal.FluidHeatFlow.Components.**

IsolatedPipe
  ~ HeatedPipe

Added geodetic height as a source of pressure change; feeds friction
losses as calculated by simple friction to the energy balance of the
medium.

**Modelica.Media.Interfaces.PartialMedium.FluidConstants.**

HCRIT0

Critical specifc enthalpy of the fundamental equation (base formulation
of the fluid medium model).

SCRIT0

Critical specifc entropy of the fundamental equation (base formulation
of the fluid medium model).

deltah

Enthalpy offset (default: 0) between the specific enthalpy of the fluid
model and the user-visible specific enthalpy in the model: deltah =
h\_model - h\_fundamentalEquation.

deltas

Entropy offset (default: 0) between the specific entropy of the fluid
model and the user-visible specific entropy in the model: deltas =
s\_model - s\_fundamentalEquation.

T\_default

Default value for temperature of medium (for initialization)

h\_default

Default value for specific enthalpy of medium (for initialization)

p\_default

Default value for pressure of medium (for initialization)

X\_default

Default value for mass fractions of medium (for initialization)

The following **errors** have been fixed:

  ---------- -------------------------------------------------------------
  **Modelica 
  .Blocks.Ta 
  bles.**    

  CombiTable Parameter "tableOnFile" determines now whether a table is
  1D         read from file or used from parameter "table". Previously, if
    ~ CombiT "fileName" was not "NoName", a table was always read from
  able1Ds    file "fileName", independently of the setting of
      CombiT "tableOnFile". This has been corrected.
  able2D       ~ Furthermore, the initialization of a table is now
                 performed in a when-clause and no longer in a parameter
                 declaration, because some tools evaluate the parameter
                 declaration in some situation more than once and then the
                 table is unnecessarily read several times (and occupies
                 also more memory).
             
             

  **Modelica 
  .Blocks.So 
  urces.**   

  CombiTimeT Same bug fix/improvement as for the tables from
  able       Modelica.Blocks.Tables as outlined above.

  **Modelica 
  .Electrica 
  l.Analog.S 
  emiconduct 
  ors.**     

  PMOS       The Drain-Source-Resistance RDS had actually a resistance of
    ~ NMOS   RDS/v, with v=Beta\*(W+dW)/(L+dL). The correct formula is
      Heatin without the divison by "v". This has now been corrected.
  gPMOS        ~ This bug fix should not have an essential effect in most
      Heatin     applications. In the default case (Beta=1e-5), the
  gNMOS          Drain-Source-Resistance was a factor of 1e5 too large and
                 had in the default case the wrong value 1e12, although it
                 should have the value 1e7. The effect was that this
                 resistance had practically no effect.
             
             

  **Modelica 
  .Media.Ide 
  alGases.Co 
  mmon.Singl 
  eGasNasa.* 
  *          

  dynamicVis Viscosity and thermal conductivity (which needs viscosity as
  cosityLowP input) were computed wrong for polar gases and gas mixtures
  ressure    (i.e., if dipole moment not 0.0). This has been fixed in
             version 2.2.1.

  **Modelica 
  .Utilities 
  .Streams.* 
  *          

  readLine   Depending on the C-implementation, the stream was not
             correctly closed. This has been corrected by adding a
             "Streams.close(..)" after reading the file content.
  ---------- -------------------------------------------------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image35](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_2\_2
====================================================================================================================================================================================================

::

Version 2.2 is backward compatible to version 2.1.

The following **new libraries** have been added:

[Modelica.Media](Modelica_Media.html#Modelica.Media)

Property models of liquids and gases, especially

-   1241 detailed gas models,
-   moist air,
-   high precision water model (according to IAPWS/IF97 standard),
-   incompressible media defined by tables (cp(T), rho(t), eta(T), etc.
    are defined by tables).

The user can conveniently define mixtures of gases between the 1241 gas
models. The models are designed to work well in dynamic simulations.
They are based on a new standard interface for media with single and
multiple substances and one or multiple phases with the following
features:

-   The independent variables of a medium model do not influence the
    definition of a fluid connector port or how the balance equations
    have to be implemented. Used independent variables: "p,T", "p,T,X",
    "p,h", "d,T".
-   Optional variables, e.g., dynamic viscosity, are only computed if
    needed.
-   
-   The medium models are implemented with regards to efficient dynamic
    simulation.

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow)

Simple components for 1-dim., incompressible thermo-fluid flow to model
coolant flows, e.g., of electrical machines. Components can be connected
arbitrarily together (= ideal mixing at connection points) and fluid may
reverse direction of flow.

The following **changes** have been performed in the
**Modelica.Mechanics.MultiBody** library:

-   Component MultiBody.World has a new parameter
    **driveTrainMechanics3D**. If set to **true**, 3D mechanical effects
    of MultiBody.Parts.Mounting1D/Rotor1D/BevelGear1D are taken into
    account. If set to **false** (= default), 3D mechanical effects in
    these elements are not taken into account and the frame connectors
    to connect to 3D parts are disabled (all connections to such a
    disabled connector are also disabled, due to the new feature of
    conditional declarations in Modelica language 2.2)
-   All references to "MultiBody.xxx" have been changed to
    "Modelica.Mechanics.MultiBodys.xxx" in order that after copying of a
    component outside of the Modelica library, the references still
    remain valid.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image36](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_2\_1
====================================================================================================================================================================================================

::

This is a major change with respect to previous versions of the Modelica
Standard Library, because **many new libraries** and components are
included and because the input/output blocks (Modelica.Blocks) have been
considerably simplified:

-   An input/output connector is defined **without** a hierarchy (this
    is possible due to new features of the Modelica language). For
    example, the input signal of a block "FirstOrder" was previously
    accessed as "FirstOrder.inPort.signal[1]". Now it is accessed as
    "FirstOrder.u". This simplifies the understanding and usage
    especially for beginners.
-   De-vectorized the **Modelica.Blocks** library. All blocks in the
    Modelica.Blocks library are now scalar blocks. As a result, the
    parameters of the Blocks are scalars and no vectors any more. For
    example, a parameter "amplitude" that might had a value of "{1}"
    previously, has now a value of "1". This simplifies the
    understanding and usage especially for beginners. If a vector of
    blocks is needed, this can be easily accomplished by adding a
    dimension to the instance. For example "Constant const[3](k={1,2,3}"
    defines three Constant blocks. An additional advantage of the new
    approach is that the implementation of Modelica.Blocks is much
    simpler and is easier to understand.

The discussed changes of Modelica.Blocks are not backward compatible. A
script to **automatically** convert models to this new version is
provided. There might be rare cases, where this script does not convert.
In this case models have to be manually converted. In any case you
should make a back-up copy of your model before automatic conversion is
performed.

The following **new libraries** have been added:

[Modelica.Electrical.Digital](Modelica_Electrical_Digital.html#Modelica.Electrical.Digital)

Digital electrical components based on 2-,3-,4-, and 9-valued logic
  ~ according to the VHDL standard

[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)

Asynchronous, synchronous and DC motor and generator models

[Modelica.Math.Matrices](Modelica_Math_Matrices.html#Modelica.Math.Matrices)

Functions operatinng on matrices such as solve() (A\*x=b),
leastSquares(), norm(), LU(), QR(), eigenValues(), singularValues(),
exp(), ...

[Modelica.StateGraph](Modelica_StateGraph.html#Modelica.StateGraph)

Modeling of **discrete event** and **reactive** systems in a convenient
way using **hierarchical state machines** and **Modelica** as **action
language**. It is based on JGraphChart and Grafcet and has a similar
modeling power as StateCharts. It avoids deficiences of usually used
action languages. This library makes the ModelicaAdditions.PetriNets
library obsolet.

[Modelica.Utilities.Files](Modelica_Utilities_Files.html#Modelica.Utilities.Files)

Functions to operate on files and directories (copy, move, remove files
etc.)

[Modelica.Utilities.Streams](Modelica_Utilities_Streams.html#Modelica.Utilities.Streams)

Read from files and write to files (print, readLine, readFile, error,
...)

[Modelica.Utilities.Strings](Modelica_Utilities_Strings.html#Modelica.Utilities.Strings)

Operations on strings (substring, find, replace, sort, scanToken, ...)

[Modelica.Utilities.System](Modelica_Utilities_System.html#Modelica.Utilities.System)

Get/set current directory, get/set environment variable, execute shell
command, etc.

The following existing libraries outside of the Modelica standard
library have been improved and added as **new libraries** (models using
the previous libraries are automatically converted to the new
sublibraries inside package Modelica):

  ------------------------------------- ----------------------------------
  [Modelica.Blocks.Discrete](Modelica_B Discrete input/output blocks with
  locks_Discrete.html#Modelica.Blocks.D fixed sample period
  iscrete)                                ~ (from
                                            ModelicaAdditions.Blocks.Discr
                                        ete)
                                        
                                        

  [Modelica.Blocks.Logical](Modelica_Bl Logical components with Boolean
  ocks_Logical.html#Modelica.Blocks.Log input and output signals
  ical)                                   ~ (from
                                            ModelicaAdditions.Blocks.Logic
                                        al)
                                        
                                        

  [Modelica.Blocks.Nonlinear](Modelica_ Discontinuous or
  Blocks_Nonlinear.html#Modelica.Blocks non-differentiable algebraic
  .Nonlinear)                           control blocks such as variable
                                        limiter,
                                          ~ fixed, variable and Pade delay
                                            etc. (from
                                            ModelicaAdditions.Blocks.Nonli
                                        near)
                                        
                                        

  [Modelica.Blocks.Routing](Modelica_Bl Blocks to combine and extract
  ocks_Routing.html#Modelica.Blocks.Rou signals, such as multiplexer
  ting)                                   ~ (from
                                            ModelicaAdditions.Blocks.Multi
                                        plexer)
                                        
                                        

  [Modelica.Blocks.Tables](Modelica_Blo One and two-dimensional
  cks_Tables.html#Modelica.Blocks.Table interpolation in tables.
  s)                                    CombiTimeTable is available
                                          ~ in Modelica.Blocks.Sources
                                            (from
                                            ModelicaAdditions.Tables)
                                        
                                        

  [Modelica.Mechanics.MultiBody](Modeli Components to model the movement
  ca_Mechanics_MultiBody.html#Modelica. of 3-dimensional mechanical
  Mechanics.MultiBody)                  systems. Contains
                                          ~ body, joint, force and sensor
                                            components, analytic handling
                                            of kinematic loops, force
                                            elements with mass,
                                            series/parallel connection of
                                            3D force elements etc. (from
                                            MultiBody 1.0 where the new
                                            signal connectors are used;
                                            makes the
                                            ModelicaAdditions.MultiBody
                                            library obsolet)
                                        
                                        
  ------------------------------------- ----------------------------------

As a result, the ModelicaAdditions library is obsolet, because all
components are either included in the Modelica library or are replaced
by much more powerful libraries (MultiBody, StateGraph).

The following **new components** have been added to **existing**
libraries.

  ---------------------- -------------------------------------------------
  **Modelica.Blocks.Logi 
  cal.**                 

  Pre                    y = pre(u): Breaks algebraic loops by an
                         infinitesimal small
                           ~ time delay (event iteration continues until u
                             = pre(u))
                         
                         

  Edge                   y = edge(u): Output y is true, if the input u has
                         a rising edge

  FallingEdge            y = edge(not u): Output y is true, if the input u
                         has a falling edge

  Change                 y = change(u): Output y is true, if the input u
                         has a rising or falling edge

  GreaterEqual           Output y is true, if input u1 is greater or equal
                         as input u2

  Less                   Output y is true, if input u1 is less as input u2

  LessEqual              Output y is true, if input u1 is less or equal as
                         input u2

  Timer                  Timer measuring the time from the time instant
                         where the
                           ~ Boolean input became true
                         
                         

  **Modelica.Blocks.Math 
  .**                    

  BooleanToReal          Convert Boolean to Real signal

  BooleanToInteger       Convert Boolean to Integer signal

  RealToBoolean          Convert Real to Boolean signal

  IntegerToBoolean       Convert Integer to Boolean signal

  **Modelica.Blocks.Sour 
  ces.**                 

  RealExpression         Set output signal to a time varying Real
                         expression

  IntegerExpression      Set output signal to a time varying Integer
                         expression

  BooleanExpression      Set output signal to a time varying Boolean
                         expression

  BooleanTable           Generate a Boolean output signal based on a
                         vector of time instants

  **Modelica.Mechanics.M 
  ultiBody.**            

  Frames.from\_T2        Return orientation object R from transformation
                         matrix T and its derivative der(T)

  **Modelica.Mechanics.R 
  otational.**           

  LinearSpeedDependentTo Linear dependency of torque versus speed (acts as
  rque                   load torque)

  QuadraticSpeedDependen Quadratic dependency of torque versus speed (acts
  tTorque                as load torque)

  ConstantTorque         Constant torque, not dependent on speed (acts as
                         load torque)

  ConstantSpeed          Constant speed, not dependent on torque (acts as
                         load torque)

  TorqueStep             Constant torque, not dependent on speed (acts as
                         load torque)
  ---------------------- -------------------------------------------------

The following **bugs** have been **corrected**:

  --------------------------- --------------------------------------------
  **Modelica.Mechanics.MultiB 
  ody.Forces.**               

  LineForceWithMass           If mass of the line force or spring
    ~ Spring                  component is not zero, the
                                ~ mass was (implicitly) treated as
                                  "mass\*mass" instead of as "mass"
                              
                              

  **Modelica.Mechanics.Rotati 
  onal.**                     

  Speed                       If parameter exact=**false**, the filter was
                              wrong
                                ~ (position was filtered and not the speed
                                  input signal)
                              
                              
  --------------------------- --------------------------------------------

Other changes:

-   All connectors are now smaller in the diagram layer. This gives a
    nicer layout when connectors and components are used together in a
    diagram
-   Default instance names are defined for all connectors, according to
    a new annotation introduced in Modelica 2.1. For example, when
    dragging connector "Flange\_a" from the Rotational library to the
    diagram layer, the default connector instance name is "flange\_a"
    and not "Flange\_a1".
-   The Modelica.Mechanics.Rotational connectors are changed from a
    square to a circle
-   The Modelica.Mechanics.Translational connectors are changed from a
    green to a dark green color in order that connection lines can be
    better seen, especially when printed.
-   The Modelica.Blocks connectors for Real signals are changed from
    blue to dark blue in order to distinguish them from electrical
    signals.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image37](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_1\_6
====================================================================================================================================================================================================

::

Added 1 new library (Electrical.MultiPhase), 17 new components, improved
3 existing components in the Modelica.Electrical library and improved 3
types in the Modelica.SIunits library. Furthermore, this User's Guide
has been started. The improvements in more detail:

**New components**

  --------------------------------- --------------------------------------
  **Modelica.Electrical.Analog.Basi 
  c.**                              

  SaturatingInductor                Simple model of an inductor with
                                    saturation

  VariableResistor                  Ideal linear electrical resistor with
                                    variable resistance

  VariableConductor                 Ideal linear electrical conductor with
                                    variable conductance

  VariableCapacitor                 Ideal linear electrical capacitor with
                                    variable capacitance

  VariableInductor                  Ideal linear electrical inductor with
                                    variable inductance

  **Modelica.Electrical.Analog.Semi 
  conductors.**                     

  HeadingDiode                      Simple diode with heating port

  HeadingNMOS                       Simple MOS Transistor with heating
                                    port

  HeadingPMOS                       Simple PMOS Transistor with heating
                                    port

  HeadingNPN                        Simple NPN BJT according to Ebers-Moll
                                    with heating port

  HeadingPNP                        Simple PNP BJT according to Ebers-Moll
                                    with heating port

  **Modelica.Electrical.MultiPhase* 
  *                                 
    ~ A new library for multi-phase 
      electrical circuits           
                                    
                                    
  --------------------------------- --------------------------------------

**New examples**

The following new examples have been added to
Modelica.Electrical.Analog.Examples:

CharacteristicThyristors, CharacteristicIdealDiodes, HeatingNPN\_OrGate,
HeatingMOSInverter, HeatingRectifier, Rectifier, ShowSaturatingInductor
ShowVariableResistor

**Improved existing components**

In the library Modelica.Electrical.Analog.Ideal, a knee voltage has been
introduced for the components IdealThyristor, IdealGTOThyristor,
IdealDiode in order that the approximation of these ideal elements is
improved with not much computational effort.

In the Modelica.SIunits library, the following changes have been made:

  ----------------------------- ------------------
  Inductance                    min=0 removed
  SelfInductance                min=0 added
  ThermodynamicTemperature      min=0 added
  ----------------------------- ------------------

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image38](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_1\_5
====================================================================================================================================================================================================

::

Added 55 new components. In particular, added new package
**Thermal.HeatTransfer** for modeling of lumped heat transfer, added
model **LossyGear** in Mechanics.Rotational to model gear efficiency and
bearing friction according to a new theory in a robust way, added 10 new
models in Electrical.Analog and added several other new models and
improved existing models.

**New components**

  ---------------------- -------------------------------------------------
  **Modelica.Blocks.**   

  Continuous.Der         Derivative of input (= analytic differentations)

  ***Examples***         Demonstration examples of the components of this
                         package

  Nonlinear.VariableLimi Limit the range of a signal with variable limits
  ter                    

  **Modelica.Blocks.Inte 
  rfaces.**              

  RealPort               Real port (both input/output possible)

  IntegerPort            Integer port (both input/output possible)

  BooleanPort            Boolean port (both input/output possible)

  SIMO                   Single Input Multiple Output continuous control
                         block

  IntegerBlockIcon       Basic graphical layout of Integer block

  IntegerMO              Multiple Integer Output continuous control block

  IntegerSignalSource    Base class for continuous Integer signal source

  IntegerMIBooleanMOs    Multiple Integer Input Multiple Boolean Output
                         continuous control block with same number of
                         inputs and outputs

  BooleanMIMOs           Multiple Input Multiple Output continuous control
                         block with same number of inputs and outputs of
                         boolean type

  ***BusAdaptors***      Components to send signals to the bus or receive
                         signals from the bus

  **Modelica.Blocks.Math 
  .**                    

  RealToInteger          Convert real to integer signals

  IntegerToReal          Convert integer to real signals

  Max                    Pass through the largest signal

  Min                    Pass through the smallest signal

  Edge                   Indicates rising edge of boolean signal

  BooleanChange          Indicates boolean signal changing

  IntegerChange          Indicates integer signal changing

  **Modelica.Blocks.Sour 
  ces.**                 

  IntegerConstant        Generate constant signals of type Integer

  IntegerStep            Generate step signals of type Integer

  **Modelica.Electrical. 
  Analog.Basic.**        

  HeatingResistor        Temperature dependent electrical resistor

  OpAmp                  Simple nonideal model of an OpAmp with limitation

  **Modelica.Electrical. 
  Analog.Ideal.**        

  IdealCommutingSwitch   Ideal commuting switch

  IdealIntermediateSwitc Ideal intermediate switch
  h                      

  ControlledIdealCommuti Controlled ideal commuting switch
  ngSwitch               

  ControlledIdealInterme Controlled ideal intermediate switch
  diateSwitch            

  IdealOpAmpLimited      Ideal operational amplifier with limitation

  IdealOpeningSwitch     Ideal opener

  IdealClosingSwitch     Ideal closer

  ControlledIdealOpening Controlled ideal opener
  Switch                 

  ControlledIdealClosing Controlled ideal closer
  Switch                 

  **Modelica.Electrical. 
  Analog.Lines.**        

  TLine1                 Lossless transmission line (Z0, TD)

  TLine2                 Lossless transmission line (Z0, F, NL)

  TLine2                 Lossless transmission line (Z0, F)

  **Modelica.Icons.**    

  Function               Icon for a function

  Record                 Icon for a record

  Enumeration            Icon for an enumeration

  **Modelica.Math.**     

  tempInterpol2          temporary routine for vectorized linear
                         interpolation (will be removed)

  **Modelica.Mechanics.R 
  otational.**           

  Examples.LossyGearDemo Example to show that gear efficiency may lead to
  1                      stuck motion

  Examples.LossyGearDemo Example to show combination of LossyGear and
  2                      BearingFriction

  LossyGear              Gear with mesh efficiency and bearing friction
                         (stuck/rolling possible)

  Gear2                  Realistic model of a gearbox (based on LossyGear)

  **Modelica.SIunits.**  

  ***Conversions***      Conversion functions to/from non SI units and
                         type definitions of non SI units

  EnergyFlowRate         Same definition as *Power*

  EnthalpyFlowRate       `Real (final quantity="EnthalpyFlowRate", final u
                         nit="W")`

  **Modelica.**          

  ***Thermal.HeatTransfe 1-dimensional heat transfer with lumped elements
  r***                   

  **ModelicaAdditions.Bl 
  ocks.Discrete.**       

  TriggeredSampler       Triggered sampling of continuous signals

  TriggeredMax           Compute maximum, absolute value of continuous
                         signal at trigger instants

  **ModelicaAdditions.Bl 
  ocks.Logical.Interface 
  s.**                   

  BooleanMIRealMOs       Multiple Boolean Input Multiple Real Output
                         continuous control block with same number of
                         inputs and outputs

  RealMIBooleanMOs       Multiple Real Input Multiple Boolean Output
                         continuous control block with same number of
                         inputs and outputs

  **ModelicaAdditions.Bl 
  ocks.Logical.**        

  TriggeredTrapezoid     Triggered trapezoid generator

  Hysteresis             Transform Real to Boolean with Hysteresis

  OnOffController        On-off controller

  Compare                True, if signal of inPort1 is larger than signal
                         of inPort2

  ZeroCrossing           Trigger zero crossing of input signal

  **ModelicaAdditions.** 

  Blocks.Multiplexer.Ext Extract scalar signal out of signal vector
  ractor                 dependent on IntegerRealInput index

  Tables.CombiTable1Ds   Table look-up in one dimension (matrix/file) with
                         only single input
  ---------------------- -------------------------------------------------

**Package-specific Changes**

-   All example models made **encapsulated**
-   Upper case constants changed to lower case (cf. Modelica.Constants)
-   Introduced Modelica.SIunits.Wavelength due to typo "Wavelenght"
-   Introduced ModelicaAdditions.Blocks.Logical.Interfaces.Comparison
    due to typo "Comparision"
-   Changed these components of \*.Blocks to `block` class, which have
    not been already of block type
-   Changed \*.Interfaces.RelativeSensor to `partial` models

**Class-specific Changes**

*Modelica.SIunits*

Removed `final` from quantity attribute for *Mass* and *MassFlowRate*.

*Modelica.Blocks.Math.Sum*

Implemented avoiding algorithm section, which would lead to expensive
function calls.

*Modelica.Blocks.Sources.Step*

    block Step "Generate step signals of type Real"
            parameter Real height[:]={1} "Heights of steps";
     // parameter Real offset[:]={0} "Offsets of output signals";
    // parameter SIunits.Time startTime[:]={0} "Output = offset for time < startTime";
    // extends Interfaces.MO          (final nout=max([size(height, 1); size(offset, 1); size(startTime, 1)]));
            extends Interfaces.SignalSource(final nout=max([size(height, 1); size(offset, 1); size(startTime, 1)]));

*Modelica.Blocks.Sources.Exponentials*

Replaced usage of built-in function `exp` by Modelica.Math.exp.

*Modelica.Blocks.Sources.TimeTable*

Interface definition changed from

    parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] "Table matrix (time = first column)";

to

    parameter Real table[:, 2]=[0, 0; 1, 1; 2, 4] "Table matrix (time = first column)";

Did the same for subfunction *getInterpolationCoefficients*.

Bug in *getInterpolationCoefficients* for startTime <\> 0 fixed:

    ...
            end if;
      end if;
      // Take into account startTime "a*(time - startTime) + b"
      b := b - a*startTime;
    end getInterpolationCoefficients;

*Modelica.Blocks.Sources.BooleanStep*

    block BooleanStep "Generate step signals of type Boolean"
            parameter SIunits.Time startTime[:]={0} "Time instants of steps";
            parameter Boolean startValue[size(startTime, 1)]=fill(false, size(startTime, 1)) "Output before startTime";
            extends Interfaces.BooleanSignalSource(final nout=size(startTime, 1));
    equation
            for i in 1:nout loop
    //   outPort.signal[i] = time >= startTime[i];
              outPort.signal[i] = if time >= startTime[i] then not startValue[i] else startValue[i];
            end for;
    end BooleanStep;

*Modelica.Electrical.Analog*

Corrected table of values and default for Beta by dividing them by 1000
(consistent with the values used in the NAND-example model):

-   Semiconductors.PMOS
-   Semiconductors.NMOS

Corrected parameter defaults, unit and description for TrapezoidCurrent.
This makes the parameters consistent with their use in the model. Models
specifying parameter values are not changed. Models not specifying
parameter values did not generate trapezoids previously.

Icon layer background changed from transparent to white:

-   Basic.Gyrator
-   Basic.EMF
-   Ideal.Idle
-   Ideal.Short

Basic.Transformer: Replaced invalid escape characters '\\ ' and
'\\[newline]' in documentation by '|'.

*Modelica.Mechanics.Rotational*

Removed arrows and names documentation from flanges in diagram layer

*Modelica.Mechanics.Rotational.Interfaces.FrictionBase*

*Modelica.Mechanics.Rotational.Position*

Replaced `reinit` by `initial equation`

*Modelica.Mechanics.Rotational.RelativeStates*

Bug corrected by using modifier `stateSelect = StateSelect.prefer` as
implementation

*Modelica.Mechanics.Translational.Interfaces.flange\_b*

Attribute **fillColor=7** added to Rectangle on Icon layer, i.e., it is
now filled with white and not transparent any more.

*Modelica.Mechanics.Translational.Position*

Replaced `reinit` by `initial equation`

*Modelica.Mechanics.Translational.RelativeStates*

Bug corrected by using modifier `stateSelect = StateSelect.prefer` as
implementation

*Modelica.Mechanics.Translational.Stop*

Use `stateSelect = StateSelect.prefer`.

*Modelica.Mechanics.Translational.Examples.PreLoad*

Improved documentation and coordinate system used for example.

*ModelicaAdditions.Blocks.Nonlinear.PadeDelay*

Replaced `reinit` by `initial equation`

*ModelicaAdditions.HeatFlow1D.Interfaces*

Definition of connectors *Surface\_a* and *Surface\_b*:
  ~ `flow SIunits.HeatFlux q;` changed to

`flow SIunits.HeatFlowRate q;`

*MultiBody.Parts.InertialSystem*

Icon corrected.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image39](Modelica.UsersGuide.Conventions.UsersGuide.RevisionHistoryI.png) [Modelica.UsersGuide.ReleaseNotes](Modelica_UsersGuide_ReleaseNotes.html#Modelica.UsersGuide.ReleaseNotes).Version\_1\_4
====================================================================================================================================================================================================

::

-   Several minor bugs fixed.
-   New models:
      ~ Modelica.Blocks.Interfaces.IntegerRealInput/IntegerRealOutput,
        Modelica.Blocks.Math.TwoInputs/TwoOutputs
        Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin,
        Modelica.Mechanics.Rotational.Move,
        Modelica.Mechanics.Translational.Move.

* * * * *

### Version 1.4.1beta1 (February 12, 2001)

Adapted to Modelica 1.4

* * * * *

### Version 1.3.2beta2 (June 20, 2000)

-   New subpackage Modelica.Mechanics.**Translational**
-   Changes to Modelica.Mechanics.**Rotational**:
      ~ New elements:

    <!-- -->

        IdealGearR2T    Ideal gear transforming rotational in translational motion.
        Position        Forced movement of a flange with a reference angle
                                           given as input signal
        RelativeStates  Definition of relative state variables

-   Changes to Modelica.**SIunits**:
      ~ Introduced new types: type Temperature =
        ThermodynamicTemperature; types DerDensityByEnthalpy,
        DerDensityByPressure,

    DerDensityByTemperature, DerEnthalpyByPressure, DerEnergyByDensity,
    DerEnergyByPressure Attribute "final" removed from min and max
    values in order that these values can still be changed to narrow the
    allowed range of values. Quantity="Stress" removed from type
    "Stress", in order that a type "Stress" can be connected to a type
    "Pressure".
-   Changes to Modelica.**Icons**:
      ~ New icons for motors and gearboxes.

-   Changes to Modelica.**Blocks.Interfaces**:
      ~ Introduced a replaceable signal type into

    Blocks.Interfaces.RealInput/RealOutput:

        replaceable type SignalType = Real

    in order that the type of the signal of an input/output block can be
    changed to a physical type, for example:

        Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))

* * * * *

### Version 1.3.1 (Dec. 13, 1999)

First official release of the library.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:32 2010.
