/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_3564397177_init();
    unisim_a_1801614988_1818890047_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_3126493194_3781969094_init();
    unisim_a_2904659017_3769511665_init();
    unisim_a_2077515722_3691801974_init();
    unisim_a_2867636556_1359619727_init();
    work_a_1665206470_1245742142_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_4147737283_2967259552_init();
    unisim_a_2216889161_3025253650_init();
    work_a_1446632031_3212880686_init();
    unisim_a_0147727936_3632337348_init();
    unisim_a_2312877582_0635394241_init();
    unisim_a_3988446151_0546328132_init();
    work_a_1623935660_3212880686_init();
    unisim_a_0531968515_3645078515_init();
    unisim_a_2211953871_3811244703_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_1823427465_3721267009_init();
    unisim_a_2472025866_3046367013_init();
    work_a_4252045795_4182204828_init();
    work_a_3759585397_3212880686_init();
    work_a_1492812269_0782623172_init();
    work_a_0221145930_3212880686_init();
    work_a_4018379582_3212880686_init();
    work_a_3123704950_3212880686_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
