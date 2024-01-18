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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/slaventy/projects/crc/crc.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_2406588786_3212880686_p_0(char *t0)
{
    char t36[16];
    char t38[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned char t28;
    unsigned char t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t37;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    char *t43;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = xsi_get_transient_memory(4U);
    memset(t3, 0, 4U);
    t4 = t3;
    memset(t4, (unsigned char)2, 4U);
    t5 = (t0 + 1648U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t3, 4U);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4605);
    *((int *)t1) = 15;
    t3 = (t0 + 4609);
    *((int *)t3) = 0;
    t7 = 15;
    t8 = 0;

LAB5:    if (t7 >= t8)
        goto LAB6;

LAB8:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1648U);
    t3 = *((char **)t1);
    t1 = (t0 + 3024);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    memcpy(t13, t3, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB6:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1648U);
    t5 = *((char **)t4);
    t9 = (0 - 0);
    t10 = (t9 * 1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t4 = (t5 + t12);
    t2 = *((unsigned char *)t4);
    t6 = (t0 + 1648U);
    t13 = *((char **)t6);
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t6 = (t13 + t17);
    t18 = *((unsigned char *)t6);
    t19 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t2, t18);
    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 4605);
    t22 = *((int *)t20);
    t23 = (t22 - 15);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t27 = (t21 + t26);
    t28 = *((unsigned char *)t27);
    t29 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t19, t28);
    t30 = (t0 + 1648U);
    t31 = *((char **)t30);
    t32 = (0 - 0);
    t33 = (t32 * 1U);
    t34 = (0 + t33);
    t30 = (t31 + t34);
    t37 = ((IEEE_P_2592010699) + 4000);
    t39 = (t38 + 0U);
    t40 = (t39 + 0U);
    *((int *)t40) = 0;
    t40 = (t39 + 4U);
    *((int *)t40) = 2;
    t40 = (t39 + 8U);
    *((int *)t40) = 1;
    t41 = (2 - 0);
    t42 = (t41 * 1);
    t42 = (t42 + 1);
    t40 = (t39 + 12U);
    *((unsigned int *)t40) = t42;
    t35 = xsi_base_array_concat(t35, t36, t37, (char)99, t29, (char)97, t30, t38, (char)101);
    t40 = (t0 + 1648U);
    t43 = *((char **)t40);
    t40 = (t43 + 0);
    t42 = (1U + 3U);
    memcpy(t40, t35, t42);

LAB7:    t1 = (t0 + 4605);
    t7 = *((int *)t1);
    t3 = (t0 + 4609);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB8;

LAB9:    t9 = (t7 + -1);
    t7 = t9;
    t4 = (t0 + 4605);
    *((int *)t4) = t7;
    goto LAB5;

}


extern void work_a_2406588786_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2406588786_3212880686_p_0};
	xsi_register_didat("work_a_2406588786_3212880686", "isim/top_tb_isim_beh.exe.sim/work/a_2406588786_3212880686.didat");
	xsi_register_executes(pe);
}
