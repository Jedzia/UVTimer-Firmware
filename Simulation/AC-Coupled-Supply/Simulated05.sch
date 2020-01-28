<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
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
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:5272020">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
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
<symbol name="C" urn="urn:adsk.eagle:symbol:527449/4" library_version="18">
<description>Capacitor</description>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.54" y="-5.08" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
<symbol name="AMMETER" urn="urn:adsk.eagle:symbol:527458/5" library_version="18">
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
<deviceset name="C" urn="urn:adsk.eagle:component:527468/6" prefix="C" uservalue="yes" library_version="18">
<description>CAPACITOR</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
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
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="AMMETER" urn="urn:adsk.eagle:component:527479/5" prefix="VCUR_" uservalue="yes" library_version="18">
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
<library name="linear" urn="urn:adsk.eagle:library:262">
<description>&lt;b&gt;Linear Devices&lt;/b&gt;&lt;p&gt;
Operational amplifiers,  comparators, voltage regulators, ADCs, DACs, etc.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO92" urn="urn:adsk.eagle:footprint:16150/1" library_version="5">
<description>&lt;b&gt;TO-92&lt;/b&gt;</description>
<wire x1="-2.095" y1="-1.651" x2="-0.7869" y2="2.5484" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="0.7869" y1="2.5484" x2="2.095" y2="-1.651" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="-2.095" y1="-1.651" x2="2.095" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.254" y1="-0.254" x2="-0.286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.655" y1="-0.254" x2="-2.254" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.286" y1="-0.254" x2="0.286" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="2.254" y1="-0.254" x2="2.655" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.286" y1="-0.254" x2="2.254" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.7864" y1="2.5484" x2="0.7864" y2="2.5484" width="0.1524" layer="51" curve="-34.298964"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.921" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TO220H" urn="urn:adsk.eagle:footprint:16151/1" library_version="5">
<description>&lt;b&gt;TO-220&lt;/b&gt;</description>
<wire x1="-5.207" y1="-7.62" x2="5.207" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="5.207" y1="8.255" x2="-5.207" y2="8.255" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-7.62" x2="5.207" y2="4.826" width="0.1524" layer="21"/>
<wire x1="5.207" y1="4.826" x2="4.318" y2="4.826" width="0.1524" layer="21"/>
<wire x1="4.318" y1="4.826" x2="4.318" y2="6.35" width="0.1524" layer="21"/>
<wire x1="4.318" y1="6.35" x2="5.207" y2="6.35" width="0.1524" layer="21"/>
<wire x1="5.207" y1="6.35" x2="5.207" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-7.62" x2="-5.207" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.826" x2="-4.318" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="4.826" x2="-4.318" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="6.35" x2="-5.207" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="6.35" x2="-5.207" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-6.985" x2="4.572" y2="-6.985" width="0.0508" layer="21"/>
<wire x1="4.572" y1="1.27" x2="4.572" y2="-6.985" width="0.0508" layer="21"/>
<wire x1="4.572" y1="1.27" x2="-4.572" y2="1.27" width="0.0508" layer="21"/>
<wire x1="-4.572" y1="-6.985" x2="-4.572" y2="1.27" width="0.0508" layer="21"/>
<circle x="0" y="4.826" radius="1.8034" width="0.1524" layer="21"/>
<circle x="0" y="4.826" radius="2.54" width="0" layer="43"/>
<circle x="0" y="4.826" radius="2.54" width="0" layer="42"/>
<pad name="1" x="-2.54" y="-10.16" drill="1.1176" shape="long" rot="R90"/>
<pad name="2" x="0" y="-10.16" drill="1.1176" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-10.16" drill="1.1176" shape="long" rot="R90"/>
<text x="-5.461" y="-10.922" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="7.366" y="-11.049" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="2.159" y1="-11.049" x2="2.921" y2="-10.414" layer="21"/>
<rectangle x1="-0.381" y1="-11.049" x2="0.381" y2="-10.414" layer="21"/>
<rectangle x1="-2.921" y1="-11.049" x2="-2.159" y2="-10.414" layer="21"/>
<rectangle x1="-3.175" y1="-10.414" x2="-1.905" y2="-7.62" layer="21"/>
<rectangle x1="-0.635" y1="-10.414" x2="0.635" y2="-7.62" layer="21"/>
<rectangle x1="1.905" y1="-10.414" x2="3.175" y2="-7.62" layer="21"/>
<hole x="0" y="4.826" drill="3.302"/>
</package>
<package name="TO39" urn="urn:adsk.eagle:footprint:16152/1" library_version="5">
<description>&lt;b&gt;Metal Can Package&lt;/b&gt;</description>
<wire x1="-4.0386" y1="-3.5306" x2="-3.5052" y2="-2.9972" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-3.5306" x2="-3.5052" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="-4.064" x2="-4.0386" y2="-3.5306" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.8608" width="0.0508" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="0" y="2.54" drill="0.8128" shape="octagon"/>
<text x="-2.794" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TO252" urn="urn:adsk.eagle:footprint:16153/1" library_version="5">
<description>&lt;b&gt;SMALL OUTLINE TRANSISTOR&lt;/b&gt;&lt;p&gt;
TS-003</description>
<wire x1="3.2766" y1="3.8354" x2="3.277" y2="-2.159" width="0.2032" layer="21"/>
<wire x1="3.277" y1="-2.159" x2="-3.277" y2="-2.159" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="-2.159" x2="-3.2766" y2="3.8354" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="3.835" x2="3.2774" y2="3.8346" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="3.937" x2="-2.5654" y2="4.6482" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="4.6482" x2="-2.1082" y2="5.1054" width="0.2032" layer="51"/>
<wire x1="-2.1082" y1="5.1054" x2="2.1082" y2="5.1054" width="0.2032" layer="51"/>
<wire x1="2.1082" y1="5.1054" x2="2.5654" y2="4.6482" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="4.6482" x2="2.5654" y2="3.937" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="3.937" x2="-2.5654" y2="3.937" width="0.2032" layer="51"/>
<smd name="3" x="0" y="2.5" dx="5.4" dy="6.2" layer="1"/>
<smd name="1" x="-2.28" y="-4.8" dx="1" dy="1.6" layer="1"/>
<smd name="2" x="2.28" y="-4.8" dx="1" dy="1.6" layer="1"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.7178" y1="-5.1562" x2="-1.8542" y2="-2.2606" layer="51"/>
<rectangle x1="1.8542" y1="-5.1562" x2="2.7178" y2="-2.2606" layer="51"/>
<rectangle x1="-0.4318" y1="-3.0226" x2="0.4318" y2="-2.2606" layer="21"/>
<polygon width="0.1998" layer="51">
<vertex x="-2.5654" y="3.937"/>
<vertex x="-2.5654" y="4.6482"/>
<vertex x="-2.1082" y="5.1054"/>
<vertex x="2.1082" y="5.1054"/>
<vertex x="2.5654" y="4.6482"/>
<vertex x="2.5654" y="3.937"/>
</polygon>
</package>
<package name="TO220V" urn="urn:adsk.eagle:footprint:16154/1" library_version="5">
<description>&lt;b&gt;TO 200 vertical&lt;/b&gt;</description>
<wire x1="5.08" y1="-1.143" x2="4.953" y2="-4.064" width="0.127" layer="21"/>
<wire x1="4.699" y1="-4.318" x2="4.953" y2="-4.064" width="0.127" layer="21"/>
<wire x1="4.699" y1="-4.318" x2="-4.699" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-4.953" y1="-4.064" x2="-4.699" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-4.953" y1="-4.064" x2="-5.08" y2="-1.143" width="0.127" layer="21"/>
<circle x="-4.4958" y="-3.7084" radius="0.254" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="-6.0452" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.175" y="-3.175" size="1.27" layer="51" ratio="10">1</text>
<text x="-0.635" y="-3.175" size="1.27" layer="51" ratio="10">2</text>
<text x="1.905" y="-3.175" size="1.27" layer="51" ratio="10">3</text>
<rectangle x1="-5.334" y1="-0.762" x2="5.334" y2="0" layer="21"/>
<rectangle x1="-5.334" y1="-1.27" x2="-3.429" y2="-0.762" layer="21"/>
<rectangle x1="-1.651" y1="-1.27" x2="-0.889" y2="-0.762" layer="21"/>
<rectangle x1="-3.429" y1="-1.27" x2="-1.651" y2="-0.762" layer="51"/>
<rectangle x1="0.889" y1="-1.27" x2="1.651" y2="-0.762" layer="21"/>
<rectangle x1="3.429" y1="-1.27" x2="5.334" y2="-0.762" layer="21"/>
<rectangle x1="-0.889" y1="-1.27" x2="0.889" y2="-0.762" layer="51"/>
<rectangle x1="1.651" y1="-1.27" x2="3.429" y2="-0.762" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="TO92" urn="urn:adsk.eagle:package:16416/2" type="model" library_version="5">
<description>TO-92</description>
<packageinstances>
<packageinstance name="TO92"/>
</packageinstances>
</package3d>
<package3d name="TO220H" urn="urn:adsk.eagle:package:16414/1" type="box" library_version="5">
<description>TO-220</description>
<packageinstances>
<packageinstance name="TO220H"/>
</packageinstances>
</package3d>
<package3d name="TO39" urn="urn:adsk.eagle:package:16419/1" type="box" library_version="5">
<description>Metal Can Package</description>
<packageinstances>
<packageinstance name="TO39"/>
</packageinstances>
</package3d>
<package3d name="TO252" urn="urn:adsk.eagle:package:16415/2" type="model" library_version="5">
<description>SMALL OUTLINE TRANSISTOR
TS-003</description>
<packageinstances>
<packageinstance name="TO252"/>
</packageinstances>
</package3d>
<package3d name="TO220V" urn="urn:adsk.eagle:package:16417/2" type="model" library_version="5">
<description>TO 200 vertical</description>
<packageinstances>
<packageinstance name="TO220V"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="78XX" urn="urn:adsk.eagle:symbol:16149/1" library_version="5">
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="2.54" width="0.4064" layer="94"/>
<wire x1="7.62" y1="2.54" x2="-7.62" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.032" y="-4.318" size="1.524" layer="95">GND</text>
<pin name="VI" x="-10.16" y="0" length="short" direction="in"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="VO" x="10.16" y="0" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="78*" urn="urn:adsk.eagle:component:16686/5" prefix="IC" library_version="5">
<description>Positive &lt;b&gt;VOLTAGE REGULATOR&lt;/b&gt;&lt;p&gt;
Source:&lt;br&gt;
http://cache.national.com/ds/LM/LM78L05.pdf&lt;br&gt;
http://www.fairchildsemi.com/ds/LM/LM7805.pdf</description>
<gates>
<gate name="A1" symbol="78XX" x="0" y="0"/>
</gates>
<devices>
<device name="Z" package="TO92">
<connects>
<connect gate="A1" pin="GND" pad="2"/>
<connect gate="A1" pin="VI" pad="3"/>
<connect gate="A1" pin="VO" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16416/2"/>
</package3dinstances>
<technologies>
<technology name="L05">
<attribute name="POPULARITY" value="12" constant="no"/>
</technology>
<technology name="L08">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="L12">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="L15">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="L18">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="L24">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="T" package="TO220H">
<connects>
<connect gate="A1" pin="GND" pad="2"/>
<connect gate="A1" pin="VI" pad="1"/>
<connect gate="A1" pin="VO" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16414/1"/>
</package3dinstances>
<technologies>
<technology name="05">
<attribute name="POPULARITY" value="35" constant="no"/>
</technology>
<technology name="06">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="08">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="12">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="15">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="18">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="24">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="H" package="TO39">
<connects>
<connect gate="A1" pin="GND" pad="3"/>
<connect gate="A1" pin="VI" pad="1"/>
<connect gate="A1" pin="VO" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16419/1"/>
</package3dinstances>
<technologies>
<technology name="05">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="06">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="08">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="12">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="15">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="18">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="24">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="L" package="TO92">
<connects>
<connect gate="A1" pin="GND" pad="2"/>
<connect gate="A1" pin="VI" pad="3"/>
<connect gate="A1" pin="VO" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16416/2"/>
</package3dinstances>
<technologies>
<technology name="05">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="06">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="08">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="12">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="15">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="18">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="24">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="DT" package="TO252">
<connects>
<connect gate="A1" pin="GND" pad="3"/>
<connect gate="A1" pin="VI" pad="1"/>
<connect gate="A1" pin="VO" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16415/2"/>
</package3dinstances>
<technologies>
<technology name="05">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="06">
<attribute name="POPULARITY" value="18" constant="no"/>
</technology>
<technology name="08">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="12">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="15">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="18">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="24">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="TV" package="TO220V">
<connects>
<connect gate="A1" pin="GND" pad="2"/>
<connect gate="A1" pin="VI" pad="1"/>
<connect gate="A1" pin="VO" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16417/2"/>
</package3dinstances>
<technologies>
<technology name="05">
<attribute name="POPULARITY" value="57" constant="no"/>
</technology>
<technology name="12">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="15">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="18">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="24">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="6">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="8">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="simulation">
<packages>
</packages>
<symbols>
<symbol name="DIFFPROBE1">
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="2.54" y1="5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<text x="-5.08" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="IN+" x="-10.16" y="2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="IN-" x="-10.16" y="-2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="OUT" x="10.16" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<wire x1="2.54" y1="5.08" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DIFFPROBE">
<gates>
<gate name="G$1" symbol="DIFFPROBE1" x="0" y="0"/>
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
<pinmap gate="G$1" pin="IN+" pinorder="1"/>
<pinmap gate="G$1" pin="IN-" pinorder="2"/>
<pinmap gate="G$1" pin="OUT" pinorder="3"/>
</pinmapping>
<model name="MEASDIFF">
.subckt measdiff in+ in- out
Emeas out 0 in+ in- 1
.ends</model>
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
<part name="V1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 340V SIN(0 340 50hz 0 0)"/>
<part name="R1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="0.01"/>
<part name="VCUR_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="AMMETER" device="" value="DC 0V AC 0"/>
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
<part name="R2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="220"/>
<part name="C1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value=".39u"/>
<part name="D5" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="DIODE" device="" value="">
<spice>
<pinmapping isusermap="yes" isdevicewide="no">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
</spice>
<attribute name="SPICEMODEL" value="DI_BZT52C9V1LP"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="C2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value="100n"/>
<part name="D6" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="DIODE" device="">
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
<part name="VCUR_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="AMMETER" device=""/>
<part name="R3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="100k"/>
<part name="C3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value="47u"/>
<part name="I_LOAD" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="AMMETER" device=""/>
<part name="IC1" library="linear" library_urn="urn:adsk.eagle:library:262" deviceset="78*" device="Z" package3d_urn="urn:adsk.eagle:package:16416/2" technology="L05">
<spice>
<pinmapping isusermap="yes" isdevicewide="no">
<pinmap gate="A1" pin="GND" pinorder="2"/>
<pinmap gate="A1" pin="VI" pinorder="1"/>
<pinmap gate="A1" pin="VO" pinorder="3"/>
</pinmapping>
</spice>
<attribute name="SPICEMODEL" value="LM7805"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="C4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value="100n"/>
<part name="R4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="1k"/>
<part name="R5" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="1000k"/>
<part name="R6" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="220"/>
<part name="U$1" library="simulation" deviceset="DIFFPROBE" device=""/>
<part name="R7" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="1G"/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="102.87" y="65.532" size="1.778" layer="94">.PARAM
RATIO=1/10</text>
<wire x1="0" y1="72.39" x2="252.73" y2="72.39" width="0.1524" layer="94"/>
<wire x1="252.73" y1="72.39" x2="252.73" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="252.73" y1="-12.7" x2="0" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="0" y1="-12.7" x2="0" y2="72.39" width="0.1524" layer="94"/>
<text x="3.81" y="63.5" size="2.286" layer="94">Ideal Transformer Example
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
<instance part="VCUR_1" gate="G$1" x="116.84" y="38.1" smashed="yes" rot="R90">
<attribute name="NAME" x="121.92" y="45.72" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D2" gate="G$1" x="139.7" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="135.89" y="53.34" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="144.78" y="53.34" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D1" gate="G$1" x="152.4" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="148.59" y="53.34" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="157.48" y="53.34" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D3" gate="G$1" x="152.4" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="148.59" y="7.62" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="157.48" y="7.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D4" gate="G$1" x="139.7" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="135.89" y="7.62" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="144.78" y="7.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X_3" gate="G$1" x="139.7" y="-10.16" smashed="yes"/>
<instance part="R2" gate="G$1" x="172.72" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="170.18" y="55.88" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="176.53" y="55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C1" gate="G$1" x="93.98" y="38.1" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="40.64" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="93.98" y="40.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D5" gate="G$1" x="172.72" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="168.91" y="7.62" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="182.88" y="7.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C2" gate="G$1" x="200.66" y="12.7" smashed="yes">
<attribute name="NAME" x="203.2" y="15.24" size="1.778" layer="95"/>
<attribute name="VALUE" x="203.2" y="12.7" size="1.778" layer="96"/>
</instance>
<instance part="D6" gate="G$1" x="187.96" y="25.4" smashed="yes">
<attribute name="NAME" x="182.88" y="29.21" size="1.778" layer="95"/>
<attribute name="VALUE" x="182.88" y="20.32" size="1.778" layer="96"/>
</instance>
<instance part="VCUR_2" gate="G$1" x="172.72" y="40.64" smashed="yes">
<attribute name="NAME" x="180.34" y="35.56" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="R3" gate="G$1" x="246.38" y="10.16" smashed="yes" rot="R90">
<attribute name="NAME" x="243.84" y="7.62" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="250.19" y="7.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C3" gate="G$1" x="210.82" y="12.7" smashed="yes">
<attribute name="NAME" x="213.36" y="15.24" size="1.778" layer="95"/>
<attribute name="VALUE" x="213.36" y="12.7" size="1.778" layer="96"/>
</instance>
<instance part="I_LOAD" gate="G$1" x="231.14" y="25.4" smashed="yes" rot="R90">
<attribute name="NAME" x="236.22" y="33.02" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="IC1" gate="A1" x="274.32" y="25.4" smashed="yes">
<attribute name="NAME" x="266.7" y="31.115" size="1.778" layer="95"/>
<attribute name="VALUE" x="266.7" y="28.575" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="292.1" y="10.16" smashed="yes">
<attribute name="NAME" x="294.64" y="12.7" size="1.778" layer="95"/>
<attribute name="VALUE" x="294.64" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="R4" gate="G$1" x="309.88" y="10.16" smashed="yes" rot="R90">
<attribute name="NAME" x="307.34" y="7.62" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="313.69" y="7.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R5" gate="G$1" x="96.52" y="25.4" smashed="yes">
<attribute name="NAME" x="93.98" y="27.94" size="1.778" layer="95"/>
<attribute name="VALUE" x="93.98" y="21.59" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="66.04" y="38.1" smashed="yes">
<attribute name="NAME" x="63.5" y="40.64" size="1.778" layer="95"/>
<attribute name="VALUE" x="63.5" y="34.29" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="G$1" x="71.12" y="93.98" smashed="yes">
<attribute name="NAME" x="66.04" y="100.33" size="1.778" layer="95"/>
<attribute name="VALUE" x="66.04" y="86.36" size="1.778" layer="96"/>
</instance>
<instance part="R7" gate="G$1" x="86.36" y="86.36" smashed="yes" rot="R90">
<attribute name="NAME" x="83.82" y="83.82" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="90.17" y="83.82" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X_1" gate="G$1" x="86.36" y="78.74" smashed="yes"/>
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
<net name="VIN-L" class="0">
<segment>
<label x="78.74" y="38.1" size="1.778" layer="95"/>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="88.9" y1="38.1" x2="91.44" y2="38.1" width="0.1524" layer="91"/>
<wire x1="91.44" y1="25.4" x2="88.9" y2="25.4" width="0.1524" layer="91"/>
<wire x1="88.9" y1="25.4" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<junction x="88.9" y="38.1"/>
<wire x1="71.12" y1="38.1" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="VGL" class="1">
<segment>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="139.7" y1="63.5" x2="139.7" y2="68.58" width="0.1524" layer="91"/>
<wire x1="139.7" y1="68.58" x2="152.4" y2="68.58" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="152.4" y1="68.58" x2="152.4" y2="63.5" width="0.1524" layer="91"/>
<wire x1="152.4" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="172.72" y1="68.58" x2="200.66" y2="68.58" width="0.1524" layer="91"/>
<junction x="152.4" y="68.58"/>
<label x="196.088" y="69.596" size="1.778" layer="95"/>
<pinref part="R2" gate="G$1" pin="2"/>
<junction x="172.72" y="68.58"/>
<probe x="170.18" y="71.12" size="1.778" layer="89" rot="R90" probetype="0"/>
<wire x1="172.72" y1="63.5" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VIN-N" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="-"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="40.64" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<label x="34.29" y="17.78" size="1.778" layer="95"/>
<wire x1="40.64" y1="17.78" x2="40.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-2.54" x2="58.42" y2="-2.54" width="0.1524" layer="91"/>
<label x="83.82" y="-2.54" size="1.778" layer="95"/>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="D3" gate="G$1" pin="C"/>
<wire x1="58.42" y1="-2.54" x2="132.08" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="152.4" y1="53.34" x2="152.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="152.4" y1="33.02" x2="152.4" y2="17.78" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-2.54" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="132.08" y1="33.02" x2="152.4" y2="33.02" width="0.1524" layer="91"/>
<junction x="152.4" y="33.02"/>
<pinref part="U$1" gate="G$1" pin="IN-"/>
<wire x1="60.96" y1="91.44" x2="58.42" y2="91.44" width="0.1524" layer="91"/>
<wire x1="58.42" y1="91.44" x2="58.42" y2="-2.54" width="0.1524" layer="91"/>
<junction x="58.42" y="-2.54"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="152.4" y1="-2.54" x2="152.4" y2="7.62" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="139.7" y1="7.62" x2="139.7" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-2.54" x2="152.4" y2="-2.54" width="0.1524" layer="91"/>
<label x="139.7" y="-7.62" size="1.778" layer="95"/>
<pinref part="X_3" gate="G$1" pin="0"/>
<wire x1="139.7" y1="-10.16" x2="139.7" y2="-2.54" width="0.1524" layer="91"/>
<junction x="139.7" y="-2.54"/>
<label x="205.74" y="-5.08" size="1.778" layer="95"/>
<wire x1="152.4" y1="-2.54" x2="172.72" y2="-2.54" width="0.1524" layer="91"/>
<junction x="152.4" y="-2.54"/>
<pinref part="D5" gate="G$1" pin="A"/>
<wire x1="172.72" y1="-2.54" x2="200.66" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="172.72" y1="7.62" x2="172.72" y2="-2.54" width="0.1524" layer="91"/>
<junction x="172.72" y="-2.54"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="200.66" y1="7.62" x2="200.66" y2="-2.54" width="0.1524" layer="91"/>
<junction x="200.66" y="-2.54"/>
<wire x1="200.66" y1="-2.54" x2="210.82" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="210.82" y1="-2.54" x2="246.38" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="246.38" y1="5.08" x2="246.38" y2="-2.54" width="0.1524" layer="91"/>
<junction x="246.38" y="-2.54"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="210.82" y1="7.62" x2="210.82" y2="-2.54" width="0.1524" layer="91"/>
<junction x="210.82" y="-2.54"/>
<pinref part="IC1" gate="A1" pin="GND"/>
<wire x1="274.32" y1="17.78" x2="274.32" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-2.54" x2="246.38" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-2.54" x2="292.1" y2="-2.54" width="0.1524" layer="91"/>
<junction x="274.32" y="-2.54"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="292.1" y1="-2.54" x2="309.88" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-2.54" x2="309.88" y2="5.08" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="292.1" y1="5.08" x2="292.1" y2="-2.54" width="0.1524" layer="91"/>
<junction x="292.1" y="-2.54"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="86.36" y1="81.28" x2="86.36" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D4" gate="G$1" pin="C"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="139.7" y1="53.34" x2="139.7" y2="38.1" width="0.1524" layer="91"/>
<wire x1="139.7" y1="38.1" x2="139.7" y2="17.78" width="0.1524" layer="91"/>
<junction x="139.7" y="38.1"/>
<wire x1="124.46" y1="38.1" x2="139.7" y2="38.1" width="0.1524" layer="91"/>
<pinref part="VCUR_1" gate="G$1" pin="-"/>
</segment>
</net>
<net name="VPREREG" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="C"/>
<wire x1="172.72" y1="17.78" x2="172.72" y2="25.4" width="0.1524" layer="91"/>
<junction x="172.72" y="25.4"/>
<wire x1="182.88" y1="25.4" x2="172.72" y2="25.4" width="0.1524" layer="91"/>
<pinref part="D6" gate="G$1" pin="A"/>
<probe x="165.1" y="25.4" size="1.778" layer="89" rot="R90" probetype="0"/>
<wire x1="172.72" y1="25.4" x2="172.72" y2="33.02" width="0.1524" layer="91"/>
<pinref part="VCUR_2" gate="G$1" pin="-"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="99.06" y1="38.1" x2="104.14" y2="38.1" width="0.1524" layer="91"/>
<pinref part="VCUR_1" gate="G$1" pin="+"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="104.14" y1="38.1" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
<wire x1="101.6" y1="25.4" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<wire x1="104.14" y1="25.4" x2="104.14" y2="38.1" width="0.1524" layer="91"/>
<junction x="104.14" y="38.1"/>
</segment>
</net>
<net name="VREG" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="200.66" y1="15.24" x2="200.66" y2="25.4" width="0.1524" layer="91"/>
<wire x1="200.66" y1="25.4" x2="193.04" y2="25.4" width="0.1524" layer="91"/>
<pinref part="D6" gate="G$1" pin="C"/>
<wire x1="200.66" y1="25.4" x2="210.82" y2="25.4" width="0.1524" layer="91"/>
<junction x="200.66" y="25.4"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="210.82" y1="15.24" x2="210.82" y2="25.4" width="0.1524" layer="91"/>
<junction x="210.82" y="25.4"/>
<wire x1="210.82" y1="25.4" x2="223.52" y2="25.4" width="0.1524" layer="91"/>
<pinref part="I_LOAD" gate="G$1" pin="+"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="246.38" y1="25.4" x2="246.38" y2="15.24" width="0.1524" layer="91"/>
<wire x1="238.76" y1="25.4" x2="246.38" y2="25.4" width="0.1524" layer="91"/>
<pinref part="I_LOAD" gate="G$1" pin="-"/>
<probe x="246.38" y="38.1" size="1.778" layer="89" rot="R180" probetype="0"/>
<pinref part="IC1" gate="A1" pin="VI"/>
<wire x1="264.16" y1="25.4" x2="246.38" y2="25.4" width="0.1524" layer="91"/>
<junction x="246.38" y="25.4"/>
</segment>
</net>
<net name="V_LIN" class="0">
<segment>
<pinref part="IC1" gate="A1" pin="VO"/>
<wire x1="284.48" y1="25.4" x2="292.1" y2="25.4" width="0.1524" layer="91"/>
<probe x="299.72" y="33.02" size="1.778" layer="89" probetype="0"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="292.1" y1="25.4" x2="309.88" y2="25.4" width="0.1524" layer="91"/>
<wire x1="309.88" y1="15.24" x2="309.88" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="292.1" y1="12.7" x2="292.1" y2="25.4" width="0.1524" layer="91"/>
<junction x="292.1" y="25.4"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="25.4" y1="38.1" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
<label x="34.29" y="38.1" size="1.778" layer="95"/>
<pinref part="R6" gate="G$1" pin="1"/>
<probe x="48.26" y="48.26" size="1.778" layer="89" probetype="0"/>
<pinref part="U$1" gate="G$1" pin="IN+"/>
<wire x1="27.94" y1="38.1" x2="60.96" y2="38.1" width="0.1524" layer="91"/>
<wire x1="60.96" y1="96.52" x2="27.94" y2="96.52" width="0.1524" layer="91"/>
<wire x1="27.94" y1="96.52" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
<junction x="27.94" y="38.1"/>
</segment>
</net>
<net name="DIFF" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="86.36" y1="91.44" x2="86.36" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="OUT"/>
<wire x1="86.36" y1="93.98" x2="81.28" y2="93.98" width="0.1524" layer="91"/>
<probe x="91.44" y="99.06" size="1.778" layer="89" probetype="0"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="VCUR_2" gate="G$1" pin="+"/>
<wire x1="172.72" y1="48.26" x2="172.72" y2="53.34" width="0.1524" layer="91"/>
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
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
