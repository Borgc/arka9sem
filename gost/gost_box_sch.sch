<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="x0" />
        <signal name="y1" />
        <signal name="y0" />
        <signal name="y2" />
        <signal name="x1" />
        <signal name="x2" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <port polarity="Input" name="x0" />
        <port polarity="Output" name="y1" />
        <port polarity="Output" name="y0" />
        <port polarity="Output" name="y2" />
        <port polarity="Input" name="x1" />
        <port polarity="Input" name="x2" />
        <blockdef name="GOST_Coder">
            <timestamp>2024-1-14T12:23:51</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gost_decoder">
            <timestamp>2024-1-14T12:53:20</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="GOST_Coder" name="XLXI_2">
            <blockpin signalname="XLXN_24" name="y0" />
            <blockpin signalname="XLXN_25" name="y1" />
            <blockpin signalname="XLXN_26" name="y2" />
            <blockpin signalname="XLXN_27" name="y3" />
            <blockpin signalname="XLXN_23" name="y4" />
            <blockpin signalname="XLXN_29" name="y5" />
            <blockpin signalname="XLXN_30" name="y6" />
            <blockpin signalname="XLXN_28" name="y7" />
            <blockpin signalname="y0" name="x0" />
            <blockpin signalname="y1" name="x1" />
            <blockpin signalname="y2" name="x2" />
        </block>
        <block symbolname="gost_decoder" name="XLXI_3">
            <blockpin signalname="x0" name="x0" />
            <blockpin signalname="x1" name="x1" />
            <blockpin signalname="x2" name="x2" />
            <blockpin signalname="XLXN_23" name="y0" />
            <blockpin signalname="XLXN_24" name="y1" />
            <blockpin signalname="XLXN_25" name="y2" />
            <blockpin signalname="XLXN_26" name="y3" />
            <blockpin signalname="XLXN_27" name="y4" />
            <blockpin signalname="XLXN_28" name="y5" />
            <blockpin signalname="XLXN_29" name="y6" />
            <blockpin signalname="XLXN_30" name="y7" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1744" name="XLXI_2" orien="R0">
        </instance>
        <branch name="x0">
            <wire x2="304" y1="1312" y2="1312" x1="288" />
            <wire x2="320" y1="1280" y2="1280" x1="304" />
            <wire x2="304" y1="1280" y2="1312" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="1312" name="x0" orien="R180" />
        <branch name="y1">
            <wire x2="1536" y1="1488" y2="1488" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1488" name="y1" orien="R0" />
        <branch name="y0">
            <wire x2="1536" y1="1264" y2="1264" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1264" name="y0" orien="R0" />
        <branch name="y2">
            <wire x2="1536" y1="1712" y2="1712" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1712" name="y2" orien="R0" />
        <branch name="x1">
            <wire x2="304" y1="1536" y2="1536" x1="288" />
            <wire x2="320" y1="1504" y2="1504" x1="304" />
            <wire x2="304" y1="1504" y2="1536" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="1536" name="x1" orien="R180" />
        <branch name="x2">
            <wire x2="304" y1="1760" y2="1760" x1="288" />
            <wire x2="320" y1="1728" y2="1728" x1="304" />
            <wire x2="304" y1="1728" y2="1760" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="1760" name="x2" orien="R180" />
        <instance x="320" y="1760" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_23">
            <wire x2="912" y1="1280" y2="1280" x1="704" />
            <wire x2="912" y1="1280" y2="1520" x1="912" />
            <wire x2="1120" y1="1520" y2="1520" x1="912" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="928" y1="1344" y2="1344" x1="704" />
            <wire x2="928" y1="1264" y2="1344" x1="928" />
            <wire x2="1120" y1="1264" y2="1264" x1="928" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="944" y1="1408" y2="1408" x1="704" />
            <wire x2="944" y1="1328" y2="1408" x1="944" />
            <wire x2="1120" y1="1328" y2="1328" x1="944" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="960" y1="1472" y2="1472" x1="704" />
            <wire x2="960" y1="1392" y2="1472" x1="960" />
            <wire x2="1120" y1="1392" y2="1392" x1="960" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="896" y1="1536" y2="1536" x1="704" />
            <wire x2="896" y1="1456" y2="1536" x1="896" />
            <wire x2="1120" y1="1456" y2="1456" x1="896" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="912" y1="1600" y2="1600" x1="704" />
            <wire x2="912" y1="1600" y2="1712" x1="912" />
            <wire x2="1120" y1="1712" y2="1712" x1="912" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="928" y1="1664" y2="1664" x1="704" />
            <wire x2="928" y1="1584" y2="1664" x1="928" />
            <wire x2="1120" y1="1584" y2="1584" x1="928" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="896" y1="1728" y2="1728" x1="704" />
            <wire x2="896" y1="1648" y2="1728" x1="896" />
            <wire x2="1120" y1="1648" y2="1648" x1="896" />
        </branch>
    </sheet>
</drawing>