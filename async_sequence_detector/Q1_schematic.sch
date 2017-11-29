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
        <signal name="XLXN_12" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="Q1_out" />
        <port polarity="Input" name="Q1_in" />
        <port polarity="Input" name="Q2_in" />
        <port polarity="Input" name="Q3_in" />
        <port polarity="Input" name="Q4_in" />
        <port polarity="Input" name="SD" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Q1_out" />
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
        <blockdef name="or6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <arc ex="112" ey="-272" sx="192" sy="-224" r="88" cx="116" cy="-184" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="192" ey="-224" sx="112" sy="-176" r="88" cx="116" cy="-264" />
            <arc ex="48" ey="-272" sx="48" sy="-176" r="56" cx="16" cy="-224" />
            <line x2="48" y1="-272" y2="-272" x1="112" />
            <line x2="48" y1="-64" y2="-176" x1="48" />
            <line x2="48" y1="-272" y2="-384" x1="48" />
        </blockdef>
        <block symbolname="and5b2" name="XLXI_26">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="Q1_in" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q2_in" name="I4" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_28">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_29">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_30">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_31">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and5b4" name="XLXI_32">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_33">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="SD" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_34">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_35">
            <blockpin signalname="Q3_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and5b3" name="XLXI_15">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q1_in" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q2_in" name="I4" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_81">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_16" name="I3" />
            <blockpin signalname="XLXN_12" name="I4" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_82">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_23" name="I3" />
            <blockpin signalname="XLXN_22" name="I4" />
            <blockpin signalname="XLXN_21" name="I5" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="Q1_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <branch name="Q1_in">
            <wire x2="496" y1="80" y2="80" x1="112" />
            <wire x2="496" y1="80" y2="496" x1="496" />
            <wire x2="496" y1="496" y2="688" x1="496" />
            <wire x2="496" y1="688" y2="1168" x1="496" />
            <wire x2="496" y1="1168" y2="1488" x1="496" />
            <wire x2="496" y1="1488" y2="1744" x1="496" />
            <wire x2="496" y1="1744" y2="1984" x1="496" />
            <wire x2="496" y1="1984" y2="2000" x1="496" />
            <wire x2="496" y1="2000" y2="2288" x1="496" />
            <wire x2="496" y1="2288" y2="2304" x1="496" />
            <wire x2="496" y1="2304" y2="2624" x1="496" />
            <wire x2="496" y1="2624" y2="2640" x1="496" />
            <wire x2="496" y1="2640" y2="2960" x1="496" />
            <wire x2="496" y1="2960" y2="2976" x1="496" />
            <wire x2="496" y1="2976" y2="3216" x1="496" />
            <wire x2="496" y1="3216" y2="3376" x1="496" />
            <wire x2="1200" y1="3216" y2="3216" x1="496" />
            <wire x2="1200" y1="2960" y2="2960" x1="496" />
            <wire x2="1200" y1="2624" y2="2624" x1="496" />
            <wire x2="1200" y1="2288" y2="2288" x1="496" />
            <wire x2="1200" y1="1984" y2="1984" x1="496" />
            <wire x2="1200" y1="1984" y2="2016" x1="1200" />
            <wire x2="1200" y1="1744" y2="1744" x1="496" />
            <wire x2="1200" y1="1488" y2="1488" x1="496" />
            <wire x2="1200" y1="1168" y2="1168" x1="496" />
            <wire x2="848" y1="688" y2="688" x1="496" />
            <wire x2="848" y1="688" y2="880" x1="848" />
            <wire x2="1200" y1="880" y2="880" x1="848" />
            <wire x2="1200" y1="496" y2="496" x1="496" />
        </branch>
        <branch name="Q2_in">
            <wire x2="544" y1="160" y2="160" x1="112" />
            <wire x2="544" y1="160" y2="448" x1="544" />
            <wire x2="544" y1="448" y2="720" x1="544" />
            <wire x2="544" y1="720" y2="1024" x1="544" />
            <wire x2="544" y1="1024" y2="1232" x1="544" />
            <wire x2="544" y1="1232" y2="2352" x1="544" />
            <wire x2="544" y1="2352" y2="2672" x1="544" />
            <wire x2="544" y1="2672" y2="3008" x1="544" />
            <wire x2="544" y1="3008" y2="3264" x1="544" />
            <wire x2="544" y1="3264" y2="3376" x1="544" />
            <wire x2="864" y1="3264" y2="3264" x1="544" />
            <wire x2="864" y1="3264" y2="3344" x1="864" />
            <wire x2="1200" y1="3344" y2="3344" x1="864" />
            <wire x2="864" y1="3008" y2="3008" x1="544" />
            <wire x2="864" y1="3008" y2="3088" x1="864" />
            <wire x2="1200" y1="3088" y2="3088" x1="864" />
            <wire x2="864" y1="2672" y2="2672" x1="544" />
            <wire x2="864" y1="2672" y2="2816" x1="864" />
            <wire x2="1200" y1="2816" y2="2816" x1="864" />
            <wire x2="1200" y1="2352" y2="2352" x1="544" />
            <wire x2="1200" y1="1232" y2="1232" x1="544" />
            <wire x2="1200" y1="1024" y2="1024" x1="544" />
            <wire x2="864" y1="720" y2="720" x1="544" />
            <wire x2="864" y1="448" y2="448" x1="544" />
            <wire x2="544" y1="3376" y2="3376" x1="528" />
            <wire x2="864" y1="368" y2="448" x1="864" />
            <wire x2="1200" y1="368" y2="368" x1="864" />
            <wire x2="864" y1="688" y2="720" x1="864" />
            <wire x2="1200" y1="688" y2="688" x1="864" />
        </branch>
        <branch name="Q3_in">
            <wire x2="576" y1="240" y2="240" x1="112" />
            <wire x2="576" y1="240" y2="480" x1="576" />
            <wire x2="576" y1="480" y2="752" x1="576" />
            <wire x2="576" y1="752" y2="768" x1="576" />
            <wire x2="576" y1="768" y2="1280" x1="576" />
            <wire x2="576" y1="1280" y2="1808" x1="576" />
            <wire x2="576" y1="1808" y2="1824" x1="576" />
            <wire x2="576" y1="1824" y2="2080" x1="576" />
            <wire x2="576" y1="2080" y2="3312" x1="576" />
            <wire x2="576" y1="3312" y2="3376" x1="576" />
            <wire x2="848" y1="3312" y2="3312" x1="576" />
            <wire x2="848" y1="3312" y2="3408" x1="848" />
            <wire x2="1200" y1="3408" y2="3408" x1="848" />
            <wire x2="1200" y1="2080" y2="2080" x1="576" />
            <wire x2="1200" y1="1808" y2="1808" x1="576" />
            <wire x2="880" y1="1280" y2="1280" x1="576" />
            <wire x2="880" y1="1280" y2="1360" x1="880" />
            <wire x2="1200" y1="1360" y2="1360" x1="880" />
            <wire x2="1200" y1="752" y2="752" x1="576" />
            <wire x2="880" y1="480" y2="480" x1="576" />
            <wire x2="880" y1="432" y2="480" x1="880" />
            <wire x2="1200" y1="432" y2="432" x1="880" />
        </branch>
        <branch name="Q4_in">
            <wire x2="608" y1="304" y2="304" x1="112" />
            <wire x2="608" y1="304" y2="1088" x1="608" />
            <wire x2="608" y1="1088" y2="1328" x1="608" />
            <wire x2="608" y1="1328" y2="1552" x1="608" />
            <wire x2="608" y1="1552" y2="1872" x1="608" />
            <wire x2="608" y1="1872" y2="2416" x1="608" />
            <wire x2="608" y1="2416" y2="2720" x1="608" />
            <wire x2="608" y1="2720" y2="3072" x1="608" />
            <wire x2="608" y1="3072" y2="3376" x1="608" />
            <wire x2="896" y1="3072" y2="3072" x1="608" />
            <wire x2="848" y1="2720" y2="2720" x1="608" />
            <wire x2="848" y1="2720" y2="2880" x1="848" />
            <wire x2="1200" y1="2880" y2="2880" x1="848" />
            <wire x2="1200" y1="2416" y2="2416" x1="608" />
            <wire x2="1200" y1="1872" y2="1872" x1="608" />
            <wire x2="1200" y1="1552" y2="1552" x1="608" />
            <wire x2="864" y1="1328" y2="1328" x1="608" />
            <wire x2="864" y1="1328" y2="1424" x1="864" />
            <wire x2="1200" y1="1424" y2="1424" x1="864" />
            <wire x2="1200" y1="1088" y2="1088" x1="608" />
            <wire x2="896" y1="3024" y2="3072" x1="896" />
            <wire x2="1200" y1="3024" y2="3024" x1="896" />
        </branch>
        <branch name="SD">
            <wire x2="640" y1="368" y2="368" x1="112" />
            <wire x2="640" y1="368" y2="528" x1="640" />
            <wire x2="640" y1="528" y2="816" x1="640" />
            <wire x2="640" y1="816" y2="1616" x1="640" />
            <wire x2="640" y1="1616" y2="1904" x1="640" />
            <wire x2="640" y1="1904" y2="2144" x1="640" />
            <wire x2="640" y1="2144" y2="2480" x1="640" />
            <wire x2="640" y1="2480" y2="2784" x1="640" />
            <wire x2="640" y1="2784" y2="3120" x1="640" />
            <wire x2="640" y1="3120" y2="3344" x1="640" />
            <wire x2="640" y1="3344" y2="3376" x1="640" />
            <wire x2="832" y1="3344" y2="3344" x1="640" />
            <wire x2="912" y1="3120" y2="3120" x1="640" />
            <wire x2="912" y1="3120" y2="3152" x1="912" />
            <wire x2="1200" y1="3152" y2="3152" x1="912" />
            <wire x2="912" y1="2784" y2="2784" x1="640" />
            <wire x2="1200" y1="2480" y2="2480" x1="640" />
            <wire x2="1200" y1="2144" y2="2144" x1="640" />
            <wire x2="912" y1="1904" y2="1904" x1="640" />
            <wire x2="912" y1="1904" y2="1936" x1="912" />
            <wire x2="1200" y1="1936" y2="1936" x1="912" />
            <wire x2="1200" y1="1616" y2="1616" x1="640" />
            <wire x2="1200" y1="816" y2="816" x1="640" />
            <wire x2="912" y1="528" y2="528" x1="640" />
            <wire x2="912" y1="528" y2="560" x1="912" />
            <wire x2="1200" y1="560" y2="560" x1="912" />
            <wire x2="832" y1="3280" y2="3344" x1="832" />
            <wire x2="1200" y1="3280" y2="3280" x1="832" />
            <wire x2="912" y1="2688" y2="2784" x1="912" />
            <wire x2="1200" y1="2688" y2="2688" x1="912" />
        </branch>
        <branch name="clk">
            <wire x2="672" y1="416" y2="416" x1="112" />
            <wire x2="672" y1="416" y2="592" x1="672" />
            <wire x2="672" y1="592" y2="944" x1="672" />
            <wire x2="672" y1="944" y2="1392" x1="672" />
            <wire x2="672" y1="1392" y2="1680" x1="672" />
            <wire x2="672" y1="1680" y2="2208" x1="672" />
            <wire x2="672" y1="2208" y2="2224" x1="672" />
            <wire x2="672" y1="2224" y2="2544" x1="672" />
            <wire x2="672" y1="2544" y2="2832" x1="672" />
            <wire x2="672" y1="2832" y2="3376" x1="672" />
            <wire x2="928" y1="2832" y2="2832" x1="672" />
            <wire x2="1200" y1="2544" y2="2544" x1="672" />
            <wire x2="1200" y1="2208" y2="2208" x1="672" />
            <wire x2="1200" y1="1680" y2="1680" x1="672" />
            <wire x2="928" y1="1392" y2="1392" x1="672" />
            <wire x2="1200" y1="944" y2="944" x1="672" />
            <wire x2="928" y1="592" y2="592" x1="672" />
            <wire x2="928" y1="592" y2="624" x1="928" />
            <wire x2="1200" y1="624" y2="624" x1="928" />
            <wire x2="928" y1="1296" y2="1392" x1="928" />
            <wire x2="1200" y1="1296" y2="1296" x1="928" />
            <wire x2="928" y1="2752" y2="2832" x1="928" />
            <wire x2="1200" y1="2752" y2="2752" x1="928" />
        </branch>
        <iomarker fontsize="28" x="112" y="80" name="Q1_in" orien="R180" />
        <iomarker fontsize="28" x="112" y="160" name="Q2_in" orien="R180" />
        <iomarker fontsize="28" x="112" y="240" name="Q3_in" orien="R180" />
        <iomarker fontsize="28" x="112" y="304" name="Q4_in" orien="R180" />
        <iomarker fontsize="28" x="112" y="368" name="SD" orien="R180" />
        <iomarker fontsize="28" x="112" y="416" name="clk" orien="R180" />
        <instance x="1200" y="1008" name="XLXI_26" orien="R0" />
        <instance x="1200" y="1152" name="XLXI_27" orien="R0" />
        <instance x="1200" y="1488" name="XLXI_28" orien="R0" />
        <instance x="1200" y="1744" name="XLXI_29" orien="R0" />
        <instance x="1200" y="2000" name="XLXI_30" orien="R0" />
        <instance x="1200" y="2272" name="XLXI_31" orien="R0" />
        <instance x="1200" y="2608" name="XLXI_32" orien="R0" />
        <instance x="1200" y="2944" name="XLXI_33" orien="R0" />
        <instance x="1200" y="3216" name="XLXI_34" orien="R0" />
        <instance x="1200" y="3472" name="XLXI_35" orien="R0" />
        <instance x="1200" y="688" name="XLXI_15" orien="R0" />
        <instance x="2096" y="1760" name="XLXI_81" orien="R0" />
        <instance x="2112" y="2528" name="XLXI_82" orien="R0" />
        <instance x="2816" y="2016" name="XLXI_3" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1472" y1="496" y2="496" x1="1456" />
            <wire x2="2096" y1="496" y2="496" x1="1472" />
            <wire x2="2096" y1="496" y2="1440" x1="2096" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2032" y1="816" y2="816" x1="1456" />
            <wire x2="2032" y1="816" y2="1504" x1="2032" />
            <wire x2="2096" y1="1504" y2="1504" x1="2032" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1776" y1="1056" y2="1056" x1="1456" />
            <wire x2="1776" y1="1056" y2="1568" x1="1776" />
            <wire x2="2096" y1="1568" y2="1568" x1="1776" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1760" y1="1296" y2="1296" x1="1456" />
            <wire x2="1760" y1="1296" y2="1632" x1="1760" />
            <wire x2="2096" y1="1632" y2="1632" x1="1760" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1744" y1="1584" y2="1584" x1="1456" />
            <wire x2="1744" y1="1584" y2="1696" x1="1744" />
            <wire x2="2096" y1="1696" y2="1696" x1="1744" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2112" y1="1840" y2="1840" x1="1456" />
            <wire x2="2112" y1="1840" y2="2144" x1="2112" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1776" y1="2112" y2="2112" x1="1456" />
            <wire x2="1776" y1="2112" y2="2208" x1="1776" />
            <wire x2="2112" y1="2208" y2="2208" x1="1776" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1776" y1="2416" y2="2416" x1="1456" />
            <wire x2="1776" y1="2272" y2="2416" x1="1776" />
            <wire x2="2112" y1="2272" y2="2272" x1="1776" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1792" y1="2752" y2="2752" x1="1456" />
            <wire x2="1792" y1="2336" y2="2752" x1="1792" />
            <wire x2="2112" y1="2336" y2="2336" x1="1792" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1808" y1="3056" y2="3056" x1="1456" />
            <wire x2="1808" y1="2400" y2="3056" x1="1808" />
            <wire x2="2112" y1="2400" y2="2400" x1="1808" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2112" y1="3312" y2="3312" x1="1456" />
            <wire x2="2112" y1="2464" y2="3312" x1="2112" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2576" y1="1568" y2="1568" x1="2352" />
            <wire x2="2576" y1="1568" y2="1888" x1="2576" />
            <wire x2="2816" y1="1888" y2="1888" x1="2576" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2592" y1="2304" y2="2304" x1="2368" />
            <wire x2="2592" y1="1952" y2="2304" x1="2592" />
            <wire x2="2816" y1="1952" y2="1952" x1="2592" />
        </branch>
        <branch name="Q1_out">
            <wire x2="3536" y1="1920" y2="1920" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3536" y="1920" name="Q1_out" orien="R0" />
    </sheet>
</drawing>