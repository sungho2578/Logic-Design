<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="d0" />
        <signal name="d1" />
        <signal name="d2" />
        <signal name="d3" />
        <signal name="d4" />
        <signal name="d5" />
        <signal name="d6" />
        <signal name="d7" />
        <signal name="E" />
        <signal name="XLXN_41" />
        <signal name="XLXN_43" />
        <signal name="XLXN_51" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <port polarity="Output" name="d0" />
        <port polarity="Output" name="d1" />
        <port polarity="Output" name="d2" />
        <port polarity="Output" name="d3" />
        <port polarity="Output" name="d4" />
        <port polarity="Output" name="d5" />
        <port polarity="Output" name="d6" />
        <port polarity="Output" name="d7" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and4" name="XLXI_8">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="A" name="I3" />
            <blockpin signalname="d7" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_7">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="A" name="I3" />
            <blockpin signalname="d6" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="A" name="I3" />
            <blockpin signalname="d5" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="A" name="I3" />
            <blockpin signalname="d4" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_4">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_53" name="I3" />
            <blockpin signalname="d3" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_3">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_53" name="I3" />
            <blockpin signalname="d2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_2">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="XLXN_53" name="I3" />
            <blockpin signalname="d1" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_1">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="XLXN_53" name="I3" />
            <blockpin signalname="d0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2608" y="2592" name="XLXI_8" orien="R0" />
        <instance x="2608" y="2336" name="XLXI_7" orien="R0" />
        <instance x="2608" y="2080" name="XLXI_6" orien="R0" />
        <instance x="2608" y="1824" name="XLXI_5" orien="R0" />
        <instance x="2608" y="1568" name="XLXI_4" orien="R0" />
        <instance x="2608" y="1328" name="XLXI_3" orien="R0" />
        <instance x="2608" y="1088" name="XLXI_2" orien="R0" />
        <instance x="2608" y="832" name="XLXI_1" orien="R0" />
        <branch name="d0">
            <wire x2="2896" y1="672" y2="672" x1="2864" />
        </branch>
        <branch name="d1">
            <wire x2="2896" y1="928" y2="928" x1="2864" />
        </branch>
        <branch name="d2">
            <wire x2="2896" y1="1168" y2="1168" x1="2864" />
        </branch>
        <branch name="d3">
            <wire x2="2896" y1="1408" y2="1408" x1="2864" />
        </branch>
        <branch name="d4">
            <wire x2="2896" y1="1664" y2="1664" x1="2864" />
        </branch>
        <branch name="d5">
            <wire x2="2896" y1="1920" y2="1920" x1="2864" />
        </branch>
        <branch name="d6">
            <wire x2="2896" y1="2176" y2="2176" x1="2864" />
        </branch>
        <branch name="d7">
            <wire x2="2896" y1="2432" y2="2432" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="672" name="d0" orien="R0" />
        <iomarker fontsize="28" x="2896" y="928" name="d1" orien="R0" />
        <iomarker fontsize="28" x="2896" y="1168" name="d2" orien="R0" />
        <iomarker fontsize="28" x="2896" y="1408" name="d3" orien="R0" />
        <iomarker fontsize="28" x="2896" y="1664" name="d4" orien="R0" />
        <iomarker fontsize="28" x="2896" y="1920" name="d5" orien="R0" />
        <iomarker fontsize="28" x="2896" y="2176" name="d6" orien="R0" />
        <iomarker fontsize="28" x="2896" y="2432" name="d7" orien="R0" />
        <instance x="1696" y="240" name="XLXI_15" orien="R90" />
        <instance x="1280" y="240" name="XLXI_16" orien="R90" />
        <branch name="E">
            <wire x2="912" y1="112" y2="768" x1="912" />
            <wire x2="2608" y1="768" y2="768" x1="912" />
            <wire x2="912" y1="768" y2="1024" x1="912" />
            <wire x2="2608" y1="1024" y2="1024" x1="912" />
            <wire x2="912" y1="1024" y2="1264" x1="912" />
            <wire x2="912" y1="1264" y2="1328" x1="912" />
            <wire x2="912" y1="1328" y2="1504" x1="912" />
            <wire x2="2608" y1="1504" y2="1504" x1="912" />
            <wire x2="912" y1="1504" y2="1760" x1="912" />
            <wire x2="2608" y1="1760" y2="1760" x1="912" />
            <wire x2="912" y1="1760" y2="2016" x1="912" />
            <wire x2="2608" y1="2016" y2="2016" x1="912" />
            <wire x2="912" y1="2016" y2="2272" x1="912" />
            <wire x2="2608" y1="2272" y2="2272" x1="912" />
            <wire x2="912" y1="2272" y2="2528" x1="912" />
            <wire x2="912" y1="2528" y2="2640" x1="912" />
            <wire x2="2608" y1="2528" y2="2528" x1="912" />
            <wire x2="2608" y1="1264" y2="1264" x1="912" />
        </branch>
        <instance x="2112" y="240" name="XLXI_12" orien="R90" />
        <branch name="XLXN_51">
            <wire x2="2144" y1="464" y2="704" x1="2144" />
            <wire x2="2608" y1="704" y2="704" x1="2144" />
            <wire x2="2144" y1="704" y2="1200" x1="2144" />
            <wire x2="2608" y1="1200" y2="1200" x1="2144" />
            <wire x2="2144" y1="1200" y2="1696" x1="2144" />
            <wire x2="2608" y1="1696" y2="1696" x1="2144" />
            <wire x2="2144" y1="1696" y2="2208" x1="2144" />
            <wire x2="2144" y1="2208" y2="2640" x1="2144" />
            <wire x2="2608" y1="2208" y2="2208" x1="2144" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="1312" y1="464" y2="576" x1="1312" />
            <wire x2="2608" y1="576" y2="576" x1="1312" />
            <wire x2="1312" y1="576" y2="832" x1="1312" />
            <wire x2="2608" y1="832" y2="832" x1="1312" />
            <wire x2="1312" y1="832" y2="1072" x1="1312" />
            <wire x2="2608" y1="1072" y2="1072" x1="1312" />
            <wire x2="1312" y1="1072" y2="1312" x1="1312" />
            <wire x2="1312" y1="1312" y2="2640" x1="1312" />
            <wire x2="2608" y1="1312" y2="1312" x1="1312" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1728" y1="464" y2="640" x1="1728" />
            <wire x2="2608" y1="640" y2="640" x1="1728" />
            <wire x2="1728" y1="640" y2="896" x1="1728" />
            <wire x2="2608" y1="896" y2="896" x1="1728" />
            <wire x2="1728" y1="896" y2="1632" x1="1728" />
            <wire x2="2608" y1="1632" y2="1632" x1="1728" />
            <wire x2="1728" y1="1632" y2="1888" x1="1728" />
            <wire x2="1728" y1="1888" y2="2640" x1="1728" />
            <wire x2="2608" y1="1888" y2="1888" x1="1728" />
        </branch>
        <branch name="A">
            <wire x2="1216" y1="112" y2="192" x1="1216" />
            <wire x2="1216" y1="192" y2="1328" x1="1216" />
            <wire x2="1216" y1="1328" y2="1568" x1="1216" />
            <wire x2="2608" y1="1568" y2="1568" x1="1216" />
            <wire x2="1216" y1="1568" y2="1824" x1="1216" />
            <wire x2="2608" y1="1824" y2="1824" x1="1216" />
            <wire x2="1216" y1="1824" y2="2080" x1="1216" />
            <wire x2="1744" y1="2080" y2="2080" x1="1216" />
            <wire x2="2608" y1="2080" y2="2080" x1="1744" />
            <wire x2="1216" y1="2080" y2="2336" x1="1216" />
            <wire x2="1216" y1="2336" y2="2640" x1="1216" />
            <wire x2="2608" y1="2336" y2="2336" x1="1216" />
            <wire x2="1312" y1="192" y2="192" x1="1216" />
            <wire x2="1312" y1="192" y2="240" x1="1312" />
        </branch>
        <branch name="B">
            <wire x2="1648" y1="112" y2="192" x1="1648" />
            <wire x2="1648" y1="192" y2="1136" x1="1648" />
            <wire x2="1648" y1="1136" y2="1328" x1="1648" />
            <wire x2="1648" y1="1328" y2="1376" x1="1648" />
            <wire x2="2608" y1="1376" y2="1376" x1="1648" />
            <wire x2="1648" y1="1376" y2="2144" x1="1648" />
            <wire x2="2608" y1="2144" y2="2144" x1="1648" />
            <wire x2="1648" y1="2144" y2="2400" x1="1648" />
            <wire x2="1648" y1="2400" y2="2640" x1="1648" />
            <wire x2="2608" y1="2400" y2="2400" x1="1648" />
            <wire x2="2608" y1="1136" y2="1136" x1="1648" />
            <wire x2="1728" y1="192" y2="192" x1="1648" />
            <wire x2="1728" y1="192" y2="240" x1="1728" />
        </branch>
        <branch name="C">
            <wire x2="2064" y1="112" y2="208" x1="2064" />
            <wire x2="2064" y1="208" y2="960" x1="2064" />
            <wire x2="2608" y1="960" y2="960" x1="2064" />
            <wire x2="2064" y1="960" y2="1440" x1="2064" />
            <wire x2="2608" y1="1440" y2="1440" x1="2064" />
            <wire x2="2064" y1="1440" y2="1952" x1="2064" />
            <wire x2="2608" y1="1952" y2="1952" x1="2064" />
            <wire x2="2064" y1="1952" y2="2464" x1="2064" />
            <wire x2="2064" y1="2464" y2="2640" x1="2064" />
            <wire x2="2608" y1="2464" y2="2464" x1="2064" />
            <wire x2="2144" y1="208" y2="208" x1="2064" />
            <wire x2="2144" y1="208" y2="240" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="912" y="112" name="E" orien="R270" />
        <iomarker fontsize="28" x="1216" y="112" name="A" orien="R270" />
        <iomarker fontsize="28" x="1648" y="112" name="B" orien="R270" />
        <iomarker fontsize="28" x="2064" y="112" name="C" orien="R270" />
    </sheet>
</drawing>