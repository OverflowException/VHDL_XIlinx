<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q1" />
        <signal name="Q2" />
        <signal name="Q3" />
        <signal name="Q4" />
        <signal name="XLXN_40" />
        <signal name="clk_set" />
        <signal name="clk_reset" />
        <signal name="XLXN_42" />
        <signal name="SD" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="T" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q2" />
        <port polarity="Output" name="Q3" />
        <port polarity="Output" name="Q4" />
        <port polarity="Input" name="clk_set" />
        <port polarity="Input" name="clk_reset" />
        <port polarity="Input" name="SD" />
        <port polarity="Output" name="T" />
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
        <blockdef name="Q1_schematic">
            <timestamp>2017-12-3T22:59:12</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Q2_schematic">
            <timestamp>2017-12-3T22:23:55</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Q3_schematic">
            <timestamp>2017-11-29T1:47:40</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Q4_schematic">
            <timestamp>2017-12-3T23:15:23</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="and2b1" name="XLXI_52">
            <blockpin signalname="clk_reset" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_53">
            <blockpin signalname="clk_set" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_54">
            <blockpin signalname="Q4" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="Q1" name="I3" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_55">
            <blockpin signalname="Q1" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q4" name="I2" />
            <blockpin signalname="Q2" name="I3" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_56">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="T" name="O" />
        </block>
        <block symbolname="Q2_schematic" name="XLXI_65">
            <blockpin signalname="XLXN_42" name="clk" />
            <blockpin signalname="Q1" name="Q1_in" />
            <blockpin signalname="Q2" name="Q2_in" />
            <blockpin signalname="Q2" name="Q2_out" />
            <blockpin signalname="Q3" name="Q3_in" />
            <blockpin signalname="Q4" name="Q4_in" />
            <blockpin signalname="SD" name="SD" />
        </block>
        <block symbolname="Q3_schematic" name="XLXI_66">
            <blockpin signalname="XLXN_42" name="clk" />
            <blockpin signalname="Q1" name="Q1_in" />
            <blockpin signalname="Q2" name="Q2_in" />
            <blockpin signalname="Q3" name="Q3_in" />
            <blockpin signalname="Q3" name="Q3_out" />
            <blockpin signalname="Q4" name="Q4_in" />
            <blockpin signalname="SD" name="SD" />
        </block>
        <block symbolname="Q4_schematic" name="XLXI_67">
            <blockpin signalname="XLXN_42" name="clk" />
            <blockpin signalname="Q1" name="Q1_in" />
            <blockpin signalname="Q2" name="Q2_in" />
            <blockpin signalname="Q3" name="Q3_in" />
            <blockpin signalname="Q4" name="Q4_in" />
            <blockpin signalname="Q4" name="Q4_out" />
            <blockpin signalname="SD" name="SD" />
        </block>
        <block symbolname="Q1_schematic" name="XLXI_68">
            <blockpin signalname="XLXN_42" name="clk" />
            <blockpin signalname="Q1" name="Q1_in" />
            <blockpin signalname="Q1" name="Q1_out" />
            <blockpin signalname="Q2" name="Q2_in" />
            <blockpin signalname="Q3" name="Q3_in" />
            <blockpin signalname="Q4" name="Q4_in" />
            <blockpin signalname="SD" name="SD" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="Q1">
            <wire x2="2560" y1="736" y2="736" x1="2336" />
            <wire x2="2336" y1="736" y2="1328" x1="2336" />
            <wire x2="2560" y1="1328" y2="1328" x1="2336" />
            <wire x2="2336" y1="1328" y2="1904" x1="2336" />
            <wire x2="2560" y1="1904" y2="1904" x1="2336" />
            <wire x2="2336" y1="1904" y2="2496" x1="2336" />
            <wire x2="2336" y1="2496" y2="2992" x1="2336" />
            <wire x2="3648" y1="2992" y2="2992" x1="2336" />
            <wire x2="2576" y1="2496" y2="2496" x1="2336" />
            <wire x2="3648" y1="736" y2="736" x1="2944" />
            <wire x2="3872" y1="736" y2="736" x1="3648" />
            <wire x2="3648" y1="736" y2="2576" x1="3648" />
            <wire x2="3648" y1="2576" y2="2992" x1="3648" />
            <wire x2="4112" y1="2576" y2="2576" x1="3648" />
            <wire x2="4368" y1="2576" y2="2576" x1="4112" />
            <wire x2="4368" y1="2576" y2="2656" x1="4368" />
            <wire x2="4112" y1="2576" y2="3136" x1="4112" />
            <wire x2="4368" y1="3136" y2="3136" x1="4112" />
        </branch>
        <branch name="Q2">
            <wire x2="2560" y1="800" y2="800" x1="2384" />
            <wire x2="2384" y1="800" y2="1392" x1="2384" />
            <wire x2="2560" y1="1392" y2="1392" x1="2384" />
            <wire x2="2384" y1="1392" y2="1968" x1="2384" />
            <wire x2="2560" y1="1968" y2="1968" x1="2384" />
            <wire x2="2384" y1="1968" y2="2560" x1="2384" />
            <wire x2="2384" y1="2560" y2="2944" x1="2384" />
            <wire x2="3616" y1="2944" y2="2944" x1="2384" />
            <wire x2="2576" y1="2560" y2="2560" x1="2384" />
            <wire x2="3616" y1="1328" y2="1328" x1="2944" />
            <wire x2="3872" y1="1328" y2="1328" x1="3616" />
            <wire x2="3616" y1="1328" y2="2640" x1="3616" />
            <wire x2="3616" y1="2640" y2="2944" x1="3616" />
            <wire x2="3984" y1="2640" y2="2640" x1="3616" />
            <wire x2="3984" y1="2640" y2="2720" x1="3984" />
            <wire x2="4176" y1="2720" y2="2720" x1="3984" />
            <wire x2="4368" y1="2720" y2="2720" x1="4176" />
            <wire x2="4176" y1="2720" y2="2944" x1="4176" />
            <wire x2="4368" y1="2944" y2="2944" x1="4176" />
        </branch>
        <branch name="Q3">
            <wire x2="2560" y1="864" y2="864" x1="2464" />
            <wire x2="2464" y1="864" y2="1456" x1="2464" />
            <wire x2="2560" y1="1456" y2="1456" x1="2464" />
            <wire x2="2464" y1="1456" y2="2032" x1="2464" />
            <wire x2="2560" y1="2032" y2="2032" x1="2464" />
            <wire x2="2464" y1="2032" y2="2624" x1="2464" />
            <wire x2="2464" y1="2624" y2="2912" x1="2464" />
            <wire x2="3584" y1="2912" y2="2912" x1="2464" />
            <wire x2="2576" y1="2624" y2="2624" x1="2464" />
            <wire x2="3584" y1="1904" y2="1904" x1="2944" />
            <wire x2="3872" y1="1904" y2="1904" x1="3584" />
            <wire x2="3584" y1="1904" y2="2736" x1="3584" />
            <wire x2="3584" y1="2736" y2="2912" x1="3584" />
            <wire x2="3968" y1="2736" y2="2736" x1="3584" />
            <wire x2="3968" y1="2736" y2="2784" x1="3968" />
            <wire x2="4240" y1="2784" y2="2784" x1="3968" />
            <wire x2="4368" y1="2784" y2="2784" x1="4240" />
            <wire x2="4240" y1="2784" y2="3072" x1="4240" />
            <wire x2="4368" y1="3072" y2="3072" x1="4240" />
        </branch>
        <branch name="Q4">
            <wire x2="2560" y1="928" y2="928" x1="2496" />
            <wire x2="2496" y1="928" y2="1520" x1="2496" />
            <wire x2="2560" y1="1520" y2="1520" x1="2496" />
            <wire x2="2496" y1="1520" y2="2096" x1="2496" />
            <wire x2="2560" y1="2096" y2="2096" x1="2496" />
            <wire x2="2496" y1="2096" y2="2688" x1="2496" />
            <wire x2="2496" y1="2688" y2="2896" x1="2496" />
            <wire x2="3552" y1="2896" y2="2896" x1="2496" />
            <wire x2="2576" y1="2688" y2="2688" x1="2496" />
            <wire x2="3552" y1="2496" y2="2496" x1="2960" />
            <wire x2="3872" y1="2496" y2="2496" x1="3552" />
            <wire x2="3552" y1="2496" y2="2800" x1="3552" />
            <wire x2="3552" y1="2800" y2="2896" x1="3552" />
            <wire x2="3952" y1="2800" y2="2800" x1="3552" />
            <wire x2="3952" y1="2800" y2="2848" x1="3952" />
            <wire x2="4304" y1="2848" y2="2848" x1="3952" />
            <wire x2="4368" y1="2848" y2="2848" x1="4304" />
            <wire x2="4304" y1="2848" y2="3008" x1="4304" />
            <wire x2="4368" y1="3008" y2="3008" x1="4304" />
        </branch>
        <instance x="1344" y="544" name="XLXI_52" orien="R0" />
        <instance x="1696" y="576" name="XLXI_53" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="1696" y1="448" y2="448" x1="1600" />
        </branch>
        <branch name="clk_set">
            <wire x2="1680" y1="560" y2="560" x1="896" />
            <wire x2="1696" y1="512" y2="512" x1="1680" />
            <wire x2="1680" y1="512" y2="560" x1="1680" />
        </branch>
        <branch name="clk_reset">
            <wire x2="1344" y1="480" y2="480" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="480" name="clk_reset" orien="R180" />
        <iomarker fontsize="28" x="896" y="560" name="clk_set" orien="R180" />
        <branch name="XLXN_42">
            <wire x2="1280" y1="320" y2="416" x1="1280" />
            <wire x2="1344" y1="416" y2="416" x1="1280" />
            <wire x2="2016" y1="320" y2="320" x1="1280" />
            <wire x2="2016" y1="320" y2="480" x1="2016" />
            <wire x2="2128" y1="480" y2="480" x1="2016" />
            <wire x2="2128" y1="480" y2="1056" x1="2128" />
            <wire x2="2560" y1="1056" y2="1056" x1="2128" />
            <wire x2="2128" y1="1056" y2="1648" x1="2128" />
            <wire x2="2560" y1="1648" y2="1648" x1="2128" />
            <wire x2="2128" y1="1648" y2="2224" x1="2128" />
            <wire x2="2128" y1="2224" y2="2816" x1="2128" />
            <wire x2="2576" y1="2816" y2="2816" x1="2128" />
            <wire x2="2560" y1="2224" y2="2224" x1="2128" />
            <wire x2="2016" y1="480" y2="480" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1216" y="768" name="SD" orien="R180" />
        <iomarker fontsize="28" x="3872" y="736" name="Q1" orien="R0" />
        <iomarker fontsize="28" x="3872" y="1328" name="Q2" orien="R0" />
        <iomarker fontsize="28" x="3872" y="1904" name="Q3" orien="R0" />
        <iomarker fontsize="28" x="3872" y="2496" name="Q4" orien="R0" />
        <instance x="4368" y="2912" name="XLXI_54" orien="R0" />
        <instance x="4368" y="3200" name="XLXI_55" orien="R0" />
        <instance x="4800" y="2992" name="XLXI_56" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="4704" y1="2752" y2="2752" x1="4624" />
            <wire x2="4704" y1="2752" y2="2864" x1="4704" />
            <wire x2="4800" y1="2864" y2="2864" x1="4704" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="4704" y1="3040" y2="3040" x1="4624" />
            <wire x2="4704" y1="2928" y2="3040" x1="4704" />
            <wire x2="4800" y1="2928" y2="2928" x1="4704" />
        </branch>
        <branch name="T">
            <wire x2="5136" y1="2896" y2="2896" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="5136" y="2896" name="T" orien="R0" />
        <branch name="SD">
            <wire x2="2032" y1="768" y2="768" x1="1216" />
            <wire x2="2032" y1="768" y2="992" x1="2032" />
            <wire x2="2560" y1="992" y2="992" x1="2032" />
            <wire x2="2032" y1="992" y2="1584" x1="2032" />
            <wire x2="2560" y1="1584" y2="1584" x1="2032" />
            <wire x2="2032" y1="1584" y2="2160" x1="2032" />
            <wire x2="2032" y1="2160" y2="2752" x1="2032" />
            <wire x2="2576" y1="2752" y2="2752" x1="2032" />
            <wire x2="2560" y1="2160" y2="2160" x1="2032" />
        </branch>
        <instance x="2560" y="1680" name="XLXI_65" orien="R0">
        </instance>
        <instance x="2560" y="2256" name="XLXI_66" orien="R0">
        </instance>
        <instance x="2576" y="2848" name="XLXI_67" orien="R0">
        </instance>
        <instance x="2560" y="1088" name="XLXI_68" orien="R0">
        </instance>
    </sheet>
</drawing>