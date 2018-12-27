<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s0" />
        <signal name="s1" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="i3" />
        <signal name="i1" />
        <signal name="i0" />
        <signal name="i2" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="d" />
        <port polarity="Input" name="s0" />
        <port polarity="Input" name="s1" />
        <port polarity="Input" name="i3" />
        <port polarity="Input" name="i1" />
        <port polarity="Input" name="i0" />
        <port polarity="Input" name="i2" />
        <port polarity="Output" name="d" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
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
        <block symbolname="and3" name="XLXI_9">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="i0" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="s0" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="i1" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_11">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="s1" name="I1" />
            <blockpin signalname="i2" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="s0" name="I0" />
            <blockpin signalname="s1" name="I1" />
            <blockpin signalname="i3" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_13">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_17" name="I3" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="s0" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="s1" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2016" y="1152" name="XLXI_9" orien="R0" />
        <instance x="2000" y="1552" name="XLXI_10" orien="R0" />
        <instance x="2000" y="1920" name="XLXI_11" orien="R0" />
        <instance x="2000" y="2272" name="XLXI_12" orien="R0" />
        <instance x="2720" y="1760" name="XLXI_13" orien="R0" />
        <text style="fontsize:64;fontname:Arial" x="2948" y="296">MUX</text>
        <text style="fontsize:64;fontname:Arial" x="2972" y="368">4x1</text>
        <instance x="1360" y="432" name="XLXI_14" orien="R90" />
        <instance x="864" y="432" name="XLXI_15" orien="R90" />
        <branch name="s0">
            <wire x2="1264" y1="320" y2="416" x1="1264" />
            <wire x2="1392" y1="416" y2="416" x1="1264" />
            <wire x2="1392" y1="416" y2="432" x1="1392" />
            <wire x2="1264" y1="416" y2="1488" x1="1264" />
            <wire x2="2000" y1="1488" y2="1488" x1="1264" />
            <wire x2="1264" y1="1488" y2="2208" x1="1264" />
            <wire x2="1264" y1="2208" y2="2384" x1="1264" />
            <wire x2="2000" y1="2208" y2="2208" x1="1264" />
        </branch>
        <branch name="s1">
            <wire x2="736" y1="304" y2="416" x1="736" />
            <wire x2="896" y1="416" y2="416" x1="736" />
            <wire x2="896" y1="416" y2="432" x1="896" />
            <wire x2="736" y1="416" y2="1792" x1="736" />
            <wire x2="2000" y1="1792" y2="1792" x1="736" />
            <wire x2="736" y1="1792" y2="2144" x1="736" />
            <wire x2="736" y1="2144" y2="2368" x1="736" />
            <wire x2="2000" y1="2144" y2="2144" x1="736" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="896" y1="656" y2="1024" x1="896" />
            <wire x2="2016" y1="1024" y2="1024" x1="896" />
            <wire x2="896" y1="1024" y2="1424" x1="896" />
            <wire x2="896" y1="1424" y2="2368" x1="896" />
            <wire x2="2000" y1="1424" y2="1424" x1="896" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1392" y1="656" y2="1088" x1="1392" />
            <wire x2="2016" y1="1088" y2="1088" x1="1392" />
            <wire x2="1392" y1="1088" y2="1856" x1="1392" />
            <wire x2="1392" y1="1856" y2="2384" x1="1392" />
            <wire x2="2000" y1="1856" y2="1856" x1="1392" />
        </branch>
        <branch name="i3">
            <wire x2="2000" y1="2080" y2="2080" x1="576" />
        </branch>
        <branch name="i1">
            <wire x2="2000" y1="1360" y2="1360" x1="592" />
        </branch>
        <branch name="i0">
            <wire x2="2016" y1="960" y2="960" x1="592" />
        </branch>
        <branch name="i2">
            <wire x2="2000" y1="1728" y2="1728" x1="576" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2720" y1="1024" y2="1024" x1="2272" />
            <wire x2="2720" y1="1024" y2="1504" x1="2720" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2480" y1="1424" y2="1424" x1="2256" />
            <wire x2="2480" y1="1424" y2="1568" x1="2480" />
            <wire x2="2720" y1="1568" y2="1568" x1="2480" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2480" y1="1792" y2="1792" x1="2256" />
            <wire x2="2480" y1="1632" y2="1792" x1="2480" />
            <wire x2="2720" y1="1632" y2="1632" x1="2480" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2720" y1="2144" y2="2144" x1="2256" />
            <wire x2="2720" y1="1696" y2="2144" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="592" y="960" name="i0" orien="R180" />
        <iomarker fontsize="28" x="592" y="1360" name="i1" orien="R180" />
        <iomarker fontsize="28" x="576" y="1728" name="i2" orien="R180" />
        <iomarker fontsize="28" x="576" y="2080" name="i3" orien="R180" />
        <iomarker fontsize="28" x="736" y="304" name="s1" orien="R270" />
        <iomarker fontsize="28" x="1264" y="320" name="s0" orien="R270" />
        <branch name="d">
            <wire x2="3008" y1="1600" y2="1600" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1600" name="d" orien="R0" />
    </sheet>
</drawing>