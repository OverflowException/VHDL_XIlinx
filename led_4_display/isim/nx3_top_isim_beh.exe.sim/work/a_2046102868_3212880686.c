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
static const char *ng0 = "E:/projects/VHDL_XIlinx/led_4_display/led_4_display.vhd";



static void work_a_2046102868_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 1528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t3 = (10 * 1000000000LL);
    t2 = (t0 + 1760);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 3U, 1, t3);
    t8 = (40 * 1000000000LL);
    t9 = (t0 + 1760);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t9, 3U, 1, t8);
    t14 = (t0 + 1760);
    xsi_driver_intertial_reject(t14, t3, t3);
    xsi_set_current_line(66, ng0);
    t3 = (10 * 1000000000LL);
    t2 = (t0 + 1760);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 2U, 1, t3);
    t8 = (20 * 1000000000LL);
    t9 = (t0 + 1760);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 2U, 1, t8);
    t14 = (t0 + 1760);
    xsi_driver_intertial_reject(t14, t3, t3);
    xsi_set_current_line(69, ng0);
    t3 = (20 * 1000000000LL);
    t2 = (t0 + 1760);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 1U, 1, t3);
    t8 = (30 * 1000000000LL);
    t9 = (t0 + 1760);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 1U, 1, t8);
    t14 = (t0 + 1760);
    xsi_driver_intertial_reject(t14, t3, t3);
    xsi_set_current_line(72, ng0);
    t3 = (30 * 1000000000LL);
    t2 = (t0 + 1760);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t3);
    t8 = (40 * 1000000000LL);
    t9 = (t0 + 1760);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t8);
    t14 = (t0 + 1760);
    xsi_driver_intertial_reject(t14, t3, t3);
    goto LAB2;

LAB1:    return;
}


extern void work_a_2046102868_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2046102868_3212880686_p_0};
	xsi_register_didat("work_a_2046102868_3212880686", "isim/nx3_top_isim_beh.exe.sim/work/a_2046102868_3212880686.didat");
	xsi_register_executes(pe);
}
