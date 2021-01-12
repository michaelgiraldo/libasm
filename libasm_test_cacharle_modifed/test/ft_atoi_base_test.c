/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi_base_test.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mg <mg@student.42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 03:07:27 by cacharle          #+#    #+#             */
/*   Updated: 2021/01/11 19:27:33 by mg               ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm_test.h"

static int expected_ret;
static int actual_ret;

#define TO_STRING(x) (#x)

#define FT_ATOI_BASE_EXPECT(str, base) do {      \
	actual_ret = ft_atoi_base(str, base);        \
	expected_ret = ref_ft_atoi_base(str, base);  \
	if (actual_ret != expected_ret)              \
		printf("KO: [COMPARE]: %s: expected: %d got: %d with: "#str", "#base"\n", \
				test_name, expected_ret, actual_ret); \
	else                                         \
		print_ok();                              \
} while (0);

static
void ft_atoi_base_segfault(void)
{
	TEST_ASM_FUNCTION(ft_atoi_base("", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("10", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("123", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("101", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("ffe0", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("\t\n\r\v\f\r 4", 5));
	TEST_ASM_FUNCTION(ft_atoi_base("45", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("45", 0));
	TEST_ASM_FUNCTION(ft_atoi_base("45", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("10", 011));
	TEST_ASM_FUNCTION(ft_atoi_base("10", 2));
	TEST_ASM_FUNCTION(ft_atoi_base("10", -0));
	TEST_ASM_FUNCTION(ft_atoi_base("10111", 4));
	TEST_ASM_FUNCTION(ft_atoi_base("10111", 1));
	TEST_ASM_FUNCTION(ft_atoi_base("10111", 7));
	TEST_ASM_FUNCTION(ft_atoi_base("10111", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("10111", 11));
	TEST_ASM_FUNCTION(ft_atoi_base("10111", 5));
	TEST_ASM_FUNCTION(ft_atoi_base("111000", 12));
	TEST_ASM_FUNCTION(ft_atoi_base("ff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("52", 12));
	TEST_ASM_FUNCTION(ft_atoi_base("2a", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("7fffffff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("ff", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("ff", 1));
	TEST_ASM_FUNCTION(ft_atoi_base("ff", 4));
	TEST_ASM_FUNCTION(ft_atoi_base("ff", 10));
	TEST_ASM_FUNCTION(ft_atoi_base("ff", 5));
	TEST_ASM_FUNCTION(ft_atoi_base("-ff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("--ff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("+--ff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("-++++++-+--ff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("-++++++-+--ff\xff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("-+\r++-+--ff\xff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("-01", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("--11101", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("+-123", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("-++++01++-+--ff", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("-++10101\xff", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("-+\r++-+--01\x01", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("a\0bb", 8));
	TEST_ASM_FUNCTION(ft_atoi_base("-b\0bb", 8));
	TEST_ASM_FUNCTION(ft_atoi_base(" \t\n\r-++++++-+--ff\xff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("  -+\r++-+--ff\xff", 16));
	TEST_ASM_FUNCTION(ft_atoi_base("\n-01", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("\x0b--11101", 01));
	TEST_ASM_FUNCTION(ft_atoi_base("  16152x+", 7));
	TEST_ASM_FUNCTION(ft_atoi_base("  1022634chmod", 7));
	TEST_ASM_FUNCTION(ft_atoi_base(" 644yo", 7));
	TEST_ASM_FUNCTION(ft_atoi_base(TO_STRING(INT_MAX), 10));
	TEST_ASM_FUNCTION(ft_atoi_base(TO_STRING(INT_MIN), 10));
}

static
void ft_atoi_base_compare(void)
{




	FT_ATOI_BASE_EXPECT("", 10);
	FT_ATOI_BASE_EXPECT("10", 10);
	FT_ATOI_BASE_EXPECT("", 01);
	FT_ATOI_BASE_EXPECT("123", 10);
	FT_ATOI_BASE_EXPECT("101", 01);
	FT_ATOI_BASE_EXPECT("ffe0", 16);
	FT_ATOI_BASE_EXPECT("\t\n\r\v\f\r 4", 5);
	FT_ATOI_BASE_EXPECT("45", 10);
	FT_ATOI_BASE_EXPECT("45", 0);
	FT_ATOI_BASE_EXPECT("45", 01);
	FT_ATOI_BASE_EXPECT("10", 011);
	FT_ATOI_BASE_EXPECT("10", 2);
	FT_ATOI_BASE_EXPECT("10", -0);
	FT_ATOI_BASE_EXPECT("10111", 4);
	FT_ATOI_BASE_EXPECT("10111", 1);
	FT_ATOI_BASE_EXPECT("10111", 7);
	FT_ATOI_BASE_EXPECT("10111", 10);
	FT_ATOI_BASE_EXPECT("10111", 11);
	FT_ATOI_BASE_EXPECT("10111", 5);
	FT_ATOI_BASE_EXPECT("111000", 12);
	FT_ATOI_BASE_EXPECT("ff", 16);
	FT_ATOI_BASE_EXPECT("52", 12);
	FT_ATOI_BASE_EXPECT("2a", 16);
	FT_ATOI_BASE_EXPECT("7fffffff", 16);
	FT_ATOI_BASE_EXPECT("ff", 10);
	FT_ATOI_BASE_EXPECT("ff", 1);
	FT_ATOI_BASE_EXPECT("ff", 4);
	FT_ATOI_BASE_EXPECT("ff", 10);
	FT_ATOI_BASE_EXPECT("ff", 5);
	FT_ATOI_BASE_EXPECT("-ff", 16);
	FT_ATOI_BASE_EXPECT("--ff", 16);
	FT_ATOI_BASE_EXPECT("+--ff", 16);
	FT_ATOI_BASE_EXPECT("-++++++-+--ff", 16);
	FT_ATOI_BASE_EXPECT("-++++++-+--ff\xff", 16);
	FT_ATOI_BASE_EXPECT("-+\r++-+--ff\xff", 16);
	FT_ATOI_BASE_EXPECT("-01", 01);
	FT_ATOI_BASE_EXPECT("--11101", 01);
	FT_ATOI_BASE_EXPECT("+-123", 01);
	FT_ATOI_BASE_EXPECT("-++++01++-+--ff", 01);
	FT_ATOI_BASE_EXPECT("-++10101\xff", 01);
	FT_ATOI_BASE_EXPECT("-+\r++-+--01\x01", 01);
	FT_ATOI_BASE_EXPECT("a\0bb", 8);
	FT_ATOI_BASE_EXPECT("-b\0bb", 8);
	FT_ATOI_BASE_EXPECT(" \t\n\r-++++++-+--ff\xff", 16);
	FT_ATOI_BASE_EXPECT("  -+\r++-+--ff\xff", 16);
	FT_ATOI_BASE_EXPECT("\n-01", 01);
	FT_ATOI_BASE_EXPECT("\x0b--11101", 01);
	FT_ATOI_BASE_EXPECT("  16152x+", 7);
	FT_ATOI_BASE_EXPECT("  1022634chmod", 7);
	FT_ATOI_BASE_EXPECT(" 644yo", 7);
	FT_ATOI_BASE_EXPECT(TO_STRING(INT_MAX), 10);
	FT_ATOI_BASE_EXPECT(TO_STRING(INT_MIN), 10);
}

void ft_atoi_base_test(void)
{
	test_name = "ft_atoi_base.s";
	signaled_suite = false;
	ft_atoi_base_segfault();
	if (!signaled_suite)
		ft_atoi_base_compare();
}
