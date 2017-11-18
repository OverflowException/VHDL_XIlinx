<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_1" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <signal name="T" />
        <signal name="XLXN_40" />
        <signal name="clk_set" />
        <signal name="XLXN_61" />
        <signal name="clk_reset" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="Q1" />
        <signal name="Q2" />
        <signal name="Q3" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="SD" />
        <signal name="XLXN_81" />
        <port polarity="Output" name="T" />
        <port polarity="Input" name="clk_set" />
        <port polarity="Input" name="clk_reset" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q2" />
        <port polarity="Output" name="Q3" />
        <port polarity="Input" name="SD" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
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
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_3" name="D" />
            <blockpin signalname="Q3" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_12">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q3" name="I2" />
            <blockpin signalname="Q2" name="I3" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_13">
            <blockpin signalname="Q3" name="I0" />
            <blockpin signalname="Q2" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="Q1" name="I3" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_81" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="Q2" name="Q" />
        </block>
        <block symbolname="and3b2" name="XLXI_17">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="Q1" name="Q" />
        </block>
        <block symbolname="and3b1" name="XLXI_34">
            <blockpin signalname="Q2" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_36">
            <blockpin signalname="Q2" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q3" name="I2" />
            <blockpin signalname="T" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_52">
            <blockpin signalname="clk_reset" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_53">
            <blockpin signalname="clk_set" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_54">
            <blockpin signalname="XLXN_71" name="I0" />
            <blockpin signalname="XLXN_70" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_55">
            <blockpin signalname="SD" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_56">
            <blockpin signalname="Q2" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_57">
            <blockpin signalname="Q3" name="I0" />
            <blockpin signalname="Q2" name="I1" />
            <blockpin signalname="SD" name="I2" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_60">
            <blockpin signalname="Q3" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q2" name="I2" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3776" y="2368" name="XLXI_3" orien="R0" />
        <instance x="3280" y="1056" name="XLXI_4" orien="R0" />
        <instance x="2688" y="976" name="XLXI_12" orien="R0" />
        <instance x="2688" y="1296" name="XLXI_13" orien="R0" />
        <instance x="3280" y="1664" name="XLXI_6" orien="R0" />
        <instance x="3760" y="1824" name="XLXI_2" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="3760" y1="1568" y2="1568" x1="3536" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="3776" y1="2112" y2="2112" x1="3552" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="3760" y1="960" y2="960" x1="3536" />
        </branch>
        <instance x="3760" y="1216" name="XLXI_1" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2960" y1="816" y2="816" x1="2944" />
            <wire x2="2960" y1="816" y2="928" x1="2960" />
            <wire x2="3280" y1="928" y2="928" x1="2960" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="3104" y1="1136" y2="1136" x1="2944" />
            <wire x2="3104" y1="992" y2="1136" x1="3104" />
            <wire x2="3280" y1="992" y2="992" x1="3104" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="3264" y1="1760" y2="1760" x1="2944" />
            <wire x2="3280" y1="1600" y2="1600" x1="3264" />
            <wire x2="3264" y1="1600" y2="1760" x1="3264" />
        </branch>
        <instance x="4880" y="2608" name="XLXI_36" orien="R0" />
        <branch name="T">
            <wire x2="5168" y1="2480" y2="2480" x1="5136" />
        </branch>
        <iomarker fontsize="28" x="4576" y="960" name="Q1" orien="R0" />
        <iomarker fontsize="28" x="4576" y="1568" name="Q2" orien="R0" />
        <iomarker fontsize="28" x="4576" y="2112" name="Q3" orien="R0" />
        <iomarker fontsize="28" x="5168" y="2480" name="T" orien="R0" />
        <instance x="2864" y="416" name="XLXI_52" orien="R0" />
        <instance x="3216" y="448" name="XLXI_53" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="3216" y1="320" y2="320" x1="3120" />
        </branch>
        <branch name="clk_set">
            <wire x2="3200" y1="432" y2="432" x1="2416" />
            <wire x2="3216" y1="384" y2="384" x1="3200" />
            <wire x2="3200" y1="384" y2="432" x1="3200" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2784" y1="208" y2="288" x1="2784" />
            <wire x2="2864" y1="288" y2="288" x1="2784" />
            <wire x2="3504" y1="208" y2="208" x1="2784" />
            <wire x2="3504" y1="208" y2="352" x1="3504" />
            <wire x2="3616" y1="352" y2="352" x1="3504" />
            <wire x2="3616" y1="352" y2="1088" x1="3616" />
            <wire x2="3616" y1="1088" y2="1696" x1="3616" />
            <wire x2="3616" y1="1696" y2="2240" x1="3616" />
            <wire x2="3776" y1="2240" y2="2240" x1="3616" />
            <wire x2="3760" y1="1696" y2="1696" x1="3616" />
            <wire x2="3760" y1="1088" y2="1088" x1="3616" />
            <wire x2="3504" y1="352" y2="352" x1="3472" />
        </branch>
        <branch name="clk_reset">
            <wire x2="2864" y1="352" y2="352" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2416" y="352" name="clk_reset" orien="R180" />
        <iomarker fontsize="28" x="2416" y="432" name="clk_set" orien="R180" />
        <iomarker fontsize="28" x="1808" y="784" name="SD" orien="R180" />
        <instance x="3296" y="2272" name="XLXI_54" orien="R0" />
        <instance x="2688" y="2112" name="XLXI_17" orien="R0" />
        <instance x="2688" y="2288" name="XLXI_55" orien="R0" />
        <instance x="2688" y="2416" name="XLXI_56" orien="R0" />
        <instance x="2688" y="2624" name="XLXI_57" orien="R0" />
        <branch name="XLXN_68">
            <wire x2="3296" y1="1984" y2="1984" x1="2944" />
            <wire x2="3296" y1="1984" y2="2016" x1="3296" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="3120" y1="2160" y2="2160" x1="2944" />
            <wire x2="3120" y1="2080" y2="2160" x1="3120" />
            <wire x2="3296" y1="2080" y2="2080" x1="3120" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="3136" y1="2320" y2="2320" x1="2944" />
            <wire x2="3136" y1="2144" y2="2320" x1="3136" />
            <wire x2="3296" y1="2144" y2="2144" x1="3136" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="3296" y1="2496" y2="2496" x1="2944" />
            <wire x2="3296" y1="2208" y2="2496" x1="3296" />
        </branch>
        <branch name="Q1">
            <wire x2="2688" y1="848" y2="848" x1="2240" />
            <wire x2="2240" y1="848" y2="1040" x1="2240" />
            <wire x2="2688" y1="1040" y2="1040" x1="2240" />
            <wire x2="2240" y1="1040" y2="1456" x1="2240" />
            <wire x2="2688" y1="1456" y2="1456" x1="2240" />
            <wire x2="2240" y1="1456" y2="2288" x1="2240" />
            <wire x2="2240" y1="2288" y2="2784" x1="2240" />
            <wire x2="4496" y1="2784" y2="2784" x1="2240" />
            <wire x2="2688" y1="2288" y2="2288" x1="2240" />
            <wire x2="4496" y1="960" y2="960" x1="4144" />
            <wire x2="4576" y1="960" y2="960" x1="4496" />
            <wire x2="4496" y1="960" y2="2480" x1="4496" />
            <wire x2="4496" y1="2480" y2="2784" x1="4496" />
            <wire x2="4880" y1="2480" y2="2480" x1="4496" />
        </branch>
        <branch name="Q2">
            <wire x2="2688" y1="720" y2="720" x1="2304" />
            <wire x2="2304" y1="720" y2="1168" x1="2304" />
            <wire x2="2688" y1="1168" y2="1168" x1="2304" />
            <wire x2="2304" y1="1168" y2="1392" x1="2304" />
            <wire x2="2688" y1="1392" y2="1392" x1="2304" />
            <wire x2="2304" y1="1392" y2="1824" x1="2304" />
            <wire x2="2688" y1="1824" y2="1824" x1="2304" />
            <wire x2="2304" y1="1824" y2="1920" x1="2304" />
            <wire x2="2688" y1="1920" y2="1920" x1="2304" />
            <wire x2="2304" y1="1920" y2="2096" x1="2304" />
            <wire x2="2688" y1="2096" y2="2096" x1="2304" />
            <wire x2="2304" y1="2096" y2="2344" x1="2304" />
            <wire x2="2304" y1="2344" y2="2352" x1="2304" />
            <wire x2="2688" y1="2352" y2="2352" x1="2304" />
            <wire x2="2304" y1="2352" y2="2496" x1="2304" />
            <wire x2="2304" y1="2496" y2="2720" x1="2304" />
            <wire x2="4448" y1="2720" y2="2720" x1="2304" />
            <wire x2="2688" y1="2496" y2="2496" x1="2304" />
            <wire x2="4448" y1="1568" y2="1568" x1="4144" />
            <wire x2="4576" y1="1568" y2="1568" x1="4448" />
            <wire x2="4448" y1="1568" y2="2544" x1="4448" />
            <wire x2="4448" y1="2544" y2="2720" x1="4448" />
            <wire x2="4880" y1="2544" y2="2544" x1="4448" />
        </branch>
        <branch name="Q3">
            <wire x2="2688" y1="784" y2="784" x1="2384" />
            <wire x2="2384" y1="784" y2="1232" x1="2384" />
            <wire x2="2688" y1="1232" y2="1232" x1="2384" />
            <wire x2="2384" y1="1232" y2="1520" x1="2384" />
            <wire x2="2688" y1="1520" y2="1520" x1="2384" />
            <wire x2="2384" y1="1520" y2="1760" x1="2384" />
            <wire x2="2688" y1="1760" y2="1760" x1="2384" />
            <wire x2="2384" y1="1760" y2="1984" x1="2384" />
            <wire x2="2688" y1="1984" y2="1984" x1="2384" />
            <wire x2="2384" y1="1984" y2="2160" x1="2384" />
            <wire x2="2688" y1="2160" y2="2160" x1="2384" />
            <wire x2="2384" y1="2160" y2="2560" x1="2384" />
            <wire x2="2384" y1="2560" y2="2672" x1="2384" />
            <wire x2="4400" y1="2672" y2="2672" x1="2384" />
            <wire x2="2688" y1="2560" y2="2560" x1="2384" />
            <wire x2="4400" y1="2112" y2="2112" x1="4160" />
            <wire x2="4576" y1="2112" y2="2112" x1="4400" />
            <wire x2="4400" y1="2112" y2="2416" x1="4400" />
            <wire x2="4400" y1="2416" y2="2672" x1="4400" />
            <wire x2="4880" y1="2416" y2="2416" x1="4400" />
        </branch>
        <branch name="SD">
            <wire x2="2176" y1="784" y2="784" x1="1808" />
            <wire x2="2176" y1="784" y2="912" x1="2176" />
            <wire x2="2688" y1="912" y2="912" x1="2176" />
            <wire x2="2176" y1="912" y2="1104" x1="2176" />
            <wire x2="2688" y1="1104" y2="1104" x1="2176" />
            <wire x2="2176" y1="1104" y2="1696" x1="2176" />
            <wire x2="2688" y1="1696" y2="1696" x1="2176" />
            <wire x2="2176" y1="1696" y2="2048" x1="2176" />
            <wire x2="2688" y1="2048" y2="2048" x1="2176" />
            <wire x2="2176" y1="2048" y2="2216" x1="2176" />
            <wire x2="2176" y1="2216" y2="2224" x1="2176" />
            <wire x2="2176" y1="2224" y2="2432" x1="2176" />
            <wire x2="2688" y1="2432" y2="2432" x1="2176" />
            <wire x2="2688" y1="2224" y2="2224" x1="2176" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="3264" y1="1456" y2="1456" x1="2944" />
            <wire x2="3264" y1="1456" y2="1536" x1="3264" />
            <wire x2="3280" y1="1536" y2="1536" x1="3264" />
        </branch>
        <instance x="2688" y="1888" name="XLXI_34" orien="R0" />
        <instance x="2688" y="1584" name="XLXI_60" orien="R0" />
    </sheet>
</drawing>