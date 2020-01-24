<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="no" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:5272020">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="TRANSFORMER" urn="urn:adsk.eagle:symbol:5272027/1" library_version="1">
<description>Coupled inductors</description>
<pin name="P$1" x="-12.7" y="10.16" visible="off" length="middle"/>
<pin name="P$2" x="-12.7" y="-10.16" visible="off" length="middle"/>
<pin name="P$3" x="12.7" y="10.16" visible="off" length="middle" rot="R180"/>
<pin name="P$4" x="12.7" y="-10.16" visible="off" length="middle" rot="R180"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="7.62" width="0.1524" layer="94" curve="-180"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="-2.54" width="0.1524" layer="94" curve="180"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94" curve="180"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="7.62" width="0.1524" layer="94" curve="180"/>
<wire x1="-7.62" y1="10.16" x2="-5.08" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="10.16" x2="7.62" y2="10.16" width="0.1524" layer="94"/>
<circle x="-6.35" y="8.89" radius="0.359209375" width="0.1524" layer="94"/>
<circle x="6.35" y="8.89" radius="0.359209375" width="0.1524" layer="94"/>
<text x="-8.128" y="-0.762" size="2.54" layer="94" align="center">+



-</text>
<text x="8.128" y="-1.016" size="2.54" layer="94" align="center">+



-</text>
<text x="-3.81" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="4.572" size="1.778" layer="94">N1</text>
<text x="3.302" y="4.572" size="1.778" layer="94">N2</text>
<text x="-7.62" y="-15.24" size="1.778" layer="94">RATIO=N2/N1</text>
</symbol>
<symbol name="VOLTAGE" urn="urn:adsk.eagle:symbol:5272021/1" library_version="1">
<description>Independent Voltage Source, either DC, AC, PULSE, SINE, PWL, EXP, or SFFM</description>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="94"/>
<pin name="+" x="0" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="-" x="0" y="-7.62" visible="off" length="short" direction="pas" rot="R90"/>
<text x="7.62" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="7.62" y="-2.54" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="7.62" y="-5.08" size="1.778" layer="97">&gt;SPICEEXTRA</text>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
</symbol>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="2">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
<symbol name="R" urn="urn:adsk.eagle:symbol:5272030/1" library_version="1">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-8.89" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
<symbol name="AMMETER" urn="urn:adsk.eagle:symbol:5272024/1" library_version="1">
<description>Current probe</description>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="94"/>
<pin name="+" x="0" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="-" x="0" y="-7.62" visible="off" length="short" direction="pas" rot="R90"/>
<text x="7.62" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<wire x1="0" y1="3.81" x2="0" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.81" x2="2.54" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.81" x2="-2.54" y2="-1.27" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TRANSFORMER" urn="urn:adsk.eagle:component:5272045/1" prefix="X" library_version="1">
<description>Coupled inductors&lt;br&gt;&lt;br&gt;
The RATIO is defined in the schematic by using&lt;br&gt;
the text command and adding a line that says:&lt;br&gt;
.PARAM RATIO=x&lt;br&gt;
Where x is the turns ratio of the transformer</description>
<gates>
<gate name="G$1" symbol="TRANSFORMER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="P$1" pinorder="1"/>
<pinmap gate="G$1" pin="P$2" pinorder="2"/>
<pinmap gate="G$1" pin="P$3" pinorder="3"/>
<pinmap gate="G$1" pin="P$4" pinorder="4"/>
</pinmapping>
<model name="XFORMER">
**********************
* Autodesk EAGLE - Spice Model File
* transformer subcircuit, requires RATIO parameter defined
* Date: 10/1/17
**********************
.SUBCKT XFORMER 1 2 3 4
E 5 4 1 2 {RATIO}
F 1 2 VM {RATIO}
VM 5 6
RP 1 2 1MEG
RS 6 3 1U
.ENDS XFORMER</model>
</spice>
</deviceset>
<deviceset name="VOLTAGE" urn="urn:adsk.eagle:component:5272042/1" prefix="V" uservalue="yes" library_version="1">
<description>Independent Voltage Source, either DC, AC, PULSE, SINE, PWL, EXP, or SFFM</description>
<gates>
<gate name="G$1" symbol="VOLTAGE" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="VALUE" value="0V" constant="no"/>
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="V">
<pinmap gate="G$1" pin="+" pinorder="1"/>
<pinmap gate="G$1" pin="-" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="2">
<description>Simulation ground symbol (spice node 0)</description>
<gates>
<gate name="G$1" symbol="0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICEGROUND" value=""/>
<attribute name="_EXTERNAL_" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" urn="urn:adsk.eagle:component:5272053/1" prefix="R" uservalue="yes" library_version="1">
<description>RESISTOR</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="AMMETER" urn="urn:adsk.eagle:component:5272044/1" prefix="VCUR_" uservalue="yes" library_version="1">
<description>AMMETER</description>
<gates>
<gate name="G$1" symbol="AMMETER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="V">
<pinmap gate="G$1" pin="+" pinorder="1"/>
<pinmap gate="G$1" pin="-" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="DIODE" urn="urn:adsk.eagle:symbol:527450/4" library_version="18">
<description>Diode</description>
<pin name="A" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="C" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-5.08" y="-5.08" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-5.08" y="-7.62" size="1.778" layer="97">&gt;SPICEEXTRA</text>
<text x="-5.08" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DIODE" urn="urn:adsk.eagle:component:527471/11" prefix="D" library_version="18">
<description>Diode</description>
<gates>
<gate name="G$1" symbol="DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="D">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
<model name="DMOD">
**********************
* Autodesk EAGLE - Spice Model File
* Date: 9/17/17
* basic diode intrinsic model
**********************
.MODEL DMOD D</model>
</spice>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
<class number="1" name="dcgnd" width="0" drill="0">
</class>
</classes>
<parts>
<part name="V1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 240V SIN(0 240 50hz 0 0)"/>
<part name="R1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="0.1"/>
<part name="VCUR_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="AMMETER" device="" value="DC 0V AC 0"/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="GND" device=""/>
<part name="X1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="TRANSFORMER" device=""/>
<part name="R3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="10"/>
<part name="D2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="DIODE" device="">
<spice>
<pinmapping spiceprefix="D">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
<model name="DMOD">
**********************
* Autodesk EAGLE - Spice Model File
* Date: 9/17/17
* basic diode intrinsic model
**********************
.MODEL DMOD D</model>
</spice>
<attribute name="SPICEPREFIX" value="D"/>
</part>
<part name="D1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="DIODE" device="">
<spice>
<pinmapping spiceprefix="D">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
<model name="DMOD">
**********************
* Autodesk EAGLE - Spice Model File
* Date: 9/17/17
* basic diode intrinsic model
**********************
.MODEL DMOD D</model>
</spice>
<attribute name="SPICEPREFIX" value="D"/>
</part>
<part name="D3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="DIODE" device="">
<spice>
<pinmapping spiceprefix="D">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
<model name="DMOD">
**********************
* Autodesk EAGLE - Spice Model File
* Date: 9/17/17
* basic diode intrinsic model
**********************
.MODEL DMOD D</model>
</spice>
<attribute name="SPICEPREFIX" value="D"/>
</part>
<part name="D4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="DIODE" device="">
<spice>
<pinmapping spiceprefix="D">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
<model name="DMOD">
**********************
* Autodesk EAGLE - Spice Model File
* Date: 9/17/17
* basic diode intrinsic model
**********************
.MODEL DMOD D</model>
</spice>
<attribute name="SPICEPREFIX" value="D"/>
</part>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="GND" device=""/>
<part name="R2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="10"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="102.87" y="55.372" size="1.778" layer="94">.PARAM
RATIO=1/10</text>
<wire x1="0" y1="62.23" x2="212.09" y2="62.23" width="0.1524" layer="94"/>
<wire x1="212.09" y1="62.23" x2="212.09" y2="0" width="0.1524" layer="94"/>
<wire x1="212.09" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="62.23" width="0.1524" layer="94"/>
<text x="3.81" y="53.34" size="2.286" layer="94">Ideal Transformer Example
Simulate transient from 1-5ms while adjusting RATIO</text>
</plain>
<instances>
<instance part="V1" gate="G$1" x="10.16" y="27.94" smashed="yes">
<attribute name="NAME" x="17.78" y="30.48" size="1.778" layer="95"/>
<attribute name="VALUE" x="17.78" y="27.94" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="20.32" y="38.1" smashed="yes">
<attribute name="NAME" x="17.78" y="40.64" size="1.778" layer="95"/>
<attribute name="VALUE" x="17.78" y="34.29" size="1.778" layer="96"/>
</instance>
<instance part="VCUR_1" gate="G$1" x="200.66" y="27.94" smashed="yes">
<attribute name="NAME" x="208.28" y="22.86" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="X_2" gate="G$1" x="10.16" y="12.7" smashed="yes"/>
<instance part="X1" gate="G$1" x="60.96" y="27.94" smashed="yes">
<attribute name="NAME" x="57.15" y="40.64" size="1.778" layer="95"/>
</instance>
<instance part="R3" gate="G$1" x="114.3" y="10.16" smashed="yes">
<attribute name="NAME" x="111.76" y="12.7" size="1.778" layer="95"/>
<attribute name="VALUE" x="111.76" y="6.35" size="1.778" layer="96"/>
</instance>
<instance part="D2" gate="G$1" x="139.7" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="135.89" y="43.18" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="144.78" y="43.18" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D1" gate="G$1" x="152.4" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="148.59" y="43.18" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="157.48" y="43.18" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D3" gate="G$1" x="152.4" y="22.86" smashed="yes" rot="R90">
<attribute name="NAME" x="148.59" y="17.78" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="157.48" y="17.78" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D4" gate="G$1" x="139.7" y="22.86" smashed="yes" rot="R90">
<attribute name="NAME" x="135.89" y="17.78" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="144.78" y="17.78" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X_3" gate="G$1" x="93.98" y="5.08" smashed="yes"/>
<instance part="R2" gate="G$1" x="165.1" y="10.16" smashed="yes">
<attribute name="NAME" x="162.56" y="12.7" size="1.778" layer="95"/>
<attribute name="VALUE" x="162.56" y="6.35" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="+"/>
<wire x1="10.16" y1="38.1" x2="10.16" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="15.24" y1="38.1" x2="10.16" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<label x="78.74" y="38.1" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="P$3"/>
<probe x="80.01" y="44.45" size="1.778" layer="89" probetype="0"/>
<wire x1="73.66" y1="38.1" x2="139.7" y2="38.1" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="D4" gate="G$1" pin="C"/>
<wire x1="139.7" y1="43.18" x2="139.7" y2="38.1" width="0.1524" layer="91"/>
<wire x1="139.7" y1="38.1" x2="139.7" y2="27.94" width="0.1524" layer="91"/>
<junction x="139.7" y="38.1"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="48.26" y1="38.1" x2="25.4" y2="38.1" width="0.1524" layer="91"/>
<label x="34.29" y="38.1" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="P$1"/>
<probe x="45.72" y="43.18" size="1.778" layer="89" probetype="0"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="-"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="48.26" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<label x="34.29" y="17.78" size="1.778" layer="95"/>
<pinref part="X_2" gate="G$1" pin="0"/>
<wire x1="10.16" y1="12.7" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<junction x="10.16" y="17.78"/>
<pinref part="X1" gate="G$1" pin="P$2"/>
</segment>
<segment>
<wire x1="73.66" y1="17.78" x2="73.66" y2="10.16" width="0.1524" layer="91"/>
<wire x1="73.66" y1="10.16" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<label x="83.82" y="10.16" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="P$4"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="X_3" gate="G$1" pin="0"/>
<wire x1="93.98" y1="10.16" x2="109.22" y2="10.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="5.08" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<junction x="93.98" y="10.16"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="D3" gate="G$1" pin="C"/>
<wire x1="152.4" y1="43.18" x2="152.4" y2="33.02" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="152.4" y1="33.02" x2="152.4" y2="27.94" width="0.1524" layer="91"/>
<wire x1="119.38" y1="10.16" x2="132.08" y2="10.16" width="0.1524" layer="91"/>
<wire x1="132.08" y1="10.16" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="132.08" y1="33.02" x2="152.4" y2="33.02" width="0.1524" layer="91"/>
<junction x="152.4" y="33.02"/>
</segment>
</net>
<net name="GNDGL" class="0">
<segment>
<pinref part="VCUR_1" gate="G$1" pin="-"/>
<wire x1="200.66" y1="10.16" x2="200.66" y2="20.32" width="0.1524" layer="91"/>
<label x="193.04" y="7.62" size="1.778" layer="95"/>
<probe x="182.88" y="12.7" size="1.778" layer="89" probetype="0"/>
<wire x1="170.18" y1="10.16" x2="200.66" y2="10.16" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="VGL" class="1">
<segment>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="139.7" y1="53.34" x2="139.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="139.7" y1="58.42" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="152.4" y1="58.42" x2="152.4" y2="53.34" width="0.1524" layer="91"/>
<pinref part="VCUR_1" gate="G$1" pin="+"/>
<wire x1="152.4" y1="58.42" x2="200.66" y2="58.42" width="0.1524" layer="91"/>
<wire x1="200.66" y1="58.42" x2="200.66" y2="35.56" width="0.1524" layer="91"/>
<junction x="152.4" y="58.42"/>
<probe x="203.2" y="48.26" size="1.778" layer="89" probetype="0"/>
<label x="196.088" y="59.436" size="1.778" layer="95"/>
<probe x="218.44" y="60.96" size="1.778" layer="89" probetype="0"/>
</segment>
</net>
<net name="GNDGL2" class="1">
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="152.4" y1="10.16" x2="152.4" y2="17.78" width="0.1524" layer="91"/>
<junction x="152.4" y="10.16"/>
<wire x1="152.4" y1="10.16" x2="160.02" y2="10.16" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="139.7" y1="17.78" x2="139.7" y2="10.16" width="0.1524" layer="91"/>
<wire x1="139.7" y1="10.16" x2="152.4" y2="10.16" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<label x="139.7" y="5.08" size="1.778" layer="95"/>
<probe x="137.16" y="2.54" size="1.778" layer="89" probetype="0"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
