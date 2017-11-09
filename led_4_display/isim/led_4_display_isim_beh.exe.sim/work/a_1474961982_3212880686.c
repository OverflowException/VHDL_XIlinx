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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/projects/VHDL_XIlinx/led_4_display/display.vhd";



static void work_a_1474961982_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    unsigned char t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;

LAB0:    t1 = (t0 + 1344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 2688);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB21:    t6 = (t0 + 2692);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB22:    t9 = (t0 + 2696);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB23:    t12 = (t0 + 2700);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB24:    t15 = (t0 + 2704);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB25:    t18 = (t0 + 2708);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB26:    t21 = (t0 + 2712);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB27:    t24 = (t0 + 2716);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB28:    t27 = (t0 + 2720);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB29:    t30 = (t0 + 2724);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB30:    t33 = (t0 + 2728);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB31:    t36 = (t0 + 2732);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB16;

LAB32:    t39 = (t0 + 2736);
    t41 = xsi_mem_cmp(t39, t3, 4U);
    if (t41 == 1)
        goto LAB17;

LAB33:    t42 = (t0 + 2740);
    t44 = xsi_mem_cmp(t42, t3, 4U);
    if (t44 == 1)
        goto LAB18;

LAB34:    t45 = (t0 + 2744);
    t47 = xsi_mem_cmp(t45, t3, 4U);
    if (t47 == 1)
        goto LAB19;

LAB35:
LAB20:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2868);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB67;

LAB68:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);

LAB4:    xsi_set_current_line(42, ng0);

LAB71:    t2 = (t0 + 1540);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB72;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t48 = (t0 + 2748);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB37;

LAB38:    t51 = (t0 + 1584);
    t52 = (t51 + 32U);
    t53 = *((char **)t52);
    t54 = (t53 + 40U);
    t55 = *((char **)t54);
    memcpy(t55, t48, 8U);
    xsi_driver_first_trans_delta(t51, 0U, 8U, 0LL);
    goto LAB4;

LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2756);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB39;

LAB40:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2764);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB41;

LAB42:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2772);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB43;

LAB44:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB9:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2780);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB45;

LAB46:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2788);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB47;

LAB48:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB11:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2796);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB49;

LAB50:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB12:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2804);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB51;

LAB52:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2812);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB53;

LAB54:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2820);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB55;

LAB56:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB15:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2828);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB57;

LAB58:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB16:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2836);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB59;

LAB60:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB17:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2844);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB61;

LAB62:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB18:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2852);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB63;

LAB64:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB19:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2860);
    t50 = (8U != 8U);
    if (t50 == 1)
        goto LAB65;

LAB66:    t4 = (t0 + 1584);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB4;

LAB36:;
LAB37:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB56;

LAB57:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB58;

LAB59:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB60;

LAB61:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB62;

LAB63:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB64;

LAB65:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB66;

LAB67:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB68;

LAB69:    t3 = (t0 + 1540);
    *((int *)t3) = 0;
    goto LAB2;

LAB70:    goto LAB69;

LAB72:    goto LAB70;

}


extern void work_a_1474961982_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1474961982_3212880686_p_0};
	xsi_register_didat("work_a_1474961982_3212880686", "isim/led_4_display_isim_beh.exe.sim/work/a_1474961982_3212880686.didat");
	xsi_register_executes(pe);
}
