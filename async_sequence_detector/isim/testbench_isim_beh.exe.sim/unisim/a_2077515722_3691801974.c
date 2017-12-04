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
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void unisim_a_2077515722_3691801974_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:
LAB3:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 776U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t8 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t4, t7);
    t1 = (t0 + 868U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t8, t10);
    t1 = (t0 + 960U);
    t12 = *((char **)t1);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t11, t13);
    t1 = (t0 + 1052U);
    t15 = *((char **)t1);
    t16 = *((unsigned char *)t15);
    t17 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t14, t16);
    t1 = (t0 + 1952);
    t18 = (t1 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t17;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t22 = (t0 + 1908);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_2077515722_3691801974_init()
{
	static char *pe[] = {(void *)unisim_a_2077515722_3691801974_p_0};
	xsi_register_didat("unisim_a_2077515722_3691801974", "isim/testbench_isim_beh.exe.sim/unisim/a_2077515722_3691801974.didat");
	xsi_register_executes(pe);
}
