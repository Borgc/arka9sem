<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="c" />
        <signal name="x1" />
        <signal name="XLXN_4" />
        <signal name="x2" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="y1" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="y2" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="x1" />
        <port polarity="Input" name="x2" />
        <port polarity="Output" name="y1" />
        <port polarity="Output" name="y2" />
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <block symbolname="and2b1" name="XLXI_2">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="c" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_3">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_6">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_8">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="y1" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_9">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_10">
            <blockpin signalname="x2" name="I0" />
            <blockpin signalname="c" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_11">
            <blockpin signalname="c" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x1" name="I2" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_12">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_26" name="I2" />
            <blockpin signalname="y2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="400" y="1808" name="XLXI_2" orien="R0" />
        <instance x="400" y="1952" name="XLXI_3" orien="R0" />
        <branch name="c">
            <wire x2="256" y1="1680" y2="1680" x1="192" />
            <wire x2="320" y1="1680" y2="1680" x1="256" />
            <wire x2="400" y1="1680" y2="1680" x1="320" />
            <wire x2="400" y1="1344" y2="1344" x1="256" />
            <wire x2="256" y1="1344" y2="1680" x1="256" />
            <wire x2="400" y1="1408" y2="1408" x1="320" />
            <wire x2="320" y1="1408" y2="1680" x1="320" />
        </branch>
        <iomarker fontsize="28" x="192" y="1680" name="c" orien="R180" />
        <branch name="x1">
            <wire x2="208" y1="1744" y2="1744" x1="176" />
            <wire x2="208" y1="1744" y2="2032" x1="208" />
            <wire x2="400" y1="2032" y2="2032" x1="208" />
            <wire x2="224" y1="1744" y2="1744" x1="208" />
            <wire x2="304" y1="1744" y2="1744" x1="224" />
            <wire x2="304" y1="1744" y2="1888" x1="304" />
            <wire x2="400" y1="1888" y2="1888" x1="304" />
            <wire x2="384" y1="1744" y2="1744" x1="304" />
            <wire x2="400" y1="1744" y2="1744" x1="384" />
            <wire x2="400" y1="1216" y2="1216" x1="224" />
            <wire x2="224" y1="1216" y2="1744" x1="224" />
            <wire x2="400" y1="1600" y2="1600" x1="384" />
            <wire x2="384" y1="1600" y2="1744" x1="384" />
        </branch>
        <iomarker fontsize="28" x="176" y="1744" name="x1" orien="R180" />
        <instance x="400" y="2096" name="XLXI_6" orien="R0" />
        <branch name="x2">
            <wire x2="224" y1="1824" y2="1824" x1="176" />
            <wire x2="240" y1="1824" y2="1824" x1="224" />
            <wire x2="240" y1="1824" y2="1968" x1="240" />
            <wire x2="400" y1="1968" y2="1968" x1="240" />
            <wire x2="272" y1="1824" y2="1824" x1="240" />
            <wire x2="352" y1="1824" y2="1824" x1="272" />
            <wire x2="384" y1="1824" y2="1824" x1="352" />
            <wire x2="400" y1="1824" y2="1824" x1="384" />
            <wire x2="224" y1="1760" y2="1824" x1="224" />
            <wire x2="288" y1="1760" y2="1760" x1="224" />
            <wire x2="400" y1="1472" y2="1472" x1="272" />
            <wire x2="272" y1="1472" y2="1824" x1="272" />
            <wire x2="288" y1="1280" y2="1760" x1="288" />
            <wire x2="400" y1="1280" y2="1280" x1="288" />
            <wire x2="400" y1="1536" y2="1536" x1="352" />
            <wire x2="352" y1="1536" y2="1824" x1="352" />
        </branch>
        <iomarker fontsize="28" x="176" y="1824" name="x2" orien="R180" />
        <branch name="XLXN_13">
            <wire x2="752" y1="1712" y2="1712" x1="656" />
            <wire x2="752" y1="1712" y2="1792" x1="752" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="752" y1="1856" y2="1856" x1="656" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="752" y1="2000" y2="2000" x1="656" />
            <wire x2="752" y1="1920" y2="2000" x1="752" />
        </branch>
        <branch name="y1">
            <wire x2="1040" y1="1856" y2="1856" x1="1008" />
        </branch>
        <instance x="752" y="1984" name="XLXI_8" orien="R0" />
        <instance x="400" y="1664" name="XLXI_9" orien="R0" />
        <instance x="400" y="1536" name="XLXI_10" orien="R0" />
        <instance x="400" y="1408" name="XLXI_11" orien="R0" />
        <instance x="752" y="1568" name="XLXI_12" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="752" y1="1568" y2="1568" x1="656" />
            <wire x2="752" y1="1504" y2="1568" x1="752" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="752" y1="1440" y2="1440" x1="656" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="752" y1="1280" y2="1280" x1="656" />
            <wire x2="752" y1="1280" y2="1376" x1="752" />
        </branch>
        <branch name="y2">
            <wire x2="1040" y1="1440" y2="1440" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1440" name="y2" orien="R0" />
        <iomarker fontsize="28" x="1040" y="1856" name="y1" orien="R0" />
    </sheet>
</drawing>
