<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ciphertext" />
        <signal name="XLXN_9" />
        <signal name="init" />
        <signal name="choice" />
        <signal name="clk" />
        <signal name="clk_enable" />
        <signal name="reser" />
        <signal name="XLXN_14" />
        <signal name="plaintext" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <port polarity="Output" name="ciphertext" />
        <port polarity="Input" name="init" />
        <port polarity="Input" name="choice" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="clk_enable" />
        <port polarity="Input" name="reser" />
        <port polarity="Input" name="plaintext" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="muxer">
            <timestamp>2024-1-15T15:16:3</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="sr4re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="plaintext" name="I1" />
            <blockpin signalname="ciphertext" name="O" />
        </block>
        <block symbolname="muxer" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="a" />
            <blockpin signalname="init" name="b" />
            <blockpin signalname="choice" name="choice" />
            <blockpin signalname="XLXN_18" name="o" />
        </block>
        <block symbolname="sr4re" name="XLXI_8">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk_enable" name="CE" />
            <blockpin signalname="reser" name="R" />
            <blockpin signalname="XLXN_18" name="SLI" />
            <blockpin signalname="XLXN_20" name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin signalname="XLXN_19" name="Q3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="288" y="1376" name="init" orien="R180" />
        <iomarker fontsize="28" x="368" y="1440" name="choice" orien="R180" />
        <instance x="640" y="1184" name="XLXI_1" orien="M0" />
        <branch name="ciphertext">
            <wire x2="1936" y1="1392" y2="1392" x1="1904" />
        </branch>
        <instance x="384" y="1472" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_9">
            <wire x2="384" y1="1088" y2="1088" x1="368" />
            <wire x2="368" y1="1088" y2="1312" x1="368" />
            <wire x2="384" y1="1312" y2="1312" x1="368" />
        </branch>
        <branch name="init">
            <wire x2="384" y1="1376" y2="1376" x1="288" />
        </branch>
        <branch name="choice">
            <wire x2="384" y1="1440" y2="1440" x1="368" />
        </branch>
        <instance x="928" y="1664" name="XLXI_8" orien="R0" />
        <branch name="clk">
            <wire x2="928" y1="1536" y2="1536" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1536" name="clk" orien="R180" />
        <branch name="clk_enable">
            <wire x2="928" y1="1472" y2="1472" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1472" name="clk_enable" orien="R180" />
        <branch name="reser">
            <wire x2="928" y1="1632" y2="1632" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1632" name="reser" orien="R180" />
        <iomarker fontsize="28" x="1936" y="1392" name="ciphertext" orien="R0" />
        <instance x="1648" y="1488" name="XLXI_5" orien="R0" />
        <branch name="plaintext">
            <wire x2="1648" y1="1360" y2="1360" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1616" y="1360" name="plaintext" orien="R180" />
        <branch name="XLXN_18">
            <wire x2="848" y1="1312" y2="1312" x1="768" />
            <wire x2="848" y1="1312" y2="1344" x1="848" />
            <wire x2="928" y1="1344" y2="1344" x1="848" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1360" y1="1056" y2="1056" x1="640" />
            <wire x2="1360" y1="1056" y2="1536" x1="1360" />
            <wire x2="1472" y1="1536" y2="1536" x1="1360" />
            <wire x2="1360" y1="1536" y2="1536" x1="1312" />
            <wire x2="1472" y1="1424" y2="1536" x1="1472" />
            <wire x2="1648" y1="1424" y2="1424" x1="1472" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1376" y1="1120" y2="1120" x1="640" />
            <wire x2="1376" y1="1120" y2="1344" x1="1376" />
            <wire x2="1376" y1="1344" y2="1344" x1="1312" />
        </branch>
    </sheet>
</drawing>