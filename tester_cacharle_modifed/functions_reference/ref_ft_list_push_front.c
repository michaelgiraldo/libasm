/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ref_ft_list_push_front.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mg <mg@student.42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 03:20:23 by cacharle          #+#    #+#             */
/*   Updated: 2021/01/11 18:50:56 by mg               ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm_test.h"

t_list	*ft_create_elem(void *data)
{
	t_list *element;

	if (!(element = malloc(sizeof(t_list))))
		return (NULL);
	element->data = data;
	element->next = NULL;
	return (element);
}

void ref_ft_list_push_front(t_list **begin_list, void *data)
{
	t_list *element;

	if (*begin_list)
	{
		element = ft_create_elem(data);
		element->next = *begin_list;
		*begin_list = element;
	}
	else
		*begin_list = ft_create_elem(data);
}



