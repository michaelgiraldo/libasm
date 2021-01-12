/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mg <mg@student.42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 03:06:45 by cacharle          #+#    #+#             */
/*   Updated: 2021/01/11 19:29:31 by mg               ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm_test.h"

int  pid;
bool signaled;
bool signaled_suite;
char *test_name;

int main(void)
{
	ft_strlen_test();
	ft_strcpy_test();
	ft_strcmp_test();
	ft_write_test();
	ft_read_test();
	ft_strdup_test();

#ifdef LIBASM_TEST_BONUS
	ft_atoi_base_test();
	ft_list_remove_if_test();
	ft_list_push_front_test();
	ft_list_size_test();
	ft_list_sort_test();
#endif
	return 0;
}
