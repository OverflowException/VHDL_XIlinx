<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q1_in" />
        <signal name="Q2_in" />
        <signal name="Q3_in" />
        <signal name="SD" />
        <signal name="clk" />
        <signal name="Q4_in" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="Q4_out" />
        <port polarity="Input" name="Q1_in" />
        <port polarity="Input" name="Q2_in" />
        <port polarity="Input" name="Q3_in" />
        <port polarity="Input" name="SD" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Q4_in" />
        <port polarity="Output" name="Q4_out" />
        <blockdef name="and5b5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="40" y1="-320" y2="-320" x1="0" />
            <circle r="12" cx="52" cy="-320" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and5b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and4b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
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
        <blockdef name="and5b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
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
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
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
        <block symbolname="and5b5" name="XLXI_1">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and5b4" name="XLXI_2">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="Q2_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="SD" name="I4" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_3">
            <blockpin signalname="Q1_in" name="I0" />
            <blockpin signalname="clk" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q4_in" name="I3" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_4">
            <blockpin signalname="Q1_in" name="I0" />
            <blockpin signalname="clk" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="Q1_in" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and5b3" name="XLXI_7">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q2_in" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_8">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_9">
            <blockpin signalname="Q2_in" name="I0" />
            <blockpin signalname="clk" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_10">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_9" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_11">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_14" name="I3" />
            <blockpin signalname="XLXN_13" name="I4" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="Q4_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1376" y="768" name="XLXI_1" orien="R0" />
        <instance x="1376" y="1088" name="XLXI_2" orien="R0" />
        <instance x="1376" y="1344" name="XLXI_3" orien="R0" />
        <instance x="1376" y="1600" name="XLXI_4" orien="R0" />
        <instance x="1376" y="1744" name="XLXI_5" orien="R0" />
        <instance x="1376" y="1952" name="XLXI_6" orien="R0" />
        <instance x="1376" y="2288" name="XLXI_7" orien="R0" />
        <instance x="1376" y="2608" name="XLXI_8" orien="R0" />
        <instance x="1376" y="2880" name="XLXI_9" orien="R0" />
        <branch name="Q1_in">
            <wire x2="480" y1="192" y2="192" x1="176" />
            <wire x2="480" y1="192" y2="448" x1="480" />
            <wire x2="480" y1="448" y2="456" x1="480" />
            <wire x2="480" y1="456" y2="752" x1="480" />
            <wire x2="928" y1="752" y2="752" x1="480" />
            <wire x2="928" y1="752" y2="832" x1="928" />
            <wire x2="1376" y1="832" y2="832" x1="928" />
            <wire x2="480" y1="752" y2="1056" x1="480" />
            <wire x2="928" y1="1056" y2="1056" x1="480" />
            <wire x2="928" y1="1056" y2="1280" x1="928" />
            <wire x2="1376" y1="1280" y2="1280" x1="928" />
            <wire x2="480" y1="1056" y2="1312" x1="480" />
            <wire x2="928" y1="1312" y2="1312" x1="480" />
            <wire x2="928" y1="1312" y2="1536" x1="928" />
            <wire x2="1376" y1="1536" y2="1536" x1="928" />
            <wire x2="480" y1="1312" y2="1760" x1="480" />
            <wire x2="1360" y1="1760" y2="1760" x1="480" />
            <wire x2="1376" y1="1760" y2="1760" x1="1360" />
            <wire x2="480" y1="1760" y2="1968" x1="480" />
            <wire x2="1376" y1="1968" y2="1968" x1="480" />
            <wire x2="480" y1="1968" y2="2272" x1="480" />
            <wire x2="1376" y1="2272" y2="2272" x1="480" />
            <wire x2="1376" y1="2272" y2="2288" x1="1376" />
            <wire x2="480" y1="2272" y2="2624" x1="480" />
            <wire x2="480" y1="2624" y2="2944" x1="480" />
            <wire x2="1376" y1="2624" y2="2624" x1="480" />
            <wire x2="1376" y1="448" y2="448" x1="480" />
        </branch>
        <branch name="Q2_in">
            <wire x2="512" y1="240" y2="240" x1="176" />
            <wire x2="512" y1="240" y2="480" x1="512" />
            <wire x2="944" y1="480" y2="480" x1="512" />
            <wire x2="944" y1="480" y2="512" x1="944" />
            <wire x2="1376" y1="512" y2="512" x1="944" />
            <wire x2="512" y1="480" y2="784" x1="512" />
            <wire x2="912" y1="784" y2="784" x1="512" />
            <wire x2="912" y1="784" y2="896" x1="912" />
            <wire x2="1376" y1="896" y2="896" x1="912" />
            <wire x2="512" y1="784" y2="1608" x1="512" />
            <wire x2="512" y1="1608" y2="1616" x1="512" />
            <wire x2="1376" y1="1616" y2="1616" x1="512" />
            <wire x2="512" y1="1616" y2="2016" x1="512" />
            <wire x2="944" y1="2016" y2="2016" x1="512" />
            <wire x2="944" y1="2016" y2="2096" x1="944" />
            <wire x2="1376" y1="2096" y2="2096" x1="944" />
            <wire x2="512" y1="2016" y2="2288" x1="512" />
            <wire x2="944" y1="2288" y2="2288" x1="512" />
            <wire x2="944" y1="2288" y2="2480" x1="944" />
            <wire x2="1376" y1="2480" y2="2480" x1="944" />
            <wire x2="512" y1="2288" y2="2656" x1="512" />
            <wire x2="512" y1="2656" y2="2944" x1="512" />
            <wire x2="944" y1="2656" y2="2656" x1="512" />
            <wire x2="944" y1="2656" y2="2816" x1="944" />
            <wire x2="1376" y1="2816" y2="2816" x1="944" />
        </branch>
        <branch name="Q3_in">
            <wire x2="544" y1="288" y2="288" x1="176" />
            <wire x2="544" y1="288" y2="512" x1="544" />
            <wire x2="928" y1="512" y2="512" x1="544" />
            <wire x2="928" y1="512" y2="576" x1="928" />
            <wire x2="1376" y1="576" y2="576" x1="928" />
            <wire x2="544" y1="512" y2="816" x1="544" />
            <wire x2="896" y1="816" y2="816" x1="544" />
            <wire x2="896" y1="816" y2="960" x1="896" />
            <wire x2="1376" y1="960" y2="960" x1="896" />
            <wire x2="544" y1="816" y2="1344" x1="544" />
            <wire x2="1376" y1="1344" y2="1344" x1="544" />
            <wire x2="544" y1="1344" y2="1816" x1="544" />
            <wire x2="544" y1="1816" y2="1824" x1="544" />
            <wire x2="1376" y1="1824" y2="1824" x1="544" />
            <wire x2="544" y1="1824" y2="2032" x1="544" />
            <wire x2="544" y1="2032" y2="2040" x1="544" />
            <wire x2="544" y1="2040" y2="2320" x1="544" />
            <wire x2="544" y1="2320" y2="2944" x1="544" />
            <wire x2="960" y1="2320" y2="2320" x1="544" />
            <wire x2="960" y1="2320" y2="2352" x1="960" />
            <wire x2="1376" y1="2352" y2="2352" x1="960" />
            <wire x2="1376" y1="2032" y2="2032" x1="544" />
        </branch>
        <branch name="SD">
            <wire x2="608" y1="384" y2="384" x1="176" />
            <wire x2="608" y1="384" y2="608" x1="608" />
            <wire x2="992" y1="608" y2="608" x1="608" />
            <wire x2="992" y1="608" y2="640" x1="992" />
            <wire x2="1376" y1="640" y2="640" x1="992" />
            <wire x2="608" y1="608" y2="864" x1="608" />
            <wire x2="992" y1="864" y2="864" x1="608" />
            <wire x2="608" y1="864" y2="1152" x1="608" />
            <wire x2="1376" y1="1152" y2="1152" x1="608" />
            <wire x2="608" y1="1152" y2="2064" x1="608" />
            <wire x2="928" y1="2064" y2="2064" x1="608" />
            <wire x2="928" y1="2064" y2="2160" x1="928" />
            <wire x2="1376" y1="2160" y2="2160" x1="928" />
            <wire x2="608" y1="2064" y2="2352" x1="608" />
            <wire x2="608" y1="2352" y2="2944" x1="608" />
            <wire x2="928" y1="2352" y2="2352" x1="608" />
            <wire x2="928" y1="2352" y2="2416" x1="928" />
            <wire x2="1376" y1="2416" y2="2416" x1="928" />
            <wire x2="992" y1="768" y2="864" x1="992" />
            <wire x2="1376" y1="768" y2="768" x1="992" />
        </branch>
        <branch name="clk">
            <wire x2="640" y1="432" y2="432" x1="176" />
            <wire x2="640" y1="432" y2="656" x1="640" />
            <wire x2="1008" y1="656" y2="656" x1="640" />
            <wire x2="1008" y1="656" y2="704" x1="1008" />
            <wire x2="1376" y1="704" y2="704" x1="1008" />
            <wire x2="640" y1="656" y2="912" x1="640" />
            <wire x2="1008" y1="912" y2="912" x1="640" />
            <wire x2="1008" y1="912" y2="1024" x1="1008" />
            <wire x2="1376" y1="1024" y2="1024" x1="1008" />
            <wire x2="640" y1="912" y2="1216" x1="640" />
            <wire x2="1376" y1="1216" y2="1216" x1="640" />
            <wire x2="640" y1="1216" y2="1472" x1="640" />
            <wire x2="1376" y1="1472" y2="1472" x1="640" />
            <wire x2="640" y1="1472" y2="2112" x1="640" />
            <wire x2="912" y1="2112" y2="2112" x1="640" />
            <wire x2="912" y1="2112" y2="2224" x1="912" />
            <wire x2="1376" y1="2224" y2="2224" x1="912" />
            <wire x2="640" y1="2112" y2="2384" x1="640" />
            <wire x2="912" y1="2384" y2="2384" x1="640" />
            <wire x2="912" y1="2384" y2="2544" x1="912" />
            <wire x2="1376" y1="2544" y2="2544" x1="912" />
            <wire x2="640" y1="2384" y2="2752" x1="640" />
            <wire x2="640" y1="2752" y2="2760" x1="640" />
            <wire x2="640" y1="2760" y2="2944" x1="640" />
            <wire x2="1376" y1="2752" y2="2752" x1="640" />
        </branch>
        <branch name="Q4_in">
            <wire x2="576" y1="336" y2="336" x1="176" />
            <wire x2="576" y1="336" y2="1088" x1="576" />
            <wire x2="1376" y1="1088" y2="1088" x1="576" />
            <wire x2="576" y1="1088" y2="1400" x1="576" />
            <wire x2="576" y1="1400" y2="1408" x1="576" />
            <wire x2="1376" y1="1408" y2="1408" x1="576" />
            <wire x2="576" y1="1408" y2="1672" x1="576" />
            <wire x2="576" y1="1672" y2="1680" x1="576" />
            <wire x2="1376" y1="1680" y2="1680" x1="576" />
            <wire x2="576" y1="1680" y2="1880" x1="576" />
            <wire x2="576" y1="1880" y2="1888" x1="576" />
            <wire x2="1376" y1="1888" y2="1888" x1="576" />
            <wire x2="576" y1="1888" y2="2688" x1="576" />
            <wire x2="576" y1="2688" y2="2696" x1="576" />
            <wire x2="576" y1="2696" y2="2944" x1="576" />
            <wire x2="1376" y1="2688" y2="2688" x1="576" />
        </branch>
        <iomarker fontsize="28" x="176" y="192" name="Q1_in" orien="R180" />
        <iomarker fontsize="28" x="176" y="240" name="Q2_in" orien="R180" />
        <iomarker fontsize="28" x="176" y="288" name="Q3_in" orien="R180" />
        <iomarker fontsize="28" x="176" y="336" name="Q4_in" orien="R180" />
        <iomarker fontsize="28" x="176" y="384" name="SD" orien="R180" />
        <iomarker fontsize="28" x="176" y="432" name="clk" orien="R180" />
        <instance x="2368" y="1152" name="XLXI_10" orien="R0" />
        <instance x="2416" y="2160" name="XLXI_11" orien="R0" />
        <instance x="3232" y="1552" name="XLXI_12" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2368" y1="576" y2="576" x1="1632" />
            <wire x2="2368" y1="576" y2="896" x1="2368" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2000" y1="896" y2="896" x1="1632" />
            <wire x2="2000" y1="896" y2="960" x1="2000" />
            <wire x2="2368" y1="960" y2="960" x1="2000" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2000" y1="1184" y2="1184" x1="1632" />
            <wire x2="2000" y1="1024" y2="1184" x1="2000" />
            <wire x2="2368" y1="1024" y2="1024" x1="2000" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2368" y1="1440" y2="1440" x1="1632" />
            <wire x2="2368" y1="1088" y2="1440" x1="2368" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2416" y1="1648" y2="1648" x1="1632" />
            <wire x2="2416" y1="1648" y2="1840" x1="2416" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2016" y1="1824" y2="1824" x1="1632" />
            <wire x2="2016" y1="1824" y2="1904" x1="2016" />
            <wire x2="2416" y1="1904" y2="1904" x1="2016" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2016" y1="2096" y2="2096" x1="1632" />
            <wire x2="2016" y1="1968" y2="2096" x1="2016" />
            <wire x2="2416" y1="1968" y2="1968" x1="2016" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2032" y1="2416" y2="2416" x1="1632" />
            <wire x2="2032" y1="2032" y2="2416" x1="2032" />
            <wire x2="2416" y1="2032" y2="2032" x1="2032" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2416" y1="2720" y2="2720" x1="1632" />
            <wire x2="2416" y1="2096" y2="2720" x1="2416" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2928" y1="992" y2="992" x1="2624" />
            <wire x2="2928" y1="992" y2="1424" x1="2928" />
            <wire x2="3232" y1="1424" y2="1424" x1="2928" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2944" y1="1968" y2="1968" x1="2672" />
            <wire x2="2944" y1="1488" y2="1968" x1="2944" />
            <wire x2="3232" y1="1488" y2="1488" x1="2944" />
        </branch>
        <branch name="Q4_out">
            <wire x2="3520" y1="1456" y2="1456" x1="3488" />
        </branch>
        <iomarker fontsize="28" x="3520" y="1456" name="Q4_out" orien="R0" />
    </sheet>
</drawing>