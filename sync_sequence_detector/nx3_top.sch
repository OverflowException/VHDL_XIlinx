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
        <signal name="buttons(4:0)" />
        <signal name="leds(7:0)" />
        <signal name="leds(2)" />
        <signal name="leds(1)" />
        <signal name="leds(0)" />
        <signal name="leds(5)" />
        <signal name="switches(7:0)" />
        <signal name="switches(0)" />
        <blockdef name="schematic">
            <timestamp>2017-11-18T14:7:19</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="schematic" name="XLXI_1">
            <blockpin signalname="buttons(3)" name="clk_reset" />
            <blockpin signalname="buttons(1)" name="clk_set" />
            <blockpin signalname="leds(2)" name="Q1" />
            <blockpin signalname="leds(1)" name="Q2" />
            <blockpin signalname="leds(0)" name="Q3" />
            <blockpin signalname="switches(0)" name="SD" />
            <blockpin signalname="leds(5)" name="T" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1648" y="912" name="XLXI_1" orien="R0">
        </instance>
        <branch name="buttons(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="544" type="branch" />
            <wire x2="1488" y1="544" y2="544" x1="1344" />
            <wire x2="1488" y1="544" y2="688" x1="1488" />
            <wire x2="1488" y1="688" y2="752" x1="1488" />
            <wire x2="1488" y1="752" y2="768" x1="1488" />
        </branch>
        <bustap x2="1584" y1="688" y2="688" x1="1488" />
        <branch name="buttons(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="688" type="branch" />
            <wire x2="1616" y1="688" y2="688" x1="1584" />
            <wire x2="1648" y1="688" y2="688" x1="1616" />
        </branch>
        <bustap x2="1584" y1="752" y2="752" x1="1488" />
        <branch name="buttons(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="752" type="branch" />
            <wire x2="1616" y1="752" y2="752" x1="1584" />
            <wire x2="1648" y1="752" y2="752" x1="1616" />
        </branch>
        <branch name="leds(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="608" type="branch" />
            <wire x2="2352" y1="608" y2="608" x1="2192" />
            <wire x2="2192" y1="608" y2="688" x1="2192" />
            <wire x2="2192" y1="688" y2="752" x1="2192" />
            <wire x2="2192" y1="752" y2="816" x1="2192" />
            <wire x2="2192" y1="816" y2="880" x1="2192" />
            <wire x2="2192" y1="880" y2="912" x1="2192" />
        </branch>
        <bustap x2="2096" y1="688" y2="688" x1="2192" />
        <branch name="leds(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="688" type="branch" />
            <wire x2="2064" y1="688" y2="688" x1="2032" />
            <wire x2="2096" y1="688" y2="688" x1="2064" />
        </branch>
        <bustap x2="2096" y1="752" y2="752" x1="2192" />
        <branch name="leds(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="752" type="branch" />
            <wire x2="2064" y1="752" y2="752" x1="2032" />
            <wire x2="2096" y1="752" y2="752" x1="2064" />
        </branch>
        <bustap x2="2096" y1="816" y2="816" x1="2192" />
        <branch name="leds(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="816" type="branch" />
            <wire x2="2064" y1="816" y2="816" x1="2032" />
            <wire x2="2096" y1="816" y2="816" x1="2064" />
        </branch>
        <bustap x2="2096" y1="880" y2="880" x1="2192" />
        <branch name="leds(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="880" type="branch" />
            <wire x2="2064" y1="880" y2="880" x1="2032" />
            <wire x2="2096" y1="880" y2="880" x1="2064" />
        </branch>
        <branch name="switches(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="944" type="branch" />
            <wire x2="1424" y1="944" y2="944" x1="1344" />
            <wire x2="1424" y1="800" y2="816" x1="1424" />
            <wire x2="1424" y1="816" y2="944" x1="1424" />
        </branch>
        <bustap x2="1520" y1="816" y2="816" x1="1424" />
        <branch name="switches(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="816" type="branch" />
            <wire x2="1568" y1="816" y2="816" x1="1520" />
            <wire x2="1648" y1="816" y2="816" x1="1568" />
        </branch>
    </sheet>
</drawing>