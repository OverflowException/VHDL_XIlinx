<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="buttons(3)" />
        <signal name="buttons(1)" />
        <signal name="switches(7:0)" />
        <signal name="switches(0)" />
        <signal name="leds(7:0)" />
        <signal name="leds(3)" />
        <signal name="leds(2)" />
        <signal name="leds(1)" />
        <signal name="leds(0)" />
        <signal name="leds(5)" />
        <signal name="buttons(4:0)" />
        <blockdef name="overall_schematic">
            <timestamp>2017-11-29T1:48:53</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="overall_schematic" name="XLXI_3">
            <blockpin signalname="buttons(3)" name="clk_reset" />
            <blockpin signalname="buttons(1)" name="clk_set" />
            <blockpin signalname="leds(3)" name="Q1" />
            <blockpin signalname="leds(2)" name="Q2" />
            <blockpin signalname="leds(1)" name="Q3" />
            <blockpin signalname="leds(0)" name="Q4" />
            <blockpin signalname="switches(0)" name="SD" />
            <blockpin signalname="leds(5)" name="T" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="buttons(3)">
            <wire x2="1504" y1="912" y2="912" x1="1488" />
        </branch>
        <branch name="buttons(1)">
            <wire x2="1504" y1="976" y2="976" x1="1488" />
        </branch>
        <branch name="switches(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1168" type="branch" />
            <wire x2="1392" y1="1168" y2="1168" x1="1312" />
            <wire x2="1392" y1="1024" y2="1040" x1="1392" />
            <wire x2="1392" y1="1040" y2="1168" x1="1392" />
        </branch>
        <bustap x2="1488" y1="1040" y2="1040" x1="1392" />
        <branch name="switches(0)">
            <wire x2="1504" y1="1040" y2="1040" x1="1488" />
        </branch>
        <branch name="leds(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="784" type="branch" />
            <wire x2="2192" y1="784" y2="784" x1="2032" />
            <wire x2="2032" y1="784" y2="912" x1="2032" />
            <wire x2="2032" y1="912" y2="976" x1="2032" />
            <wire x2="2032" y1="976" y2="1040" x1="2032" />
            <wire x2="2032" y1="1040" y2="1104" x1="2032" />
            <wire x2="2032" y1="1104" y2="1168" x1="2032" />
            <wire x2="2032" y1="1168" y2="1200" x1="2032" />
        </branch>
        <bustap x2="1936" y1="912" y2="912" x1="2032" />
        <branch name="leds(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1912" y="912" type="branch" />
            <wire x2="1936" y1="912" y2="912" x1="1888" />
        </branch>
        <bustap x2="1936" y1="976" y2="976" x1="2032" />
        <branch name="leds(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1912" y="976" type="branch" />
            <wire x2="1936" y1="976" y2="976" x1="1888" />
        </branch>
        <bustap x2="1936" y1="1040" y2="1040" x1="2032" />
        <branch name="leds(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1912" y="1040" type="branch" />
            <wire x2="1936" y1="1040" y2="1040" x1="1888" />
        </branch>
        <bustap x2="1936" y1="1104" y2="1104" x1="2032" />
        <branch name="leds(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1912" y="1104" type="branch" />
            <wire x2="1936" y1="1104" y2="1104" x1="1888" />
        </branch>
        <bustap x2="1936" y1="1168" y2="1168" x1="2032" />
        <branch name="leds(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1912" y="1168" type="branch" />
            <wire x2="1936" y1="1168" y2="1168" x1="1888" />
        </branch>
        <branch name="buttons(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="800" type="branch" />
            <wire x2="1392" y1="800" y2="800" x1="1152" />
            <wire x2="1392" y1="800" y2="912" x1="1392" />
            <wire x2="1392" y1="912" y2="976" x1="1392" />
            <wire x2="1392" y1="976" y2="992" x1="1392" />
        </branch>
        <bustap x2="1488" y1="912" y2="912" x1="1392" />
        <bustap x2="1488" y1="976" y2="976" x1="1392" />
        <instance x="1504" y="1200" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>