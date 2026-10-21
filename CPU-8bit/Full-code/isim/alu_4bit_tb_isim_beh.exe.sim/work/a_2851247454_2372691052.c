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
static const char *ng0 = "/home/ise/DesignCourse_asif/ALU/Full-code/alu-4bit-tb.vhd";



static void work_a_2851247454_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t10;
    unsigned char t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 5415);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 5417);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 5421);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(43, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5425);
    t11 = 1;
    if (4U == 4U)
        goto LAB13;

LAB14:    t11 = 0;

LAB15:    if (t11 == 1)
        goto LAB10;

LAB11:    t10 = (unsigned char)0;

LAB12:    if (t10 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5442);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5444);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5448);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t7 = (t0 + 5429);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB9;

LAB10:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB12;

LAB13:    t12 = 0;

LAB16:    if (t12 < 4U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB14;

LAB18:    t12 = (t12 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5452);
    t11 = 1;
    if (4U == 4U)
        goto LAB28;

LAB29:    t11 = 0;

LAB30:    if (t11 == 1)
        goto LAB25;

LAB26:    t10 = (unsigned char)0;

LAB27:    if (t10 == 0)
        goto LAB23;

LAB24:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5469);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5471);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 5475);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(64, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

LAB23:    t7 = (t0 + 5456);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB24;

LAB25:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB27;

LAB28:    t12 = 0;

LAB31:    if (t12 < 4U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB29;

LAB33:    t12 = (t12 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5479);
    t11 = 1;
    if (4U == 4U)
        goto LAB43;

LAB44:    t11 = 0;

LAB45:    if (t11 == 1)
        goto LAB40;

LAB41:    t10 = (unsigned char)0;

LAB42:    if (t10 == 0)
        goto LAB38;

LAB39:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5496);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5498);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5502);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(75, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB51:    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t7 = (t0 + 5483);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB39;

LAB40:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB42;

LAB43:    t12 = 0;

LAB46:    if (t12 < 4U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB44;

LAB48:    t12 = (t12 + 1);
    goto LAB46;

LAB49:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5506);
    t11 = 1;
    if (4U == 4U)
        goto LAB58;

LAB59:    t11 = 0;

LAB60:    if (t11 == 1)
        goto LAB55;

LAB56:    t10 = (unsigned char)0;

LAB57:    if (t10 == 0)
        goto LAB53;

LAB54:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5523);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5525);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5529);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(85, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB50:    goto LAB49;

LAB52:    goto LAB50;

LAB53:    t7 = (t0 + 5510);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB54;

LAB55:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB57;

LAB58:    t12 = 0;

LAB61:    if (t12 < 4U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB59;

LAB63:    t12 = (t12 + 1);
    goto LAB61;

LAB64:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5533);
    t11 = 1;
    if (4U == 4U)
        goto LAB73;

LAB74:    t11 = 0;

LAB75:    if (t11 == 1)
        goto LAB70;

LAB71:    t10 = (unsigned char)0;

LAB72:    if (t10 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5550);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5552);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5556);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(95, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB81:    *((char **)t1) = &&LAB82;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t7 = (t0 + 5537);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB69;

LAB70:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB72;

LAB73:    t12 = 0;

LAB76:    if (t12 < 4U)
        goto LAB77;
    else
        goto LAB75;

LAB77:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB74;

LAB78:    t12 = (t12 + 1);
    goto LAB76;

LAB79:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5560);
    t11 = 1;
    if (4U == 4U)
        goto LAB88;

LAB89:    t11 = 0;

LAB90:    if (t11 == 1)
        goto LAB85;

LAB86:    t10 = (unsigned char)0;

LAB87:    if (t10 == 0)
        goto LAB83;

LAB84:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5577);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 5579);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 5583);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(106, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB96:    *((char **)t1) = &&LAB97;
    goto LAB1;

LAB80:    goto LAB79;

LAB82:    goto LAB80;

LAB83:    t7 = (t0 + 5564);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB84;

LAB85:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB87;

LAB88:    t12 = 0;

LAB91:    if (t12 < 4U)
        goto LAB92;
    else
        goto LAB90;

LAB92:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB89;

LAB93:    t12 = (t12 + 1);
    goto LAB91;

LAB94:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5587);
    t11 = 1;
    if (4U == 4U)
        goto LAB103;

LAB104:    t11 = 0;

LAB105:    if (t11 == 1)
        goto LAB100;

LAB101:    t10 = (unsigned char)0;

LAB102:    if (t10 == 0)
        goto LAB98;

LAB99:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5604);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 5606);
    t4 = (t0 + 3272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5610);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(117, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t9);

LAB111:    *((char **)t1) = &&LAB112;
    goto LAB1;

LAB95:    goto LAB94;

LAB97:    goto LAB95;

LAB98:    t7 = (t0 + 5591);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB99;

LAB100:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB102;

LAB103:    t12 = 0;

LAB106:    if (t12 < 4U)
        goto LAB107;
    else
        goto LAB105;

LAB107:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB104;

LAB108:    t12 = (t12 + 1);
    goto LAB106;

LAB109:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5614);
    t11 = 1;
    if (4U == 4U)
        goto LAB118;

LAB119:    t11 = 0;

LAB120:    if (t11 == 1)
        goto LAB115;

LAB116:    t10 = (unsigned char)0;

LAB117:    if (t10 == 0)
        goto LAB113;

LAB114:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 5631);
    xsi_report(t2, 35U, (unsigned char)0);
    xsi_set_current_line(127, ng0);

LAB126:    *((char **)t1) = &&LAB127;
    goto LAB1;

LAB110:    goto LAB109;

LAB112:    goto LAB110;

LAB113:    t7 = (t0 + 5618);
    xsi_report(t7, 13U, (unsigned char)2);
    goto LAB114;

LAB115:    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB117;

LAB118:    t12 = 0;

LAB121:    if (t12 < 4U)
        goto LAB122;
    else
        goto LAB120;

LAB122:    t5 = (t3 + t12);
    t6 = (t2 + t12);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB119;

LAB123:    t12 = (t12 + 1);
    goto LAB121;

LAB124:    goto LAB2;

LAB125:    goto LAB124;

LAB127:    goto LAB125;

}


extern void work_a_2851247454_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2851247454_2372691052_p_0};
	xsi_register_didat("work_a_2851247454_2372691052", "isim/alu_4bit_tb_isim_beh.exe.sim/work/a_2851247454_2372691052.didat");
	xsi_register_executes(pe);
}
