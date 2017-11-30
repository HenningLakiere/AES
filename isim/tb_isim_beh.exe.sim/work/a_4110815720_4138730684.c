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
static const char *ng0 = "D:/Users/Henni/Desktop/Chip/AddRoundKey.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4110815720_4138730684_p_0(char *t0)
{
    char t1[16];
    char t7[16];
    char t15[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(16, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = (127 - 127);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 127;
    t9 = (t8 + 4U);
    *((int *)t9) = 96;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (96 - 127);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 592U);
    t12 = *((char **)t9);
    t11 = (127 - 127);
    t13 = (t11 * 1U);
    t14 = (0 + t13);
    t9 = (t12 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 127;
    t17 = (t16 + 4U);
    *((int *)t17) = 96;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (96 - 127);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t2, t7, t9, t15);
    t20 = (t1 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 2132);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 32U);
    xsi_driver_first_trans_delta(t23, 0U, 32U, 0LL);

LAB2:    t28 = (t0 + 2064);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}

static void work_a_4110815720_4138730684_p_1(char *t0)
{
    char t1[16];
    char t7[16];
    char t15[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(17, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = (127 - 95);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 95;
    t9 = (t8 + 4U);
    *((int *)t9) = 64;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (64 - 95);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 592U);
    t12 = *((char **)t9);
    t11 = (127 - 95);
    t13 = (t11 * 1U);
    t14 = (0 + t13);
    t9 = (t12 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 95;
    t17 = (t16 + 4U);
    *((int *)t17) = 64;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (64 - 95);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t2, t7, t9, t15);
    t20 = (t1 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 2168);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 32U);
    xsi_driver_first_trans_delta(t23, 32U, 32U, 0LL);

LAB2:    t28 = (t0 + 2072);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}

static void work_a_4110815720_4138730684_p_2(char *t0)
{
    char t1[16];
    char t7[16];
    char t15[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = (127 - 63);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 63;
    t9 = (t8 + 4U);
    *((int *)t9) = 32;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (32 - 63);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 592U);
    t12 = *((char **)t9);
    t11 = (127 - 63);
    t13 = (t11 * 1U);
    t14 = (0 + t13);
    t9 = (t12 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 63;
    t17 = (t16 + 4U);
    *((int *)t17) = 32;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (32 - 63);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t2, t7, t9, t15);
    t20 = (t1 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 2204);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 32U);
    xsi_driver_first_trans_delta(t23, 64U, 32U, 0LL);

LAB2:    t28 = (t0 + 2080);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}

static void work_a_4110815720_4138730684_p_3(char *t0)
{
    char t1[16];
    char t7[16];
    char t15[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = (127 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 592U);
    t12 = *((char **)t9);
    t11 = (127 - 31);
    t13 = (t11 * 1U);
    t14 = (0 + t13);
    t9 = (t12 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 31;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 31);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t2, t7, t9, t15);
    t20 = (t1 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 2240);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 32U);
    xsi_driver_first_trans_delta(t23, 96U, 32U, 0LL);

LAB2:    t28 = (t0 + 2088);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}


extern void work_a_4110815720_4138730684_init()
{
	static char *pe[] = {(void *)work_a_4110815720_4138730684_p_0,(void *)work_a_4110815720_4138730684_p_1,(void *)work_a_4110815720_4138730684_p_2,(void *)work_a_4110815720_4138730684_p_3};
	xsi_register_didat("work_a_4110815720_4138730684", "isim/tb_isim_beh.exe.sim/work/a_4110815720_4138730684.didat");
	xsi_register_executes(pe);
}
