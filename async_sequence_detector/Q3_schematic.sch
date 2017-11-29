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
        <signal name="Q4_in" />
        <signal name="SD" />
        <signal name="clk" />
        <signal name="XLXN_7" />
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
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="Q3_out" />
        <port polarity="Input" name="Q1_in" />
        <port polarity="Input" name="Q2_in" />
        <port polarity="Input" name="Q3_in" />
        <port polarity="Input" name="Q4_in" />
        <port polarity="Input" name="SD" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Q3_out" />
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
        <block symbolname="and5b4" name="XLXI_1">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="Q3_in" name="I4" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_2">
            <blockpin signalname="Q1_in" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_3">
            <blockpin signalname="Q2_in" name="I0" />
            <blockpin signalname="Q1_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="SD" name="I3" />
            <blockpin signalname="Q4_in" name="I4" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_4">
            <blockpin signalname="Q1_in" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_5">
            <blockpin signalname="Q1_in" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="Q2_in" name="I2" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_6">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q1_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="SD" name="I3" />
            <blockpin signalname="Q2_in" name="I4" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="Q3_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="Q1_in" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_8">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="Q1_in" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_9">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_10">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_11">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_13" name="I3" />
            <blockpin signalname="XLXN_12" name="I4" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_12">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="XLXN_18" name="I3" />
            <blockpin signalname="XLXN_17" name="I4" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="Q3_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1584" y="688" name="XLXI_1" orien="R0" />
        <instance x="1584" y="896" name="XLXI_2" orien="R0" />
        <instance x="1584" y="1232" name="XLXI_3" orien="R0" />
        <instance x="1584" y="1440" name="XLXI_4" orien="R0" />
        <instance x="1584" y="1632" name="XLXI_5" orien="R0" />
        <instance x="1584" y="1952" name="XLXI_6" orien="R0" />
        <instance x="1584" y="2144" name="XLXI_7" orien="R0" />
        <instance x="1584" y="2336" name="XLXI_8" orien="R0" />
        <instance x="1584" y="2592" name="XLXI_9" orien="R0" />
        <instance x="1584" y="2912" name="XLXI_10" orien="R0" />
        <branch name="Q1_in">
            <wire x2="512" y1="112" y2="112" x1="128" />
            <wire x2="512" y1="112" y2="384" x1="512" />
            <wire x2="1040" y1="384" y2="384" x1="512" />
            <wire x2="1040" y1="384" y2="432" x1="1040" />
            <wire x2="1584" y1="432" y2="432" x1="1040" />
            <wire x2="512" y1="384" y2="656" x1="512" />
            <wire x2="1040" y1="656" y2="656" x1="512" />
            <wire x2="1040" y1="656" y2="832" x1="1040" />
            <wire x2="1584" y1="832" y2="832" x1="1040" />
            <wire x2="512" y1="656" y2="880" x1="512" />
            <wire x2="1040" y1="880" y2="880" x1="512" />
            <wire x2="1040" y1="880" y2="1104" x1="1040" />
            <wire x2="1584" y1="1104" y2="1104" x1="1040" />
            <wire x2="512" y1="880" y2="1232" x1="512" />
            <wire x2="1040" y1="1232" y2="1232" x1="512" />
            <wire x2="1040" y1="1232" y2="1376" x1="1040" />
            <wire x2="1584" y1="1376" y2="1376" x1="1040" />
            <wire x2="512" y1="1232" y2="1392" x1="512" />
            <wire x2="1040" y1="1392" y2="1392" x1="512" />
            <wire x2="1040" y1="1392" y2="1568" x1="1040" />
            <wire x2="1584" y1="1568" y2="1568" x1="1040" />
            <wire x2="512" y1="1392" y2="1600" x1="512" />
            <wire x2="1040" y1="1600" y2="1600" x1="512" />
            <wire x2="1040" y1="1600" y2="1824" x1="1040" />
            <wire x2="1584" y1="1824" y2="1824" x1="1040" />
            <wire x2="512" y1="1600" y2="1936" x1="512" />
            <wire x2="1584" y1="1936" y2="1936" x1="512" />
            <wire x2="1584" y1="1936" y2="1952" x1="1584" />
            <wire x2="512" y1="1936" y2="2128" x1="512" />
            <wire x2="1584" y1="2128" y2="2128" x1="512" />
            <wire x2="1584" y1="2128" y2="2144" x1="1584" />
            <wire x2="512" y1="2128" y2="2336" x1="512" />
            <wire x2="1584" y1="2336" y2="2336" x1="512" />
            <wire x2="512" y1="2336" y2="2592" x1="512" />
            <wire x2="512" y1="2592" y2="3008" x1="512" />
            <wire x2="1584" y1="2592" y2="2592" x1="512" />
        </branch>
        <branch name="Q2_in">
            <wire x2="544" y1="160" y2="160" x1="128" />
            <wire x2="544" y1="160" y2="912" x1="544" />
            <wire x2="1024" y1="912" y2="912" x1="544" />
            <wire x2="1024" y1="912" y2="1168" x1="1024" />
            <wire x2="1584" y1="1168" y2="1168" x1="1024" />
            <wire x2="544" y1="912" y2="1424" x1="544" />
            <wire x2="1584" y1="1424" y2="1424" x1="544" />
            <wire x2="1584" y1="1424" y2="1440" x1="1584" />
            <wire x2="544" y1="1424" y2="1632" x1="544" />
            <wire x2="1584" y1="1632" y2="1632" x1="544" />
            <wire x2="544" y1="1632" y2="1968" x1="544" />
            <wire x2="544" y1="1968" y2="3008" x1="544" />
            <wire x2="1056" y1="1968" y2="1968" x1="544" />
            <wire x2="1056" y1="1968" y2="2016" x1="1056" />
            <wire x2="1584" y1="2016" y2="2016" x1="1056" />
        </branch>
        <branch name="Q3_in">
            <wire x2="576" y1="208" y2="208" x1="128" />
            <wire x2="576" y1="208" y2="416" x1="576" />
            <wire x2="1072" y1="416" y2="416" x1="576" />
            <wire x2="576" y1="416" y2="688" x1="576" />
            <wire x2="1584" y1="688" y2="688" x1="576" />
            <wire x2="1584" y1="688" y2="704" x1="1584" />
            <wire x2="576" y1="688" y2="1280" x1="576" />
            <wire x2="1072" y1="1280" y2="1280" x1="576" />
            <wire x2="576" y1="1280" y2="1456" x1="576" />
            <wire x2="1072" y1="1456" y2="1456" x1="576" />
            <wire x2="1072" y1="1456" y2="1504" x1="1072" />
            <wire x2="1584" y1="1504" y2="1504" x1="1072" />
            <wire x2="576" y1="1456" y2="2000" x1="576" />
            <wire x2="1040" y1="2000" y2="2000" x1="576" />
            <wire x2="1040" y1="2000" y2="2080" x1="1040" />
            <wire x2="1584" y1="2080" y2="2080" x1="1040" />
            <wire x2="576" y1="2000" y2="2176" x1="576" />
            <wire x2="1072" y1="2176" y2="2176" x1="576" />
            <wire x2="1072" y1="2176" y2="2208" x1="1072" />
            <wire x2="1584" y1="2208" y2="2208" x1="1072" />
            <wire x2="576" y1="2176" y2="2392" x1="576" />
            <wire x2="576" y1="2392" y2="2400" x1="576" />
            <wire x2="1584" y1="2400" y2="2400" x1="576" />
            <wire x2="576" y1="2400" y2="2648" x1="576" />
            <wire x2="576" y1="2648" y2="2656" x1="576" />
            <wire x2="576" y1="2656" y2="3008" x1="576" />
            <wire x2="1584" y1="2656" y2="2656" x1="576" />
            <wire x2="1072" y1="368" y2="416" x1="1072" />
            <wire x2="1584" y1="368" y2="368" x1="1072" />
            <wire x2="1072" y1="1248" y2="1280" x1="1072" />
            <wire x2="1584" y1="1248" y2="1248" x1="1072" />
        </branch>
        <branch name="Q4_in">
            <wire x2="608" y1="256" y2="256" x1="128" />
            <wire x2="608" y1="256" y2="432" x1="608" />
            <wire x2="1024" y1="432" y2="432" x1="608" />
            <wire x2="1024" y1="432" y2="496" x1="1024" />
            <wire x2="1584" y1="496" y2="496" x1="1024" />
            <wire x2="608" y1="432" y2="960" x1="608" />
            <wire x2="1088" y1="960" y2="960" x1="608" />
            <wire x2="608" y1="960" y2="1312" x1="608" />
            <wire x2="1584" y1="1312" y2="1312" x1="608" />
            <wire x2="608" y1="1312" y2="1680" x1="608" />
            <wire x2="1024" y1="1680" y2="1680" x1="608" />
            <wire x2="1024" y1="1680" y2="1888" x1="1024" />
            <wire x2="1584" y1="1888" y2="1888" x1="1024" />
            <wire x2="608" y1="1680" y2="2264" x1="608" />
            <wire x2="608" y1="2264" y2="2272" x1="608" />
            <wire x2="1584" y1="2272" y2="2272" x1="608" />
            <wire x2="608" y1="2272" y2="2464" x1="608" />
            <wire x2="1584" y1="2464" y2="2464" x1="608" />
            <wire x2="608" y1="2464" y2="2712" x1="608" />
            <wire x2="608" y1="2712" y2="2720" x1="608" />
            <wire x2="608" y1="2720" y2="3008" x1="608" />
            <wire x2="1584" y1="2720" y2="2720" x1="608" />
            <wire x2="1088" y1="912" y2="960" x1="1088" />
            <wire x2="1584" y1="912" y2="912" x1="1088" />
        </branch>
        <branch name="SD">
            <wire x2="640" y1="304" y2="304" x1="128" />
            <wire x2="640" y1="304" y2="448" x1="640" />
            <wire x2="1008" y1="448" y2="448" x1="640" />
            <wire x2="1008" y1="448" y2="560" x1="1008" />
            <wire x2="1584" y1="560" y2="560" x1="1008" />
            <wire x2="640" y1="448" y2="760" x1="640" />
            <wire x2="640" y1="760" y2="768" x1="640" />
            <wire x2="1584" y1="768" y2="768" x1="640" />
            <wire x2="640" y1="768" y2="976" x1="640" />
            <wire x2="640" y1="976" y2="984" x1="640" />
            <wire x2="640" y1="984" y2="1696" x1="640" />
            <wire x2="640" y1="1696" y2="1704" x1="640" />
            <wire x2="640" y1="1704" y2="2520" x1="640" />
            <wire x2="640" y1="2520" y2="2528" x1="640" />
            <wire x2="1584" y1="2528" y2="2528" x1="640" />
            <wire x2="640" y1="2528" y2="2784" x1="640" />
            <wire x2="640" y1="2784" y2="3008" x1="640" />
            <wire x2="1584" y1="2784" y2="2784" x1="640" />
            <wire x2="1584" y1="1696" y2="1696" x1="640" />
            <wire x2="1584" y1="976" y2="976" x1="640" />
        </branch>
        <branch name="clk">
            <wire x2="672" y1="352" y2="352" x1="128" />
            <wire x2="672" y1="352" y2="480" x1="672" />
            <wire x2="1120" y1="480" y2="480" x1="672" />
            <wire x2="1120" y1="480" y2="624" x1="1120" />
            <wire x2="1584" y1="624" y2="624" x1="1120" />
            <wire x2="672" y1="480" y2="1008" x1="672" />
            <wire x2="1120" y1="1008" y2="1008" x1="672" />
            <wire x2="1120" y1="1008" y2="1040" x1="1120" />
            <wire x2="1584" y1="1040" y2="1040" x1="1120" />
            <wire x2="672" y1="1008" y2="1744" x1="672" />
            <wire x2="1568" y1="1744" y2="1744" x1="672" />
            <wire x2="1568" y1="1744" y2="1760" x1="1568" />
            <wire x2="1584" y1="1760" y2="1760" x1="1568" />
            <wire x2="672" y1="1744" y2="2848" x1="672" />
            <wire x2="672" y1="2848" y2="3008" x1="672" />
            <wire x2="1584" y1="2848" y2="2848" x1="672" />
        </branch>
        <iomarker fontsize="28" x="128" y="112" name="Q1_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="160" name="Q2_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="208" name="Q3_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="256" name="Q4_in" orien="R180" />
        <iomarker fontsize="28" x="128" y="304" name="SD" orien="R180" />
        <iomarker fontsize="28" x="128" y="352" name="clk" orien="R180" />
        <instance x="2736" y="1008" name="XLXI_11" orien="R0" />
        <instance x="2736" y="2160" name="XLXI_12" orien="R0" />
        <instance x="3600" y="1456" name="XLXI_13" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2736" y1="496" y2="496" x1="1840" />
            <wire x2="2736" y1="496" y2="688" x1="2736" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2288" y1="768" y2="768" x1="1840" />
            <wire x2="2288" y1="752" y2="768" x1="2288" />
            <wire x2="2736" y1="752" y2="752" x1="2288" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2288" y1="1040" y2="1040" x1="1840" />
            <wire x2="2288" y1="816" y2="1040" x1="2288" />
            <wire x2="2736" y1="816" y2="816" x1="2288" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2304" y1="1312" y2="1312" x1="1840" />
            <wire x2="2304" y1="880" y2="1312" x1="2304" />
            <wire x2="2736" y1="880" y2="880" x1="2304" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2736" y1="1504" y2="1504" x1="1840" />
            <wire x2="2736" y1="944" y2="1504" x1="2736" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2736" y1="1760" y2="1760" x1="1840" />
            <wire x2="2736" y1="1760" y2="1840" x1="2736" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2288" y1="2016" y2="2016" x1="1840" />
            <wire x2="2288" y1="1904" y2="2016" x1="2288" />
            <wire x2="2736" y1="1904" y2="1904" x1="2288" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2304" y1="2208" y2="2208" x1="1840" />
            <wire x2="2304" y1="1968" y2="2208" x1="2304" />
            <wire x2="2736" y1="1968" y2="1968" x1="2304" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2320" y1="2432" y2="2432" x1="1840" />
            <wire x2="2320" y1="2032" y2="2432" x1="2320" />
            <wire x2="2736" y1="2032" y2="2032" x1="2320" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2736" y1="2720" y2="2720" x1="1840" />
            <wire x2="2736" y1="2096" y2="2720" x1="2736" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="3296" y1="816" y2="816" x1="2992" />
            <wire x2="3296" y1="816" y2="1328" x1="3296" />
            <wire x2="3600" y1="1328" y2="1328" x1="3296" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="3296" y1="1968" y2="1968" x1="2992" />
            <wire x2="3296" y1="1392" y2="1968" x1="3296" />
            <wire x2="3600" y1="1392" y2="1392" x1="3296" />
        </branch>
        <branch name="Q3_out">
            <wire x2="4144" y1="1360" y2="1360" x1="3856" />
        </branch>
        <iomarker fontsize="28" x="4144" y="1360" name="Q3_out" orien="R0" />
    </sheet>
</drawing>