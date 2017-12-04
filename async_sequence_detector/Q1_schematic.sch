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
        <signal name="clk" />
        <signal name="SD" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="Q1_out" />
        <port polarity="Input" name="Q1_in" />
        <port polarity="Input" name="Q2_in" />
        <port polarity="Input" name="Q3_in" />
        <port polarity="Input" name="Q4_in" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SD" />
        <port polarity="Output" name="Q1_out" />
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
        <blockdef name="or7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <arc ex="112" ey="-304" sx="192" sy="-256" r="88" cx="116" cy="-216" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="192" ey="-256" sx="112" sy="-208" r="88" cx="116" cy="-296" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
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
        <block symbolname="and5b2" name="XLXI_26">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="Q1_in" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q2_in" name="I4" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_28">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q3_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_29">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_30">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_31">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and5b4" name="XLXI_32">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_33">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="SD" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_34">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="Q4_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_35">
            <blockpin signalname="Q3_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and5b3" name="XLXI_15">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="SD" name="I1" />
            <blockpin signalname="Q1_in" name="I2" />
            <blockpin signalname="Q3_in" name="I3" />
            <blockpin signalname="Q2_in" name="I4" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_86">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="Q3_in" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_85">
            <blockpin signalname="Q4_in" name="I0" />
            <blockpin signalname="Q2_in" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q1_in" name="I3" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_84">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q4_in" name="I1" />
            <blockpin signalname="clk" name="I2" />
            <blockpin signalname="Q2_in" name="I3" />
            <blockpin signalname="Q1_in" name="I4" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or7" name="XLXI_88">
            <blockpin signalname="XLXN_43" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_41" name="I2" />
            <blockpin signalname="XLXN_40" name="I3" />
            <blockpin signalname="XLXN_39" name="I4" />
            <blockpin signalname="XLXN_38" name="I5" />
            <blockpin signalname="XLXN_37" name="I6" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="or7" name="XLXI_89">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_47" name="I3" />
            <blockpin signalname="XLXN_46" name="I4" />
            <blockpin signalname="XLXN_45" name="I5" />
            <blockpin signalname="XLXN_44" name="I6" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_90">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="Q1_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
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
            <wire x2="496" y1="3376" y2="3488" x1="496" />
            <wire x2="1248" y1="3488" y2="3488" x1="496" />
            <wire x2="496" y1="3488" y2="3824" x1="496" />
            <wire x2="496" y1="3824" y2="3840" x1="496" />
            <wire x2="496" y1="3840" y2="4080" x1="496" />
            <wire x2="496" y1="4080" y2="4400" x1="496" />
            <wire x2="1248" y1="4080" y2="4080" x1="496" />
            <wire x2="1248" y1="3824" y2="3824" x1="496" />
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
            <wire x2="528" y1="3376" y2="3552" x1="528" />
            <wire x2="528" y1="3552" y2="3568" x1="528" />
            <wire x2="528" y1="3568" y2="3904" x1="528" />
            <wire x2="528" y1="3904" y2="4416" x1="528" />
            <wire x2="880" y1="3904" y2="3904" x1="528" />
            <wire x2="880" y1="3904" y2="3952" x1="880" />
            <wire x2="1248" y1="3952" y2="3952" x1="880" />
            <wire x2="1248" y1="3552" y2="3552" x1="528" />
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
            <wire x2="576" y1="3376" y2="4144" x1="576" />
            <wire x2="576" y1="4144" y2="4160" x1="576" />
            <wire x2="576" y1="4160" y2="4400" x1="576" />
            <wire x2="1248" y1="4144" y2="4144" x1="576" />
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
            <wire x2="608" y1="3376" y2="3680" x1="608" />
            <wire x2="608" y1="3680" y2="3696" x1="608" />
            <wire x2="608" y1="3696" y2="3952" x1="608" />
            <wire x2="864" y1="3952" y2="3952" x1="608" />
            <wire x2="864" y1="3952" y2="4016" x1="864" />
            <wire x2="1248" y1="4016" y2="4016" x1="864" />
            <wire x2="608" y1="3952" y2="4208" x1="608" />
            <wire x2="608" y1="4208" y2="4416" x1="608" />
            <wire x2="1248" y1="4208" y2="4208" x1="608" />
            <wire x2="1248" y1="3680" y2="3680" x1="608" />
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
            <wire x2="672" y1="3376" y2="3616" x1="672" />
            <wire x2="672" y1="3616" y2="4432" x1="672" />
            <wire x2="1248" y1="3616" y2="3616" x1="672" />
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
            <wire x2="640" y1="3376" y2="3744" x1="640" />
            <wire x2="1248" y1="3744" y2="3744" x1="640" />
            <wire x2="640" y1="3744" y2="4016" x1="640" />
            <wire x2="848" y1="4016" y2="4016" x1="640" />
            <wire x2="640" y1="4016" y2="4272" x1="640" />
            <wire x2="640" y1="4272" y2="4416" x1="640" />
            <wire x2="1248" y1="4272" y2="4272" x1="640" />
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
            <wire x2="848" y1="3888" y2="4016" x1="848" />
            <wire x2="1248" y1="3888" y2="3888" x1="848" />
            <wire x2="912" y1="2688" y2="2784" x1="912" />
            <wire x2="1200" y1="2688" y2="2688" x1="912" />
        </branch>
        <instance x="1248" y="4336" name="XLXI_86" orien="R0" />
        <instance x="1248" y="4080" name="XLXI_85" orien="R0" />
        <instance x="1248" y="3808" name="XLXI_84" orien="R0" />
        <instance x="2080" y="1760" name="XLXI_88" orien="R0" />
        <instance x="2160" y="3424" name="XLXI_89" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="2080" y1="496" y2="496" x1="1456" />
            <wire x2="2080" y1="496" y2="1312" x1="2080" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1760" y1="816" y2="816" x1="1456" />
            <wire x2="1760" y1="816" y2="1376" x1="1760" />
            <wire x2="2080" y1="1376" y2="1376" x1="1760" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1744" y1="1056" y2="1056" x1="1456" />
            <wire x2="1744" y1="1056" y2="1440" x1="1744" />
            <wire x2="2080" y1="1440" y2="1440" x1="1744" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1728" y1="1296" y2="1296" x1="1456" />
            <wire x2="1728" y1="1296" y2="1504" x1="1728" />
            <wire x2="2080" y1="1504" y2="1504" x1="1728" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1760" y1="1584" y2="1584" x1="1456" />
            <wire x2="1760" y1="1568" y2="1584" x1="1760" />
            <wire x2="2080" y1="1568" y2="1568" x1="1760" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1760" y1="1840" y2="1840" x1="1456" />
            <wire x2="1760" y1="1632" y2="1840" x1="1760" />
            <wire x2="2080" y1="1632" y2="1632" x1="1760" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="2080" y1="2112" y2="2112" x1="1456" />
            <wire x2="2080" y1="1696" y2="2112" x1="2080" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="2160" y1="2416" y2="2416" x1="1456" />
            <wire x2="2160" y1="2416" y2="2976" x1="2160" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1808" y1="2752" y2="2752" x1="1456" />
            <wire x2="1808" y1="2752" y2="3040" x1="1808" />
            <wire x2="2160" y1="3040" y2="3040" x1="1808" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1808" y1="3056" y2="3056" x1="1456" />
            <wire x2="1808" y1="3056" y2="3104" x1="1808" />
            <wire x2="2160" y1="3104" y2="3104" x1="1808" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1808" y1="3312" y2="3312" x1="1456" />
            <wire x2="1808" y1="3168" y2="3312" x1="1808" />
            <wire x2="2160" y1="3168" y2="3168" x1="1808" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1824" y1="3616" y2="3616" x1="1504" />
            <wire x2="1824" y1="3232" y2="3616" x1="1824" />
            <wire x2="2160" y1="3232" y2="3232" x1="1824" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1840" y1="3920" y2="3920" x1="1504" />
            <wire x2="1840" y1="3296" y2="3920" x1="1840" />
            <wire x2="2160" y1="3296" y2="3296" x1="1840" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="2160" y1="4176" y2="4176" x1="1504" />
            <wire x2="2160" y1="3360" y2="4176" x1="2160" />
        </branch>
        <instance x="2912" y="2448" name="XLXI_90" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="2624" y1="1504" y2="1504" x1="2336" />
            <wire x2="2624" y1="1504" y2="2320" x1="2624" />
            <wire x2="2912" y1="2320" y2="2320" x1="2624" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2656" y1="3168" y2="3168" x1="2416" />
            <wire x2="2656" y1="2384" y2="3168" x1="2656" />
            <wire x2="2912" y1="2384" y2="2384" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="3456" y="2352" name="Q1_out" orien="R0" />
        <branch name="Q1_out">
            <wire x2="3456" y1="2352" y2="2352" x1="3168" />
        </branch>
    </sheet>
</drawing>