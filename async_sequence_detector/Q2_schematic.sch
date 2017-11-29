<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="Q1_in" />
        <signal name="Q2_in" />
        <signal name="Q3_in" />
        <signal name="Q4_in" />
        <signal name="SD" />
        <signal name="clk" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="Q2_out" />
        <port polarity="Input" name="Q1_in" />
        <port polarity="Input" name="Q2_in" />
        <port polarity="Input" name="Q3_in" />
        <port polarity="Input" name="Q4_in" />
        <port polarity="Input" name="SD" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Q2_out" />
        <blockdef name="and5b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and4b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
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
        <blockdef name="and4b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="and6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="144" y1="-272" y2="-272" x1="64" />
            <line x2="64" y1="-176" y2="-176" x1="144" />
            <arc ex="144" ey="-272" sx="144" sy="-176" r="48" cx="144" cy="-224" />
            <line x2="64" y1="-64" y2="-384" x1="64" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <block symbolname="and5b2" name="XLXI_1">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q1_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="SD" name="I3" />
            <blockpin signalname="Q3_in" name="I4" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_2">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q1_in" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_3">
            <blockpin signalname="Q1_in" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="Q2_in" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_4">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_5">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="Q2_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and6" name="XLXI_7">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q1_in" name="I2" />
            <blockpin signalname="XLXN_3" name="I3" />
            <blockpin signalname="XLXN_2" name="I4" />
            <blockpin signalname="XLXN_1" name="I5" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="Q2_in" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="Q3_in" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="Q4_in" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_6">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q2_in" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_14">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="Q2_out" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_16">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="XLXN_15" name="I3" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1344" y="656" name="XLXI_1" orien="R0" />
        <instance x="1344" y="928" name="XLXI_2" orien="R0" />
        <instance x="1344" y="1120" name="XLXI_3" orien="R0" />
        <instance x="1344" y="1376" name="XLXI_4" orien="R0" />
        <instance x="1344" y="1632" name="XLXI_5" orien="R0" />
        <instance x="1344" y="2208" name="XLXI_7" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1344" y1="1824" y2="1824" x1="1312" />
        </branch>
        <instance x="1088" y="1856" name="XLXI_8" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1344" y1="1888" y2="1888" x1="1312" />
        </branch>
        <instance x="1088" y="1920" name="XLXI_9" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1344" y1="1952" y2="1952" x1="1312" />
        </branch>
        <instance x="1088" y="1984" name="XLXI_10" orien="R0" />
        <branch name="Q1_in">
            <wire x2="480" y1="48" y2="48" x1="128" />
            <wire x2="480" y1="48" y2="320" x1="480" />
            <wire x2="912" y1="320" y2="320" x1="480" />
            <wire x2="912" y1="320" y2="528" x1="912" />
            <wire x2="1344" y1="528" y2="528" x1="912" />
            <wire x2="480" y1="320" y2="640" x1="480" />
            <wire x2="912" y1="640" y2="640" x1="480" />
            <wire x2="912" y1="640" y2="800" x1="912" />
            <wire x2="1344" y1="800" y2="800" x1="912" />
            <wire x2="480" y1="640" y2="912" x1="480" />
            <wire x2="912" y1="912" y2="912" x1="480" />
            <wire x2="912" y1="912" y2="1056" x1="912" />
            <wire x2="1344" y1="1056" y2="1056" x1="912" />
            <wire x2="480" y1="912" y2="1376" x1="480" />
            <wire x2="1344" y1="1376" y2="1376" x1="480" />
            <wire x2="480" y1="1376" y2="1792" x1="480" />
            <wire x2="480" y1="1792" y2="2208" x1="480" />
            <wire x2="912" y1="1792" y2="1792" x1="480" />
            <wire x2="912" y1="1792" y2="2016" x1="912" />
            <wire x2="1344" y1="2016" y2="2016" x1="912" />
        </branch>
        <branch name="Q2_in">
            <wire x2="512" y1="96" y2="96" x1="128" />
            <wire x2="512" y1="96" y2="672" x1="512" />
            <wire x2="1344" y1="672" y2="672" x1="512" />
            <wire x2="512" y1="672" y2="928" x1="512" />
            <wire x2="512" y1="928" y2="944" x1="512" />
            <wire x2="512" y1="944" y2="1120" x1="512" />
            <wire x2="1344" y1="1120" y2="1120" x1="512" />
            <wire x2="512" y1="1120" y2="1408" x1="512" />
            <wire x2="928" y1="1408" y2="1408" x1="512" />
            <wire x2="928" y1="1408" y2="1440" x1="928" />
            <wire x2="1344" y1="1440" y2="1440" x1="928" />
            <wire x2="512" y1="1408" y2="1616" x1="512" />
            <wire x2="1344" y1="1616" y2="1616" x1="512" />
            <wire x2="1344" y1="1616" y2="1632" x1="1344" />
            <wire x2="512" y1="1616" y2="1824" x1="512" />
            <wire x2="512" y1="1824" y2="2208" x1="512" />
            <wire x2="1088" y1="1824" y2="1824" x1="512" />
            <wire x2="1344" y1="928" y2="928" x1="512" />
        </branch>
        <branch name="Q3_in">
            <wire x2="544" y1="144" y2="144" x1="128" />
            <wire x2="544" y1="144" y2="368" x1="544" />
            <wire x2="944" y1="368" y2="368" x1="544" />
            <wire x2="544" y1="368" y2="704" x1="544" />
            <wire x2="944" y1="704" y2="704" x1="544" />
            <wire x2="944" y1="704" y2="736" x1="944" />
            <wire x2="1344" y1="736" y2="736" x1="944" />
            <wire x2="544" y1="704" y2="1456" x1="544" />
            <wire x2="944" y1="1456" y2="1456" x1="544" />
            <wire x2="944" y1="1456" y2="1504" x1="944" />
            <wire x2="1344" y1="1504" y2="1504" x1="944" />
            <wire x2="544" y1="1456" y2="1856" x1="544" />
            <wire x2="544" y1="1856" y2="2208" x1="544" />
            <wire x2="816" y1="1856" y2="1856" x1="544" />
            <wire x2="816" y1="1856" y2="1888" x1="816" />
            <wire x2="1088" y1="1888" y2="1888" x1="816" />
            <wire x2="944" y1="336" y2="368" x1="944" />
            <wire x2="1344" y1="336" y2="336" x1="944" />
        </branch>
        <branch name="Q4_in">
            <wire x2="576" y1="192" y2="192" x1="128" />
            <wire x2="576" y1="192" y2="400" x1="576" />
            <wire x2="896" y1="400" y2="400" x1="576" />
            <wire x2="896" y1="400" y2="592" x1="896" />
            <wire x2="1344" y1="592" y2="592" x1="896" />
            <wire x2="576" y1="400" y2="736" x1="576" />
            <wire x2="896" y1="736" y2="736" x1="576" />
            <wire x2="896" y1="736" y2="864" x1="896" />
            <wire x2="1344" y1="864" y2="864" x1="896" />
            <wire x2="576" y1="736" y2="960" x1="576" />
            <wire x2="960" y1="960" y2="960" x1="576" />
            <wire x2="960" y1="960" y2="992" x1="960" />
            <wire x2="1344" y1="992" y2="992" x1="960" />
            <wire x2="576" y1="960" y2="1184" x1="576" />
            <wire x2="1344" y1="1184" y2="1184" x1="576" />
            <wire x2="576" y1="1184" y2="1488" x1="576" />
            <wire x2="928" y1="1488" y2="1488" x1="576" />
            <wire x2="928" y1="1488" y2="1568" x1="928" />
            <wire x2="1344" y1="1568" y2="1568" x1="928" />
            <wire x2="576" y1="1488" y2="1664" x1="576" />
            <wire x2="960" y1="1664" y2="1664" x1="576" />
            <wire x2="960" y1="1664" y2="1760" x1="960" />
            <wire x2="1104" y1="1760" y2="1760" x1="960" />
            <wire x2="1328" y1="1760" y2="1760" x1="1104" />
            <wire x2="1344" y1="1760" y2="1760" x1="1328" />
            <wire x2="576" y1="1664" y2="1952" x1="576" />
            <wire x2="576" y1="1952" y2="2208" x1="576" />
            <wire x2="1088" y1="1952" y2="1952" x1="576" />
        </branch>
        <branch name="SD">
            <wire x2="608" y1="240" y2="240" x1="128" />
            <wire x2="608" y1="240" y2="432" x1="608" />
            <wire x2="976" y1="432" y2="432" x1="608" />
            <wire x2="608" y1="432" y2="1248" x1="608" />
            <wire x2="1344" y1="1248" y2="1248" x1="608" />
            <wire x2="608" y1="1248" y2="1696" x1="608" />
            <wire x2="1344" y1="1696" y2="1696" x1="608" />
            <wire x2="608" y1="1696" y2="2080" x1="608" />
            <wire x2="608" y1="2080" y2="2208" x1="608" />
            <wire x2="1344" y1="2080" y2="2080" x1="608" />
            <wire x2="976" y1="400" y2="432" x1="976" />
            <wire x2="1344" y1="400" y2="400" x1="976" />
        </branch>
        <branch name="clk">
            <wire x2="640" y1="288" y2="288" x1="128" />
            <wire x2="640" y1="288" y2="464" x1="640" />
            <wire x2="1344" y1="464" y2="464" x1="640" />
            <wire x2="640" y1="464" y2="1312" x1="640" />
            <wire x2="1344" y1="1312" y2="1312" x1="640" />
            <wire x2="640" y1="1312" y2="2144" x1="640" />
            <wire x2="640" y1="2144" y2="2208" x1="640" />
            <wire x2="1344" y1="2144" y2="2144" x1="640" />
        </branch>
        <iomarker fontsize="28" x="128" y="48" name="Q1_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="96" name="Q2_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="144" name="Q3_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="192" name="Q4_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="240" name="SD" orien="R180" />
        <iomarker fontsize="28" x="128" y="288" name="clk" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="2320" y1="464" y2="464" x1="1600" />
            <wire x2="2320" y1="464" y2="640" x1="2320" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1952" y1="768" y2="768" x1="1600" />
            <wire x2="1952" y1="704" y2="768" x1="1952" />
            <wire x2="2320" y1="704" y2="704" x1="1952" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2320" y1="992" y2="992" x1="1600" />
            <wire x2="2320" y1="768" y2="992" x1="2320" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2352" y1="1216" y2="1216" x1="1600" />
            <wire x2="2352" y1="1216" y2="1472" x1="2352" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1968" y1="1472" y2="1472" x1="1600" />
            <wire x2="1968" y1="1472" y2="1536" x1="1968" />
            <wire x2="2352" y1="1536" y2="1536" x1="1968" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1968" y1="1696" y2="1696" x1="1600" />
            <wire x2="1968" y1="1600" y2="1696" x1="1968" />
            <wire x2="2352" y1="1600" y2="1600" x1="1968" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2352" y1="1984" y2="1984" x1="1600" />
            <wire x2="2352" y1="1664" y2="1984" x1="2352" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2880" y1="704" y2="704" x1="2576" />
            <wire x2="2880" y1="704" y2="1088" x1="2880" />
            <wire x2="3184" y1="1088" y2="1088" x1="2880" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2896" y1="1568" y2="1568" x1="2608" />
            <wire x2="2896" y1="1152" y2="1568" x1="2896" />
            <wire x2="3184" y1="1152" y2="1152" x1="2896" />
        </branch>
        <branch name="Q2_out">
            <wire x2="4096" y1="1120" y2="1120" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="4096" y="1120" name="Q2_out" orien="R0" />
        <instance x="1344" y="1824" name="XLXI_6" orien="R0" />
        <instance x="2320" y="832" name="XLXI_14" orien="R0" />
        <instance x="2352" y="1728" name="XLXI_16" orien="R0" />
        <instance x="3184" y="1216" name="XLXI_15" orien="R0" />
    </sheet>
</drawing>